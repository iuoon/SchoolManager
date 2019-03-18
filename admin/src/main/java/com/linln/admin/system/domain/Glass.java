package com.linln.admin.system.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.User;
import lombok.Data;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Entity
@Table(name="sys_glass")
@Data
@EntityListeners(AuditingEntityListener.class)
public class Glass implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	// 标题
	private String title;
	// 系别
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="dept_id")
	@JsonIgnore
	private Dept dept;
	// 标题
	private String name;
	// 备注
	private String remark;
	// 创建时间
	@CreatedDate
	private Date createDate;
	// 更新时间
	@LastModifiedDate
	private Date updateDate;
	// 创建者
	@CreatedBy
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="create_by")
	@JsonIgnore
	private User createBy;
	// 更新者
	@LastModifiedBy
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="update_by")
	@JsonIgnore
	private User updateBy;
	// 数据状态
	private Byte status = StatusEnum.OK.getCode();
}
