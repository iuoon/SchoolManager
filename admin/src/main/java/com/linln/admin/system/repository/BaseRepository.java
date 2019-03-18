package com.linln.admin.system.repository;

import com.linln.admin.core.enums.AuditStatusEnum;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author wuyz
 * @date 2018/8/14
 */
@NoRepositoryBean
public interface BaseRepository<T, ID> extends JpaRepository<T,ID> {

    /**
     * 查找ID且状态正常
     *
     * @param id 主键ID
     * @param status 状态
     */
    public T findByIdAndStatus(Long id, Byte status);

    /**
     * 查找ID且排查状态
     *
     * @param id 主键ID
     * @param status 状态数组
     */
    public T findByIdAndStatusIn(Long id, Byte[] status);

    /**
     * 批量更新数据状态
     * #{#entityName} 实体类对象
     * @param status 状态
     * @param id ID列表
     * @return 更新数量
     */
    @Modifying
    @Transactional
    @Query("update #{#entityName} set status = ?1  where id in ?2  and status <> 3")
    public Integer updateStatus(Byte status,List<Long> id);

    @Modifying
    @Transactional
    @Query("update #{#entityName} set auditstatus = ?1  where id in ?2 ")
    public Integer updateAuditStatus(Integer status, List<Long> idList);
}
