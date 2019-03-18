package com.linln.admin.system.controller;

import com.linln.admin.core.enums.ResultEnum;
import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.core.exception.ResultException;
import com.linln.admin.core.log.action.SaveAction;
import com.linln.admin.core.log.action.StatusAction;
import com.linln.admin.core.log.annotation.ActionLog;
import com.linln.admin.core.web.TimoExample;
import com.linln.admin.system.domain.Course;
import com.linln.admin.system.domain.Dept;
import com.linln.admin.system.domain.Glass;
import com.linln.admin.system.domain.User;
import com.linln.admin.system.service.CourseService;
import com.linln.admin.system.service.DeptService;
import com.linln.admin.system.service.GlassService;
import com.linln.admin.system.service.UserService;
import com.linln.admin.system.validator.DeptForm;
import com.linln.core.utils.FormBeanUtil;
import com.linln.core.utils.ResultVoUtil;
import com.linln.core.vo.ResultVo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * @author wuyz
 * @date 2018/12/02
 */
@Controller
@RequestMapping("/dept")
public class DeptController {

    @Autowired
    private DeptService deptService;
    @Autowired
    private UserService userService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private GlassService glassService;

    /**
     * 跳转到列表页面
     */
    @GetMapping("/index")
    @RequiresPermissions("/dept/index")
    public String index(Model model, Dept dept) {
        String search = "";
        if (dept.getStatus() != null) {
            search += "status=" + dept.getStatus();
        }
        if (dept.getTitle() != null) {
            search += "&title=" + dept.getTitle();
        }
        model.addAttribute("search", search);
        return "/system/dept/index";
    }

    /**
     * 部门数据列表
     */
    @GetMapping("/list")
    @RequiresPermissions("/dept/index")
    @ResponseBody
    public ResultVo list(Dept dept) {
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
                withMatcher("title", match -> match.contains());

        // 获取用户列表
        Example<Dept> example = TimoExample.of(dept, matcher);
        Sort sort = new Sort(Sort.Direction.ASC, "sort");
        List<Dept> list = deptService.getList(example, sort);
        return ResultVoUtil.success(list);
    }


    /**
     * 部门数据列表和学生列表
     */
    @GetMapping("/listStu")
    @RequiresPermissions("/dept/index")
    @ResponseBody
    public ResultVo listStu(Dept dept) {
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
                withMatcher("title", match -> match.contains());

        // 获取系别-->班级-->学生
        Example<Dept> example = TimoExample.of(dept, matcher);
        Sort sort = new Sort(Sort.Direction.ASC, "sort");
        List<Dept> list = deptService.getList(example, sort);
        List<Dept> list2=new ArrayList<>();
        for (Dept dt:list) {
            list2.add(dt);
            List<Glass> glasses=glassService.findByDept(dt);
            for (Glass g:glasses) {
                Dept dept1=new Dept();

                dept1.setId(g.getId());
                Set<Glass> glassSet=new HashSet<>();
                Glass glass=new Glass();
                glass.setId(g.getId());
                glassSet.add(glass);
                List<User> users=userService.findByDeptAndGlasses(dept1,glassSet);

                dept1.setId(g.getId()*1000);
                dept1.setPid(dt.getId());
                dept1.setTitle(g.getTitle());
                dept1.setSort(1);
                dept1.setPids(dt.getPids()+",["+dt.getId()+"]");
                dept1.setStatus((byte)1);
                dept1.setRemark(g.getId()+"");
                list2.add(dept1);

                for (User u:users) {
                    System.out.println("-----------------------------------------------");
                    System.out.println(u.getNickname());
                    System.out.println("-----------------------------------------------");
                    Dept dept2=new Dept();
                    dept2.setId(u.getId()*100000);
                    dept2.setPid(dt.getId());
                    dept2.setTitle(u.getNickname());
                    dept2.setSort(1);
                    dept2.setPids(dept1.getPids()+",["+dt.getId()+"]");
                    dept2.setStatus((byte)1);
                    dept2.setRemark(u.getId()+"");
                    list2.add(dept2);

                }
            }
        }
        return ResultVoUtil.success(list2);
    }

    /**
     * 部门数据列表和课程列表
     */
    @GetMapping("/listCourse")
    @RequiresPermissions("/dept/index")
    @ResponseBody
    public ResultVo listCourse(Dept dept) {
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
                withMatcher("title", match -> match.contains());

        // 获取用户列表
        Example<Dept> example = TimoExample.of(dept, matcher);
        Sort sort = new Sort(Sort.Direction.ASC, "sort");
        List<Dept> list = deptService.getList(example, sort);
        List<Dept> list2=new ArrayList<>();
        for (Dept dt:list) {
            list2.add(dt);
            List<Course> courses=courseService.findByDept(dt);
            int count=1;
            for (Course c:courses) {
                Dept dept1=new Dept();
                dept1.setId(c.getId()*1000);
                dept1.setPid(dt.getId());
                dept1.setTitle(c.getName());
                dept1.setSort(count);
                dept1.setPids(dt.getPids()+",["+dt.getId()+"]");
                dept1.setStatus((byte)1);
                dept1.setRemark(c.getId()+"");
                list2.add(dept1);
                count++;
            }
        }
        return ResultVoUtil.success(list2);
    }

    /**
     * 获取排序菜单列表
     */
    @GetMapping("/sortList/{pid}/{notId}")
    @RequiresPermissions({"/dept/add", "/dept/edit"})
    @ResponseBody
    public Map<Integer, String> sortList(
            @PathVariable(value = "pid", required = false) Long pid,
            @PathVariable(value = "notId", required = false) Long notId){
        // 本级排序菜单列表
        notId = notId != null ? notId : (long) 0;
        List<Dept> levelDept = deptService.getPid(pid, notId);
        Map<Integer, String> sortMap = new TreeMap<>();
        for (int i = 1; i <= levelDept.size(); i++) {
            sortMap.put(i, levelDept.get(i - 1).getTitle());
        }
        return sortMap;
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping({"/add", "/add/{pid}"})
    @RequiresPermissions("/dept/add")
    public String toAdd(@PathVariable(value = "pid", required = false) Long pid, Model model) {
        // 父级部门
        if (pid != null) {
            Dept pDept = deptService.getId(pid);
            model.addAttribute("pDept", pDept);
        }

        return "/system/dept/add";
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("/dept/edit")
    public String toEdit(@PathVariable("id") Long id, Model model) {
        Dept dept = deptService.getId(id);
        Dept pDept = deptService.getId(dept.getPid());
        if (pDept == null) {
            Dept newDept = new Dept();
            newDept.setId((long) 0);
            newDept.setTitle("顶级");
            pDept = newDept;
        }

        model.addAttribute("dept", dept);
        model.addAttribute("pDept", pDept);
        return "/system/dept/add";
    }

    /**
     * 保存添加/修改的数据
     * @param deptForm 表单验证对象
     */
    @PostMapping("/save")
    @RequiresPermissions({"/dept/add", "/dept/edit"})
    @ResponseBody
    @ActionLog(name = "部门管理", message = "部门：${title}", action = SaveAction.class)
    public ResultVo save(@Validated DeptForm deptForm) {
        if (deptForm.getId() == null) {
            // 排序为空时，添加到最后
            if(deptForm.getSort() == null){
                Integer sortMax = deptService.getSortMax(deptForm.getPid());
                deptForm.setSort(sortMax !=null ? sortMax - 1 : 0);
            }

            // 添加全部上级序号
            if (deptForm.getPid() != 0) {
                Dept pDept = deptService.getId(deptForm.getPid());
                deptForm.setPids(pDept.getPids() + ",[" + deptForm.getPid() + "]");
            } else {
                deptForm.setPids("[0]");
            }
        }

        // 将验证的数据复制给实体类
        Dept dept = new Dept();
        if (deptForm.getId() != null) {
            dept = deptService.getId(deptForm.getId());
            deptForm.setPids(dept.getPids());
        }
        FormBeanUtil.copyProperties(deptForm, dept);

        // 排序功能
        Integer sort = deptForm.getSort();
        Long notId = dept.getId() != null ? dept.getId() : 0;
        List<Dept> levelDept = deptService.getPid(deptForm.getPid(), notId);
        levelDept.add(sort, dept);
        for (int i = 1; i <= levelDept.size(); i++) {
            levelDept.get(i - 1).setSort(i);
        }

        // 保存数据
        deptService.save(levelDept);
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("/dept/detail")
    public String toDetail(@PathVariable("id") Long id, Model model){
        Dept dept = deptService.getId(id);
        model.addAttribute("dept",dept);
        return "/system/dept/detail";
    }

    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("/dept/status")
    @ResponseBody
    @ActionLog(name = "部门状态", action = StatusAction.class)
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> idList){
        try {
            // 获取状态StatusEnum对象
            StatusEnum statusEnum = StatusEnum.valueOf(param.toUpperCase());
            // 更新状态
            Integer count = deptService.updateStatus(statusEnum,idList);
            if (count > 0){
                return ResultVoUtil.success(statusEnum.getMessage()+"成功");
            }else{
                return ResultVoUtil.error(statusEnum.getMessage()+"失败，请重新操作");
            }
        } catch (IllegalArgumentException e){
            throw new ResultException(ResultEnum.STATUS_ERROR);
        }
    }

}
