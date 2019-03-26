package com.linln.admin.system.service;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.Score;
import com.linln.admin.system.domain.ScorePrize;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface ScoreService {

    Page<Score> getPageList(Score score, Integer pageIndex, Integer pageSize);

    Score getId(Long id);

    Score save(Score score);

    @Transactional
    Integer updateStatus(StatusEnum statusEnum, List<Long> idList);

    List<Map<String, Object>> selectGlassUserCount();

    List<Map<String, Object>> selectScorePrizeByGlassId(Long glassId, Integer size);

    int updatePrizeLevel(Integer prizeLevel,Long glassId,Integer s1,Integer s2);
}

