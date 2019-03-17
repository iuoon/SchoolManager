package com.linln.admin.system.validator;

import com.linln.admin.system.domain.Course;
import lombok.Data;

import javax.validation.constraints.*;
import java.io.Serializable;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Data
public class CourseForm extends Course implements Serializable {
	@NotEmpty(message = "课程名称不能为空")
	private String name;
}
