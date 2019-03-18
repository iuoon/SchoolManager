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
@Table(name="sys_score")
@Data
@EntityListeners(AuditingEntityListener.class)
public class Score implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	// 学生姓名
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	@JsonIgnore
	private User user;
	// 课程名称
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="course_id")
	@JsonIgnore
	private Course course;
	//班级
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="glass_id")
	@JsonIgnore
	private Glass glass;
	// 学业基础分
	private Integer score;
	// 行为基础分
	private Integer behaviorScore;
	// 年份
	private Integer year;
	// 备注
	private Long remark;
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
