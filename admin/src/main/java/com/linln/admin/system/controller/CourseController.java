package com.linln.admin.system.controller;

import com.linln.admin.core.constant.AdminConst;
import com.linln.admin.core.enums.ResultEnum;
import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.core.enums.UserIsRoleEnum;
import com.linln.admin.core.exception.ResultException;
import com.linln.admin.core.log.action.UserAction;
import com.linln.admin.core.log.annotation.ActionLog;
import com.linln.admin.core.shiro.ShiroUtil;
import com.linln.admin.core.web.TimoExample;
import com.linln.admin.system.domain.Course;
import com.linln.admin.system.domain.Role;
import com.linln.admin.system.domain.User;
import com.linln.admin.system.service.CourseService;
import com.linln.admin.system.service.UserService;
import com.linln.admin.system.validator.CourseForm;
import com.linln.core.utils.FormBeanUtil;
import com.linln.core.utils.ResultVoUtil;
import com.linln.core.vo.ResultVo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Controller
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;
    @Autowired
    private UserService userService;

    /**
     * 列表页面
     * @param pageIndex 页码
     * @param pageSize 获取数据长度
     */
    @GetMapping("/index")
    @RequiresPermissions("/course/index")
    public String index(Model model, Course course,
            @RequestParam(value="page",defaultValue="1") int pageIndex,
            @RequestParam(value="size",defaultValue="10") int pageSize){

        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
				withMatcher("name", match -> match.contains());

        // 获取课程管理列表
        Example<Course> example = TimoExample.of(course, matcher);
        Page<Course> list = courseService.getPageList(example, pageIndex, pageSize);

        // 封装数据
        model.addAttribute("list",list.getContent());
        model.addAttribute("page",list);
        return "/system/course/index";
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping("/add")
    @RequiresPermissions("/course/add")
    public String toAdd(){
        return "/system/course/add";
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("/course/edit")
    public String toEdit(@PathVariable("id") Long id, Model model){
        Course course = courseService.getId(id);
        model.addAttribute("course",course);
        return "/system/course/add";
    }

    /**
     * 保存添加/修改的数据
     * @param courseForm 表单验证对象
     */
    @PostMapping({"/add","/edit"})
    @RequiresPermissions({"/course/add","/course/edit"})
    @ResponseBody
    public ResultVo save(@Validated CourseForm courseForm){

        // 将验证的数据复制给实体类
        Course course = new Course();
        if(courseForm.getId() != null){
            course = courseService.getId(courseForm.getId());
        }
        FormBeanUtil.copyProperties(courseForm, course);

        // 保存数据
        courseService.save(course);
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("/course/detail")
    public String toDetail(@PathVariable("id") Long id, Model model){
        Course course = courseService.getId(id);
        model.addAttribute("course",course);
        return "/system/course/detail";
    }

    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("/course/status")
    @ResponseBody
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> idList){
        try {
            // 获取状态StatusEnum对象
            StatusEnum statusEnum = StatusEnum.valueOf(param.toUpperCase());
            // 更新状态
            Integer count = courseService.updateStatus(statusEnum,idList);
            if (count > 0){
                return ResultVoUtil.success(statusEnum.getMessage()+"成功");
            }else{
                return ResultVoUtil.error(statusEnum.getMessage()+"失败，请重新操作");
            }
        } catch (IllegalArgumentException e){
            throw new ResultException(ResultEnum.STATUS_ERROR);
        }
    }


    /**
     * 跳转到教师分配页面
     */
    @GetMapping("/teacher")
    @RequiresPermissions("/course/teacher")
    public String toTeacher(@RequestParam(value = "ids") Long id, Model model) {
        // 获取指定用户角色列表
        Course course = courseService.getId(id);
        Set<User> authUsers = course.getUsers();
        // 获取教师列表
        List<User> list = courseService.getTeacherList((long)2);
        // 融合两项数据
        list.forEach(user -> {
            if (authUsers.contains(user)) {
                user.setRemark("auth:true");
            } else {
                user.setRemark("");
            }
        });
        model.addAttribute("id", id);
        model.addAttribute("list", list);
        return "/system/course/teacher";
    }

    /**
     * 保存角色分配信息
     */
    @PostMapping("/teacher")
    @RequiresPermissions("/course/teacher")
    @ResponseBody
    @ActionLog(key = UserAction.EDIT_TEACHER, action = UserAction.class)
    public ResultVo setTeacher(
            @RequestParam(value = "id", required = true) Long id,
            @RequestParam(value = "teacherId", required = false) List<Long> userIds) {

        // 将查询的数据关联起来
        Course course = courseService.getId(id);
        List<User> userList = null;
        if (userIds != null) {
            userList = userService.getIdList(userIds);
            course.setUsers(new HashSet<>(userList));
        } else {
            course.setUsers(null);
        }

        // 保存数据
        courseService.save(course);
        return ResultVoUtil.SAVE_SUCCESS;
    }

}
