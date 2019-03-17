package com.linln.admin.system.service.impl;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.Glass;
import com.linln.admin.system.domain.Role;
import com.linln.admin.system.repository.GlassRepository;
import com.linln.admin.system.service.GlassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Service
public class GlassServiceImpl implements GlassService {

    @Autowired
    private GlassRepository glassRepository;

    /**
     * 根据编辑管理ID查询编辑管理数据
     * @param id 编辑管理ID
     */
    @Override
    @Transactional
    public Glass getId(Long id) {
        Byte[] status = {StatusEnum.OK.getCode(), StatusEnum.FREEZED.getCode()};
        return glassRepository.findByIdAndStatusIn(id, status);
    }

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @param pageIndex 页码
     * @param pageSize 获取列表长度
     * @return 返回分页数据
     */
    @Override
    public Page<Glass> getPageList(Example<Glass> example, Integer pageIndex, Integer pageSize) {
        // 创建分页对象
        Sort sort = new Sort(Sort.Direction.DESC, "createDate");
        PageRequest page = PageRequest.of(pageIndex-1, pageSize, sort);
        Page<Glass> list = glassRepository.findAll(example, page);
        return list;
    }

    /**
     * 保存编辑管理
     * @param glass 编辑管理实体类
     */
    @Override
    public Glass save(Glass glass){
        return glassRepository.save(glass);
    }

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Override
    @Transactional
    public Integer updateStatus(StatusEnum statusEnum, List<Long> idList){
        return glassRepository.updateStatus(statusEnum.getCode(),idList);
    }

    @Override
    public List<Glass> getList(Sort sort) {
        return glassRepository.findAllByStatus(sort,StatusEnum.OK.getCode());
    }

    @Override
    public List<Glass> getIdList(List<Long> ids) {
        return glassRepository.findByIdInAndStatus(ids, StatusEnum.OK.getCode());
    }
}

