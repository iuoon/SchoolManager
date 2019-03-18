package com.linln.admin.system.service;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.Dept;
import com.linln.admin.system.domain.Glass;
import com.linln.admin.system.domain.Role;
import com.linln.admin.system.domain.User;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface GlassService {

    Page<Glass> getPageList(Example<Glass> example, Integer pageIndex, Integer pageSize);

    Glass getId(Long id);

    Glass save(Glass glass);

    @Transactional
    Integer updateStatus(StatusEnum statusEnum, List<Long> idList);

    List<Glass> getList(Sort sort);

    @Transactional
    List<Glass> getIdList(List<Long> ids);

    List<Glass> findByDept(Dept dept);
}

