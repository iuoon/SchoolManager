package com.linln.admin.system.service.impl;

import com.linln.admin.core.enums.StatusEnum;
import com.linln.admin.system.domain.Course;
import com.linln.admin.system.domain.Role;
import com.linln.admin.system.domain.User;
import com.linln.admin.system.repository.CourseRepository;
import com.linln.admin.system.repository.RoleRepository;
import com.linln.admin.system.repository.UserRepository;
import com.linln.admin.system.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseRepository courseRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;

    /**
     * 根据课程管理ID查询课程管理数据
     * @param id 课程管理ID
     */
    @Override
    @Transactional
    public Course getId(Long id) {
        Byte[] status = {StatusEnum.OK.getCode(), StatusEnum.FREEZED.getCode()};
        return courseRepository.findByIdAndStatusIn(id, status);
    }

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @param pageIndex 页码
     * @param pageSize 获取列表长度
     * @return 返回分页数据
     */
    @Override
    public Page<Course> getPageList(Example<Course> example, Integer pageIndex, Integer pageSize) {
        // 创建分页对象
        Sort sort = new Sort(Sort.Direction.DESC, "createDate");
        PageRequest page = PageRequest.of(pageIndex-1, pageSize, sort);
        Page<Course> list = courseRepository.findAll(example, page);
        return list;
    }

    /**
     * 保存课程管理
     * @param course 课程管理实体类
     */
    @Override
    public Course save(Course course){
        return courseRepository.save(course);
    }

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Override
    @Transactional
    public Integer updateStatus(StatusEnum statusEnum, List<Long> idList){
        return courseRepository.updateStatus(statusEnum.getCode(),idList);
    }

    @Override
    public List<User> getTeacherList(Long id) {
        Role role=roleRepository.findById(id).get();
        Set<Role> roleSet=new HashSet<>();
        roleSet.add(role);
        return userRepository.findByRoles(roleSet);
    }
}

