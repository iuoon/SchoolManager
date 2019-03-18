package com.linln.admin.core.enums;

import lombok.Getter;

@Getter
public enum  AuditStatusEnum {
    APPLY(1, "申请"),
    OK(2, "评优通过"),
    CANCEL(3, "评优不通过");

    private Integer code;

    private String message;

    AuditStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
