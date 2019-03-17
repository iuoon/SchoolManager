package com.linln.admin.system.service;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.Score;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface ScoreService {

    Page<Score> getPageList(Example<Score> example, Integer pageIndex, Integer pageSize);

    Score getId(Long id);

    Score save(Score score);

    @Transactional
    Integer updateStatus(StatusEnum statusEnum, List<Long> idList);
}

