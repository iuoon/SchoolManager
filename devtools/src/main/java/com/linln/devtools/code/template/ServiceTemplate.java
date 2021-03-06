package com.linln.devtools.code.template;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.core.utils.ToolUtil;
import com.linln.devtools.code.domain.Generate;
import com.linln.devtools.code.utils.CodeUtil;
import com.linln.devtools.code.utils.GenerateUtil;
import com.linln.devtools.code.utils.TemplateUtil;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.nio.file.FileAlreadyExistsException;
import java.util.List;

/**
 * @author wuyz
 * @date 2018/10/25
 */
public class ServiceTemplate {

    /**
     * 生成需要导入的包
     */
    private static void genImport(Generate generate) {
        String tableEntity = generate.getBasic().getTableEntity();
        CodeUtil.importLine(TemplateUtil.getPath(generate) + ".domain." + tableEntity);
        CodeUtil.importLine(StatusEnum.class);
        CodeUtil.importLine(Example.class);
        CodeUtil.importLine(Page.class);
        CodeUtil.importLine(Transactional.class);
        CodeUtil.importLine(List.class);
    }

    /**
     * 生成类字段
     */
    private static void genClazzBody(Generate generate) {
        // 构建数据
        String var = ToolUtil.lowerFirst(generate.getBasic().getTableEntity());
        String obj = generate.getBasic().getTableEntity();
        String filePath = ServiceTemplate.class.getResource("").getPath()
                + ServiceTemplate.class.getSimpleName() + ".code";

        // 生成Class部分
        String clazzTarget = TemplateUtil.getTemplate(filePath, "Class");
        clazzTarget = clazzTarget.replace("#{var}", var);
        clazzTarget = clazzTarget.replace("#{obj}", obj);
        CodeUtil.append(clazzTarget).append(CodeUtil.lineBreak);
    }

    /**
     * 生成服务层模板
     */
    public static String generate(Generate generate) {
        CodeUtil.create();
        CodeUtil.setPackageName(TemplateUtil.getPackage(generate, "service"));
        TemplateUtil.genAuthor(generate);
        ServiceTemplate.genImport(generate);
        ServiceTemplate.genClazzBody(generate);

        // 生成文件
        String filePath = GenerateUtil.getJavaFilePath(generate, "service", "Service");
        try {
            GenerateUtil.generateFile(filePath, CodeUtil.save());
        } catch (FileAlreadyExistsException e) {
            return GenerateUtil.fileExist(filePath);
        }
        return filePath;
    }
}
