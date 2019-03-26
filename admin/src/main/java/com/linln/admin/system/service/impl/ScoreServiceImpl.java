package com.linln.admin.system.service.impl;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.*;
import com.linln.admin.system.repository.ScoreRepository;
import com.linln.admin.system.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Service
public class ScoreServiceImpl implements ScoreService {

    @Autowired
    private ScoreRepository scoreRepository;

    /**
     * 根据成绩管理ID查询成绩管理数据
     * @param id 成绩管理ID
     */
    @Override
    @Transactional
    public Score getId(Long id) {
        Byte[] status = {StatusEnum.OK.getCode(), StatusEnum.FREEZED.getCode()};
        return scoreRepository.findByIdAndStatusIn(id, status);
    }

    /**
     * 获取分页列表数据
     * @param pageIndex 页码
     * @param pageSize 获取列表长度
     * @return 返回分页数据
     */
    @Override
    public Page<Score> getPageList(Score score, Integer pageIndex, Integer pageSize) {
        // 创建分页对象
        Sort sort = new Sort(Sort.Direction.DESC, "createDate");
        PageRequest page = PageRequest.of(pageIndex-1, pageSize, sort);
        Specification specification=new Specification<Score>(){
            @Override
            public Predicate toPredicate(Root<Score> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
                List<Predicate> preList = new ArrayList<>();

                if(score.getGlass()!=null){
                    preList.add(cb.equal(root.get("glass").as(Glass.class), score.getGlass()));
                }
                if(score.getPrizeLevel() != null){
                    preList.add(cb.ge(root.get("prizeLevel").as(Integer.class), score.getPrizeLevel() ));
                }

                // 数据状态
                if(!score.getStatus().equals(StatusEnum.DELETE.getCode())){
                    preList.add(cb.equal(root.get("status").as(Byte.class), score.getStatus()));
                }

                Predicate[] pres = new Predicate[preList.size()];
                return query.where(preList.toArray(pres)).getRestriction();
            }

        };
        Page<Score> list = scoreRepository.findAll(specification, page);
        return list;
    }

    /**
     * 保存成绩管理
     * @param score 成绩管理实体类
     */
    @Override
    public Score save(Score score){
        return scoreRepository.save(score);
    }

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Override
    @Transactional
    public Integer updateStatus(StatusEnum statusEnum, List<Long> idList){
        return scoreRepository.updateStatus(statusEnum.getCode(),idList);
    }

    @Override
    public List<Map<String, Object>> selectGlassUserCount() {
        return scoreRepository.selectGlassUserCount();
    }

    @Override
    public List<Map<String, Object>> selectScorePrizeByGlassId(Long glassId, Integer size) {
        return scoreRepository.selectScorePrizeByGlassId(glassId,size);
    }

    @Override
    public int updatePrizeLevel(Integer prizeLevel, Long glassId, Integer s1,Integer s2) {
        return scoreRepository.updatePrizeLevel(prizeLevel,glassId,s1,s2);
    }

}

