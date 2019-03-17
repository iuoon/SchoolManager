package com.linln.admin.system.controller;

import com.linln.admin.core.enums.ResultEnum;
import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.core.exception.ResultException;
import com.linln.admin.core.web.TimoExample;
import com.linln.admin.system.domain.Glass;
import com.linln.admin.system.service.GlassService;
import com.linln.admin.system.validator.GlassForm;
import com.linln.core.utils.FormBeanUtil;
import com.linln.core.utils.ResultVoUtil;
import com.linln.core.vo.ResultVo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Controller
@RequestMapping("/glass")
public class GlassController {

    @Autowired
    private GlassService glassService;

    /**
     * 列表页面
     * @param pageIndex 页码
     * @param pageSize 获取数据长度
     */
    @GetMapping("/index")
    @RequiresPermissions("/glass/index")
    public String index(Model model, Glass glass,
            @RequestParam(value="page",defaultValue="1") int pageIndex,
            @RequestParam(value="size",defaultValue="10") int pageSize){

        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
				withMatcher("title", match -> match.contains());

        // 获取编辑管理列表
        Example<Glass> example = TimoExample.of(glass, matcher);
        Page<Glass> list = glassService.getPageList(example, pageIndex, pageSize);

        // 封装数据
        model.addAttribute("list",list.getContent());
        model.addAttribute("page",list);
        return "/system/glass/index";
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping("/add")
    @RequiresPermissions("/glass/add")
    public String toAdd(){
        return "/system/glass/add";
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("/glass/edit")
    public String toEdit(@PathVariable("id") Long id, Model model){
        Glass glass = glassService.getId(id);
        model.addAttribute("glass",glass);
        return "/system/glass/add";
    }

    /**
     * 保存添加/修改的数据
     * @param glassForm 表单验证对象
     */
    @PostMapping({"/add","/edit","/save"})
    @RequiresPermissions({"/glass/add","/glass/edit"})
    @ResponseBody
    public ResultVo save(@Validated GlassForm glassForm){

        // 将验证的数据复制给实体类
        Glass glass = new Glass();
        if(glassForm.getId() != null){
            glass = glassService.getId(glassForm.getId());
        }
        FormBeanUtil.copyProperties(glassForm, glass);

        // 保存数据
        glassService.save(glass);
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("/glass/detail")
    public String toDetail(@PathVariable("id") Long id, Model model){
        Glass glass = glassService.getId(id);
        model.addAttribute("glass",glass);
        return "/system/glass/detail";
    }

    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("/glass/status")
    @ResponseBody
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> idList){
        try {
            // 获取状态StatusEnum对象
            StatusEnum statusEnum = StatusEnum.valueOf(param.toUpperCase());
            // 更新状态
            Integer count = glassService.updateStatus(statusEnum,idList);
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
