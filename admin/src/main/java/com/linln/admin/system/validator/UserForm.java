package com.linln.admin.system.validator;

import com.linln.admin.system.domain.Dept;
import com.linln.admin.system.domain.User;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * @author wuyz
 * @date 2018/8/14
 */
@Data
public class UserForm extends User implements Serializable {
    private Object entity;
    @NotEmpty(message = "用户名不能为空")
    private String username;
    @NotEmpty(message = "用户昵称不能为空")
    @Size(min = 2, message = "用户昵称：请输入至少2个字符")
    private String nickname;
    private String confirm;
    @NotNull(message = "所在部门不能为空")
    private Dept dept;
}
