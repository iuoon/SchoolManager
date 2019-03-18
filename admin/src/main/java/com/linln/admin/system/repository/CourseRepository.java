package com.linln.admin.system.repository;

import com.linln.admin.system.domain.Course;
import com.linln.admin.system.domain.Dept;
import com.linln.admin.system.repository.BaseRepository;

import java.util.List;


/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface CourseRepository extends BaseRepository<Course, Long> {

    public List<Course> findByDept(Dept dept);
}

