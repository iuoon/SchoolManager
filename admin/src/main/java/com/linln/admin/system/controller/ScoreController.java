package com.linln.admin.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.linln.admin.core.enums.ResultEnum;
import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.core.exception.ResultException;
import com.linln.admin.core.utils.SMUtil;
import com.linln.admin.core.web.TimoExample;
import com.linln.admin.system.domain.Score;
import com.linln.admin.system.domain.ScorePrize;
import com.linln.admin.system.service.ScoreService;
import com.linln.admin.system.validator.ScoreForm;
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

import javax.validation.constraints.Null;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Controller
@RequestMapping("/score")
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    /**
     * 列表页面
     * @param pageIndex 页码
     * @param pageSize 获取数据长度
     */
    @GetMapping("/index")
    @RequiresPermissions("/score/index")
    public String index(Model model, Score score,
            @RequestParam(value="page",defaultValue="1") int pageIndex,
            @RequestParam(value="size",defaultValue="10") int pageSize){

        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
				withMatcher("user.nickname", match -> match.contains()).
				withMatcher("course.name", match -> match.contains());

        // 获取成绩管理列表
        Example<Score> example = TimoExample.of(score, matcher);
        Page<Score> list = scoreService.getPageList(score, pageIndex, pageSize);

        // 封装数据
        model.addAttribute("list",list.getContent());
        model.addAttribute("page",list);
        return "/system/score/index";
    }

    @GetMapping("/indexPrize")
    @RequiresPermissions("/score/indexPrize")
    public String indexPrize(Model model, Score score,
                        @RequestParam(value="page",defaultValue="1") int pageIndex,
                        @RequestParam(value="size",defaultValue="10") int pageSize){

        if(score.getGlass() != null){
            score.getGlass().setId(score.getGlass().getId()/1000);
        }

        List<Map<String, Object>> listGlass=scoreService.selectGlassUserCount();
        for (Map<String, Object> map:listGlass){
            Long id = Long.parseLong(map.get("id").toString());
            Integer count = Integer.valueOf(map.get("count").toString());
            int c1= (int) Math.rint(count*0.02);
            if (c1==0){
                c1=1;
            }
            int c2= (int) Math.rint(count*0.04);
            int c3= (int) Math.rint(count*0.06);

            scoreService.updatePrizeLevel(1,id,0,c1);
            scoreService.updatePrizeLevel(2,id,c1,c2);
            scoreService.updatePrizeLevel(3,id,c1+c2,c3);


        }
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching().
                withMatcher("user.nickname", match -> match.contains()).
                withMatcher("course.name", match -> match.contains());
        Example<Score> example = TimoExample.of(score, matcher);
        score.setPrizeLevel(1);
        // 获取成绩管理列表

        Page<Score> list = scoreService.getPageList(score, pageIndex, pageSize);
        List<Score> scoreList=list.getContent();
        for (Score sc:scoreList) {
            if(sc.getPrizeLevel().equals(1)){
                sc.setLevelName("一等奖");
            }
            if(sc.getPrizeLevel().equals(2)){
                sc.setLevelName("二等奖");
            }
            if(sc.getPrizeLevel().equals(3)){
                sc.setLevelName("三等奖");
            }
        }

        // 封装数据
        model.addAttribute("list",scoreList);
        model.addAttribute("page",list);

        return "/system/score/indexPrize";
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping("/add")
    @RequiresPermissions("/score/add")
    public String toAdd(){
        return "/system/score/add";
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("/score/edit")
    public String toEdit(@PathVariable("id") Long id, Model model){
        Score score = scoreService.getId(id);
        /*score.getCourse().setId(score.getCourse().getId()*1000);*/
        score.getGlass().setId(score.getGlass().getId()*1000);
        score.getUser().setId(score.getUser().getId()*100000);
        model.addAttribute("score",score);
        return "/system/score/add";
    }

    /**
     * 保存添加/修改的数据
     * @param scoreForm 表单验证对象
     */
    @PostMapping({"/add","/edit"})
    @RequiresPermissions({"/score/add","/score/edit"})
    @ResponseBody
    public ResultVo save(@Validated ScoreForm scoreForm){
        if(scoreForm.getUser().getId() == null || scoreForm.getUser().getId()/100000<1){
            return ResultVoUtil.error("请选择学生");
        }

        /*if(scoreForm.getCourse().getId() == null || scoreForm.getCourse().getId()/1000<1){
            return ResultVoUtil.error("请选择课程");
        }*/

        if(scoreForm.getGlass().getId() == null || scoreForm.getGlass().getId()/1000<1){
            return ResultVoUtil.error("请选择班级");
        }
        if(scoreForm.getScore() == null){
            return ResultVoUtil.error("请填写学业基础分");
        }
        if(scoreForm.getBehaviorScore() == null){
            return ResultVoUtil.error("请填写行为基础分");
        }

        scoreForm.getUser().setId(scoreForm.getUser().getId()/100000);
        /*scoreForm.getCourse().setId(scoreForm.getCourse().getId()/1000);*/
        scoreForm.getGlass().setId(scoreForm.getGlass().getId()/1000);

        scoreForm.setTotalScore(scoreForm.getScore()+scoreForm.getBehaviorScore());
        // 将验证的数据复制给实体类
        Score score = new Score();
        if(scoreForm.getId() != null){
            score = scoreService.getId(scoreForm.getId());
        }
        FormBeanUtil.copyProperties(scoreForm, score);

        // 保存数据
        scoreService.save(score);
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("/score/detail")
    public String toDetail(@PathVariable("id") Long id, Model model){
        Score score = scoreService.getId(id);
        model.addAttribute("score",score);
        return "/system/score/detail";
    }

    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("/score/status")
    @ResponseBody
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> idList){
        try {
            // 获取状态StatusEnum对象
            StatusEnum statusEnum = StatusEnum.valueOf(param.toUpperCase());
            // 更新状态
            Integer count = scoreService.updateStatus(statusEnum,idList);
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
