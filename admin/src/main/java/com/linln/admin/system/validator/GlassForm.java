package com.linln.admin.system.validator;

import com.linln.admin.system.domain.Glass;
import lombok.Data;

import javax.validation.constraints.*;
import java.io.Serializable;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Data
public class GlassForm extends Glass implements Serializable {
	@NotEmpty(message = "标题不能为空")
	private String title;
}
