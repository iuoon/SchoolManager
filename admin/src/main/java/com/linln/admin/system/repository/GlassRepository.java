package com.linln.admin.system.repository;

import com.linln.admin.system.domain.Dept;
import com.linln.admin.system.domain.Glass;
import com.linln.admin.system.domain.Role;
import com.linln.admin.system.repository.BaseRepository;
import org.springframework.data.domain.Sort;

import java.util.List;


/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface GlassRepository extends BaseRepository<Glass, Long> {

    public List<Glass> findAllByStatus(Sort sort, Byte status);

    /**
     * 查找多个班级
     * @param ids id列表
     */
    public List<Glass> findByIdInAndStatus(List<Long> ids, Byte status);


    List<Glass> findByDept(Dept dept);
}

