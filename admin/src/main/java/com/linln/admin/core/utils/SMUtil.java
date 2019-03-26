package com.linln.admin.core.utils;

import java.util.regex.Pattern;

public class SMUtil {

    //判断字符串是否为double
    public static boolean isDouble(String str) {
        Pattern pattern = Pattern.compile("^[-//+]?//d+(//.//d*)?|//.//d+$");
        return pattern.matcher(str).matches();
    }

}
