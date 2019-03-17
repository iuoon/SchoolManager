package com.linln.admin.system.validator;

import com.linln.admin.system.domain.Course;
import com.linln.admin.system.domain.Score;
import com.linln.admin.system.domain.User;
import lombok.Data;

import javax.validation.constraints.*;
import java.io.Serializable;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Data
public class ScoreForm extends Score implements Serializable {
    @NotEmpty(message = "姓名不能为空")
    private User userId;
    @NotEmpty(message = "课程不能为空")
    private Course courseId;
}
