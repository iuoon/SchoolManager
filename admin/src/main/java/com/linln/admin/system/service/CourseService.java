package com.linln.admin.system.service;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.Course;
import com.linln.admin.system.domain.User;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface CourseService {

    Page<Course> getPageList(Example<Course> example, Integer pageIndex, Integer pageSize);

    Course getId(Long id);

    Course save(Course course);

    @Transactional
    Integer updateStatus(StatusEnum statusEnum, List<Long> idList);

    public List<User> getTeacherList(Long id);
}

