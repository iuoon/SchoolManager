/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : ccmanage

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2019-03-17 22:30:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_action_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_action_log`;
CREATE TABLE `sys_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '日志类型',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `clazz` varchar(255) DEFAULT NULL COMMENT '产生日志的类',
  `method` varchar(255) DEFAULT NULL COMMENT '产生日志的方法',
  `model` varchar(255) DEFAULT NULL COMMENT '产生日志的表',
  `record_id` bigint(20) DEFAULT NULL COMMENT '产生日志的数据id',
  `message` text COMMENT '日志消息',
  `create_date` datetime DEFAULT NULL COMMENT '记录时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '产生日志的用户',
  PRIMARY KEY (`id`),
  KEY `FKg3p1utwpm133f87x17h4o21wd` (`create_by`),
  CONSTRAINT `FKg3p1utwpm133f87x17h4o21wd` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_action_log
-- ----------------------------
INSERT INTO `sys_action_log` VALUES ('260', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 12:45:48', '1');
INSERT INTO `sys_action_log` VALUES ('261', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '1', '角色分配成功：admin', '2019-03-17 12:46:17', '1');
INSERT INTO `sys_action_log` VALUES ('262', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '1', '更新用户成功：admin', '2019-03-17 12:46:35', '1');
INSERT INTO `sys_action_log` VALUES ('263', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '1', '更新用户成功：admin', '2019-03-17 12:46:58', '1');
INSERT INTO `sys_action_log` VALUES ('264', '用户密码', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'editPassword', 'sys_user', '1', '修改用户密码成功admin', '2019-03-17 12:48:07', '1');
INSERT INTO `sys_action_log` VALUES ('265', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 12:52:11', '1');
INSERT INTO `sys_action_log` VALUES ('266', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '1', '更新用户成功：admin', '2019-03-17 12:55:09', '1');
INSERT INTO `sys_action_log` VALUES ('267', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 12:56:27', '1');
INSERT INTO `sys_action_log` VALUES ('268', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '1', '更新用户成功：admin', '2019-03-17 12:56:41', '1');
INSERT INTO `sys_action_log` VALUES ('269', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 13:21:12', '1');
INSERT INTO `sys_action_log` VALUES ('270', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '2', '更新用户成功：linln', '2019-03-17 13:29:22', '1');
INSERT INTO `sys_action_log` VALUES ('271', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 13:32:55', '1');
INSERT INTO `sys_action_log` VALUES ('272', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '2', '更新用户成功：linln', '2019-03-17 13:33:12', '1');
INSERT INTO `sys_action_log` VALUES ('273', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 13:36:10', '1');
INSERT INTO `sys_action_log` VALUES ('274', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '2', '更新用户成功：linln', '2019-03-17 13:36:40', '1');
INSERT INTO `sys_action_log` VALUES ('275', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 13:37:56', '1');
INSERT INTO `sys_action_log` VALUES ('276', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '1', '更新部门：学校系别', '2019-03-17 13:39:53', '1');
INSERT INTO `sys_action_log` VALUES ('277', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '136', '更新菜单：系别管理', '2019-03-17 13:40:15', '1');
INSERT INTO `sys_action_log` VALUES ('278', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 13:42:32', '1');
INSERT INTO `sys_action_log` VALUES ('279', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 13:44:38', '1');
INSERT INTO `sys_action_log` VALUES ('280', '系统异常', '3', '0:0:0:0:0:0:0:1', 'com.linln.admin.core.exception.ResultExceptionHandler', 'runtimeException', null, null, 'java.lang.IndexOutOfBoundsException: Index: 5, Size: 4\n	java.util.ArrayList.rangeCheckForAdd(ArrayList.java:661)\n	java.util.ArrayList.add(ArrayList.java:473)\n	com.linln.admin.system.controller.MenuController.save(MenuController.java:176)\n	com.linln.admin.system.controller.MenuController$$FastClassBySpringCGLIB$$aed39495.invoke(<generated>)\n	org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\n	org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\n	com.linln.admin.core.log.annotation.LogAop.recordLog(LogAop.java:36)\n	sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	java.lang.reflect.Method.invoke(Method.java:498)\n	org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\n	org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\n	org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:174)\n	org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\n	org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\n	org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	com.linln.admin.system.controller.MenuController$$EnhancerBySpringCGLIB$$3472e10e.save(<generated>)\n	com.linln.devtools.code.GenerateController.menuRule(GenerateController.java:112)\n	com.linln.devtools.code.GenerateController.save(GenerateController.java:69)\n	sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	java.lang.reflect.Method.invoke(Method.java:498)\n	org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\n	org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\n	org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:891)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)\n	org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\n	org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\n	org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\n	org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:877)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\n	org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	com.linln.core.xss.XssFilter.doFilter(XssFilter.java:47)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\n	org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:493)\n	org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\n	org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\n	org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\n	org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\n	org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:800)\n	org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:806)\n	org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1498)\n	org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	java.lang.Thread.run(Thread.java:745)', '2019-03-17 13:52:07', '1');
INSERT INTO `sys_action_log` VALUES ('281', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 14:04:51', '1');
INSERT INTO `sys_action_log` VALUES ('282', '系统异常', '3', '0:0:0:0:0:0:0:1', 'com.linln.admin.core.exception.ResultExceptionHandler', 'runtimeException', null, null, 'java.lang.IndexOutOfBoundsException: Index: 5, Size: 4\n	java.util.ArrayList.rangeCheckForAdd(ArrayList.java:661)\n	java.util.ArrayList.add(ArrayList.java:473)\n	com.linln.admin.system.controller.MenuController.save(MenuController.java:176)\n	com.linln.admin.system.controller.MenuController$$FastClassBySpringCGLIB$$aed39495.invoke(<generated>)\n	org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\n	org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\n	com.linln.admin.core.log.annotation.LogAop.recordLog(LogAop.java:36)\n	sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	java.lang.reflect.Method.invoke(Method.java:498)\n	org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\n	org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\n	org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:174)\n	org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\n	org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\n	org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	com.linln.admin.system.controller.MenuController$$EnhancerBySpringCGLIB$$f722f15a.save(<generated>)\n	com.linln.devtools.code.GenerateController.menuRule(GenerateController.java:112)\n	com.linln.devtools.code.GenerateController.save(GenerateController.java:69)\n	sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	java.lang.reflect.Method.invoke(Method.java:498)\n	org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\n	org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\n	org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:891)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)\n	org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\n	org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\n	org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\n	org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:877)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\n	org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	com.linln.core.xss.XssFilter.doFilter(XssFilter.java:47)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\n	org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:493)\n	org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\n	org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\n	org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\n	org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\n	org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:800)\n	org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:806)\n	org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1498)\n	org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	java.lang.Thread.run(Thread.java:745)', '2019-03-17 14:06:18', '1');
INSERT INTO `sys_action_log` VALUES ('283', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '3', '添加用户成功：1001', '2019-03-17 14:22:18', '1');
INSERT INTO `sys_action_log` VALUES ('284', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '1', '角色分配成功：admin', '2019-03-17 14:24:07', '1');
INSERT INTO `sys_action_log` VALUES ('285', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 14:36:57', '1');
INSERT INTO `sys_action_log` VALUES ('286', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '149', '添加菜单：班级管理', '2019-03-17 14:37:38', '1');
INSERT INTO `sys_action_log` VALUES ('287', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '1', '角色授权成功：管理员', '2019-03-17 14:42:32', '1');
INSERT INTO `sys_action_log` VALUES ('288', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 14:46:42', '1');
INSERT INTO `sys_action_log` VALUES ('289', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 14:49:18', '1');
INSERT INTO `sys_action_log` VALUES ('290', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 14:52:32', '1');
INSERT INTO `sys_action_log` VALUES ('291', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 14:54:30', '1');
INSERT INTO `sys_action_log` VALUES ('292', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 15:07:58', '1');
INSERT INTO `sys_action_log` VALUES ('293', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '150', '添加菜单：课程管理', '2019-03-17 15:11:26', '1');
INSERT INTO `sys_action_log` VALUES ('294', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '151', '添加菜单：添加', '2019-03-17 15:11:27', '1');
INSERT INTO `sys_action_log` VALUES ('295', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '152', '添加菜单：编辑', '2019-03-17 15:11:27', '1');
INSERT INTO `sys_action_log` VALUES ('296', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '153', '添加菜单：详细', '2019-03-17 15:11:27', '1');
INSERT INTO `sys_action_log` VALUES ('297', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '154', '添加菜单：改变状态', '2019-03-17 15:11:27', '1');
INSERT INTO `sys_action_log` VALUES ('298', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '1', '角色授权成功：管理员', '2019-03-17 15:11:27', '1');
INSERT INTO `sys_action_log` VALUES ('299', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 15:13:26', '1');
INSERT INTO `sys_action_log` VALUES ('300', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 15:16:45', '1');
INSERT INTO `sys_action_log` VALUES ('301', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '2', '角色分配成功：linln', '2019-03-17 15:31:11', '1');
INSERT INTO `sys_action_log` VALUES ('302', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '3', '角色分配成功：1001', '2019-03-17 15:31:19', '1');
INSERT INTO `sys_action_log` VALUES ('303', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '1', '角色授权成功：管理员', '2019-03-17 15:36:31', '1');
INSERT INTO `sys_action_log` VALUES ('304', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '2', '角色授权成功：教师', '2019-03-17 15:37:19', '1');
INSERT INTO `sys_action_log` VALUES ('305', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '3', '角色授权成功：学生', '2019-03-17 15:37:39', '1');
INSERT INTO `sys_action_log` VALUES ('306', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '2', '角色分配成功：linln', '2019-03-17 15:53:20', '1');
INSERT INTO `sys_action_log` VALUES ('307', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 16:01:09', '1');
INSERT INTO `sys_action_log` VALUES ('308', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 16:03:51', '1');
INSERT INTO `sys_action_log` VALUES ('309', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 16:31:39', '1');
INSERT INTO `sys_action_log` VALUES ('310', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 16:33:50', '1');
INSERT INTO `sys_action_log` VALUES ('311', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:21:27', '1');
INSERT INTO `sys_action_log` VALUES ('312', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:24:11', '1');
INSERT INTO `sys_action_log` VALUES ('313', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:27:03', '1');
INSERT INTO `sys_action_log` VALUES ('314', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:31:49', '1');
INSERT INTO `sys_action_log` VALUES ('315', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '4', '添加用户成功：1002', '2019-03-17 17:33:22', '1');
INSERT INTO `sys_action_log` VALUES ('316', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '4', '角色分配成功：1002', '2019-03-17 17:33:32', '1');
INSERT INTO `sys_action_log` VALUES ('317', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:35:02', '1');
INSERT INTO `sys_action_log` VALUES ('318', '系统异常', '3', '0:0:0:0:0:0:0:1', 'com.linln.admin.core.exception.ResultExceptionHandler', 'runtimeException', null, null, 'org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\n	org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:257)\n	org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:223)\n	org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:540)\n	org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:746)\n	org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:714)\n	org.springframework.transaction.interceptor.TransactionAspectSupport.commitTransactionAfterReturning(TransactionAspectSupport.java:532)\n	org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:304)\n	org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\n	com.sun.proxy.$Proxy137.save(Unknown Source)\n	com.linln.admin.system.service.impl.CourseServiceImpl.save(CourseServiceImpl.java:70)\n	com.linln.admin.system.service.impl.CourseServiceImpl$$FastClassBySpringCGLIB$$3374d5bd.invoke(<generated>)\n	org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\n	org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\n	com.linln.admin.system.service.impl.CourseServiceImpl$$EnhancerBySpringCGLIB$$111ec4d4.save(<generated>)\n	com.linln.admin.system.controller.CourseController.setTeacher(CourseController.java:197)\n	com.linln.admin.system.controller.CourseController$$FastClassBySpringCGLIB$$82c07dd1.invoke(<generated>)\n	org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\n	org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\n	com.linln.admin.core.log.annotation.LogAop.recordLog(LogAop.java:36)\n	sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	java.lang.reflect.Method.invoke(Method.java:498)\n	org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\n	org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\n	org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:174)\n	org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\n	org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\n	org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\n	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\n	org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	com.linln.admin.system.controller.CourseController$$EnhancerBySpringCGLIB$$6fe4cff9.setTeacher(<generated>)\n	sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	java.lang.reflect.Method.invoke(Method.java:498)\n	org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\n	org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\n	org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:891)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)\n	org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\n	org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\n	org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\n	org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:877)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\n	org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	com.linln.core.xss.XssFilter.doFilter(XssFilter.java:47)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\n	org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:493)\n	org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\n	org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\n	org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\n	org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\n	org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:800)\n	org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:806)\n	org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1498)\n	org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	java.lang.Thread.run(Thread.java:745)', '2019-03-17 17:35:11', '1');
INSERT INTO `sys_action_log` VALUES ('319', '教师分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.CourseController', 'setTeacher', null, null, '', '2019-03-17 17:39:13', '1');
INSERT INTO `sys_action_log` VALUES ('320', '教师分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.CourseController', 'setTeacher', null, null, '', '2019-03-17 17:42:29', '1');
INSERT INTO `sys_action_log` VALUES ('321', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:47:11', '1');
INSERT INTO `sys_action_log` VALUES ('322', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:48:35', '1');
INSERT INTO `sys_action_log` VALUES ('323', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:50:39', '1');
INSERT INTO `sys_action_log` VALUES ('324', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:51:39', '1');
INSERT INTO `sys_action_log` VALUES ('325', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:52:23', '1');
INSERT INTO `sys_action_log` VALUES ('326', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:53:20', '1');
INSERT INTO `sys_action_log` VALUES ('327', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:53:59', '1');
INSERT INTO `sys_action_log` VALUES ('328', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:54:50', '1');
INSERT INTO `sys_action_log` VALUES ('329', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 17:57:18', '1');
INSERT INTO `sys_action_log` VALUES ('330', '教师分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.CourseController', 'setTeacher', null, null, '', '2019-03-17 17:58:04', '1');
INSERT INTO `sys_action_log` VALUES ('331', '教师分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.CourseController', 'setTeacher', null, null, '', '2019-03-17 17:58:11', '1');
INSERT INTO `sys_action_log` VALUES ('332', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '9', '添加部门：数码系', '2019-03-17 17:59:23', '1');
INSERT INTO `sys_action_log` VALUES ('333', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '10', '添加部门：游戏系', '2019-03-17 17:59:44', '1');
INSERT INTO `sys_action_log` VALUES ('334', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '11', '添加部门：管理系', '2019-03-17 17:59:53', '1');
INSERT INTO `sys_action_log` VALUES ('335', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '12', '添加部门：计算机系', '2019-03-17 18:00:11', '1');
INSERT INTO `sys_action_log` VALUES ('336', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '13', '添加部门：财会系', '2019-03-17 18:00:31', '1');
INSERT INTO `sys_action_log` VALUES ('337', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '14', '添加部门：国贸系', '2019-03-17 18:00:46', '1');
INSERT INTO `sys_action_log` VALUES ('338', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '15', '添加部门：外语系', '2019-03-17 18:00:55', '1');
INSERT INTO `sys_action_log` VALUES ('339', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 18:38:18', '1');
INSERT INTO `sys_action_log` VALUES ('340', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '3', '角色分配成功：1001', '2019-03-17 18:38:36', '1');
INSERT INTO `sys_action_log` VALUES ('341', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 18:40:24', '1');
INSERT INTO `sys_action_log` VALUES ('342', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '2', '角色分配成功：linln', '2019-03-17 18:40:37', '1');
INSERT INTO `sys_action_log` VALUES ('343', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 18:48:12', '1');
INSERT INTO `sys_action_log` VALUES ('344', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '2', '角色分配成功：linln', '2019-03-17 18:48:43', '1');
INSERT INTO `sys_action_log` VALUES ('345', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 18:49:49', '1');
INSERT INTO `sys_action_log` VALUES ('346', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '2', '角色分配成功：linln', '2019-03-17 18:50:01', '1');
INSERT INTO `sys_action_log` VALUES ('347', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '4', '角色分配成功：1002', '2019-03-17 18:50:06', '1');
INSERT INTO `sys_action_log` VALUES ('348', '角色分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'auth', 'sys_user', '3', '角色分配成功：1001', '2019-03-17 18:50:13', '1');
INSERT INTO `sys_action_log` VALUES ('349', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 18:51:24', '1');
INSERT INTO `sys_action_log` VALUES ('350', '班级分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'authGlass', null, null, '', '2019-03-17 18:51:34', '1');
INSERT INTO `sys_action_log` VALUES ('351', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:00:16', '1');
INSERT INTO `sys_action_log` VALUES ('352', '班级分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'authGlass', null, null, '', '2019-03-17 19:00:43', '1');
INSERT INTO `sys_action_log` VALUES ('353', '班级分配', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'authGlass', null, null, '', '2019-03-17 19:01:22', '1');
INSERT INTO `sys_action_log` VALUES ('354', '用户密码', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'editPassword', 'sys_user', '2', '修改用户密码成功linln', '2019-03-17 19:02:48', '1');
INSERT INTO `sys_action_log` VALUES ('355', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '155', '添加菜单：班级分配', '2019-03-17 19:04:33', '1');
INSERT INTO `sys_action_log` VALUES ('356', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '156', '添加菜单：添加', '2019-03-17 19:05:45', '1');
INSERT INTO `sys_action_log` VALUES ('357', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '157', '添加菜单：编辑', '2019-03-17 19:06:23', '1');
INSERT INTO `sys_action_log` VALUES ('358', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '158', '添加菜单：详细', '2019-03-17 19:06:55', '1');
INSERT INTO `sys_action_log` VALUES ('359', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '159', '添加菜单：改变状态', '2019-03-17 19:07:26', '1');
INSERT INTO `sys_action_log` VALUES ('360', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '3', '角色授权成功：学生', '2019-03-17 19:09:41', '1');
INSERT INTO `sys_action_log` VALUES ('361', '用户密码', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'editPassword', 'sys_user', '3', '修改用户密码成功1001', '2019-03-17 19:10:01', '1');
INSERT INTO `sys_action_log` VALUES ('362', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:10:11', '3');
INSERT INTO `sys_action_log` VALUES ('363', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:15:11', '4');
INSERT INTO `sys_action_log` VALUES ('364', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:22:44', '1');
INSERT INTO `sys_action_log` VALUES ('365', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:31:12', '1');
INSERT INTO `sys_action_log` VALUES ('366', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:33:32', '1');
INSERT INTO `sys_action_log` VALUES ('367', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '2', '角色授权成功：教师', '2019-03-17 19:40:09', '1');
INSERT INTO `sys_action_log` VALUES ('368', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '3', '角色授权成功：学生', '2019-03-17 19:41:18', '1');
INSERT INTO `sys_action_log` VALUES ('369', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 19:42:32', '1');
INSERT INTO `sys_action_log` VALUES ('370', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '160', '添加菜单：成绩管理', '2019-03-17 20:21:13', '1');
INSERT INTO `sys_action_log` VALUES ('371', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '161', '添加菜单：添加', '2019-03-17 20:21:13', '1');
INSERT INTO `sys_action_log` VALUES ('372', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '162', '添加菜单：编辑', '2019-03-17 20:21:13', '1');
INSERT INTO `sys_action_log` VALUES ('373', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '163', '添加菜单：详细', '2019-03-17 20:21:13', '1');
INSERT INTO `sys_action_log` VALUES ('374', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '164', '添加菜单：改变状态', '2019-03-17 20:21:13', '1');
INSERT INTO `sys_action_log` VALUES ('375', '角色授权', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.RoleController', 'auth', 'sys_role', '1', '角色授权成功：管理员', '2019-03-17 20:21:13', '1');
INSERT INTO `sys_action_log` VALUES ('376', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 20:23:19', '1');
INSERT INTO `sys_action_log` VALUES ('377', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 21:11:09', '1');
INSERT INTO `sys_action_log` VALUES ('378', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 21:15:39', '1');
INSERT INTO `sys_action_log` VALUES ('379', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 21:20:05', '1');
INSERT INTO `sys_action_log` VALUES ('380', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 21:23:49', '1');
INSERT INTO `sys_action_log` VALUES ('381', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 21:27:22', '1');
INSERT INTO `sys_action_log` VALUES ('382', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 21:45:56', '1');
INSERT INTO `sys_action_log` VALUES ('383', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '1', '更新部门：学校', '2019-03-17 21:51:45', '1');
INSERT INTO `sys_action_log` VALUES ('384', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 22:13:54', '1');
INSERT INTO `sys_action_log` VALUES ('385', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '16', '添加部门：ces', '2019-03-17 22:16:09', '1');
INSERT INTO `sys_action_log` VALUES ('386', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 22:26:24', '1');
INSERT INTO `sys_action_log` VALUES ('387', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-03-17 22:28:31', '1');
INSERT INTO `sys_action_log` VALUES ('388', '部门状态', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'status', null, null, '删除ID：[16]', '2019-03-17 22:28:45', '1');

-- ----------------------------
-- Table structure for sys_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_course`;
CREATE TABLE `sys_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '系别',
  `name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `score` int(10) DEFAULT '0' COMMENT '学分',
  `course_time` varchar(255) DEFAULT NULL COMMENT '课程时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKdkwvv0rm6j3d5l6hwsy2dplol` (`create_by`),
  KEY `FKrouqqi3f2bgc5o83wdstlh6q4` (`update_by`),
  KEY `FKipeuwq315xuyxo08b7vakhv8l` (`dept_id`),
  CONSTRAINT `FKipeuwq315xuyxo08b7vakhv8l` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`),
  CONSTRAINT `sys_course_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `sys_course_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_course
-- ----------------------------
INSERT INTO `sys_course` VALUES ('5', '7', '计算机科学与技术', '4', '周一10:30到12:00; 周四14:00到17：30', '', '2019-03-17 16:36:28', '2019-03-17 17:58:11', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_course_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_course_user`;
CREATE TABLE `sys_course_user` (
  `course_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`course_id`,`user_id`),
  KEY `sys_course_user_ibfk_1` (`course_id`) USING BTREE,
  KEY `sys_course_user_ibfk_2` (`user_id`),
  CONSTRAINT `sys_course_user_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `sys_course` (`id`),
  CONSTRAINT `sys_course_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_course_user
-- ----------------------------
INSERT INTO `sys_course_user` VALUES ('5', '2');
INSERT INTO `sys_course_user` VALUES ('5', '4');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有父级编号',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKifwd1h4ciusl3nnxrpfpv316u` (`create_by`),
  KEY `FK83g45s1cjqqfpifhulqhv807m` (`update_by`),
  CONSTRAINT `FK83g45s1cjqqfpifhulqhv807m` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKifwd1h4ciusl3nnxrpfpv316u` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '学校', '0', '[0]', '1', '', '2018-12-02 17:41:23', '2019-03-17 21:51:45', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('2', '教务处', '1', '[0],[1]', '1', '', '2018-12-02 17:51:04', '2019-03-17 12:22:29', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('6', '电子系', '1', '[0],[1]', '2', '', '2019-03-17 12:25:10', '2019-03-17 12:25:10', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('7', '软件系', '1', '[0],[1]', '3', '', '2019-03-17 12:25:31', '2019-03-17 12:25:31', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('8', '网络系', '1', '[0],[1]', '4', '', '2019-03-17 12:25:48', '2019-03-17 12:25:48', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('9', '数码系', '1', '[0],[1]', '5', '', '2019-03-17 17:59:23', '2019-03-17 17:59:23', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('10', '游戏系', '1', '[0],[1]', '6', '', '2019-03-17 17:59:44', '2019-03-17 17:59:44', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('11', '管理系', '1', '[0],[1]', '7', '', '2019-03-17 17:59:53', '2019-03-17 17:59:53', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('12', '计算机系', '1', '[0],[1]', '8', '', '2019-03-17 18:00:11', '2019-03-17 18:00:11', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('13', '财会系', '1', '[0],[1]', '9', '', '2019-03-17 18:00:31', '2019-03-17 18:00:31', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('14', '国贸系', '1', '[0],[1]', '10', '', '2019-03-17 18:00:46', '2019-03-17 18:00:46', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('15', '外语系', '1', '[0],[1]', '11', '', '2019-03-17 18:00:55', '2019-03-17 18:00:55', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('16', 'ces', '2', '[0],[1],[2]', '1', '', '2019-03-17 22:16:09', '2019-03-17 22:28:45', '1', '1', '3');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '字典名称',
  `name` varchar(255) DEFAULT NULL COMMENT '字典键名',
  `type` tinyint(4) DEFAULT NULL COMMENT '字典类型',
  `value` text COMMENT '字典键值',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKag4shuprf2tjot9i1mhh37kk6` (`create_by`),
  KEY `FKoyng5jlifhsme0gc1lwiub0lr` (`update_by`),
  CONSTRAINT `FKag4shuprf2tjot9i1mhh37kk6` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKoyng5jlifhsme0gc1lwiub0lr` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('3', '数据状态', 'DATA_STATUS', '2', '1:正常,2:冻结,3:删除', '', '2018-10-05 16:03:11', '2018-10-05 16:11:41', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('5', '字典类型', 'DICT_TYPE', '2', '2:键值对', '', '2018-10-05 20:08:55', '2019-01-17 23:39:23', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('6', '用户性别', 'USER_SEX', '2', '1:男,2:女', '', '2018-10-05 20:12:32', '2018-10-05 20:12:32', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('7', '菜单类型', 'MENU_TYPE', '2', '1:一级菜单,2:子级菜单,3:不是菜单', '', '2018-10-05 20:24:57', '2018-10-13 13:56:05', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('8', '搜索栏状态', 'SEARCH_STATUS', '2', '1:正常,2:冻结', '', '2018-10-06 19:41:32', '2018-10-18 19:22:03', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('9', '日志类型', 'LOG_TYPE', '2', '1:业务,2:登录,3:系统', '', '2018-10-14 20:36:19', '2018-10-15 10:34:56', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `mime` varchar(255) DEFAULT NULL COMMENT 'MIME文件类型',
  `size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `md5` varchar(255) DEFAULT NULL COMMENT 'MD5值',
  `sha1` varchar(255) DEFAULT NULL COMMENT 'SHA1值',
  `create_by` bigint(20) DEFAULT NULL COMMENT '上传者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FKkkles8yp0a156p4247cc22ovn` (`create_by`),
  CONSTRAINT `FKkkles8yp0a156p4247cc22ovn` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('41', '44d8d8faf65b4b7a9d2addbceca04719.jpg', '/upload/picture/20181207/44d8d8faf65b4b7a9d2addbceca04719.jpg', 'image/jpeg', '20028', '89345293b4217b7abd4cb239cd6d9448', 'c7a1006fda886c6da001b2f4ddd4342cd3a791d9', '1', '2018-12-07 01:45:41');
INSERT INTO `sys_file` VALUES ('42', '8681f62fb5e9436794af274d733023cc.jpg', '/upload/picture/20181207/8681f62fb5e9436794af274d733023cc.jpg', 'image/jpeg', '15042', 'f2941f8bcb866c996c542c1f8660e8c2', '1d834f5e73c2224031fff1eb94d045123f6aa62c', '1', '2018-12-07 01:46:05');
INSERT INTO `sys_file` VALUES ('43', 'aeb7371e621f4cbaad4035ef06408e07.jpg', '/upload/picture/20181207/aeb7371e621f4cbaad4035ef06408e07.jpg', 'image/jpeg', '14920', '749f06cca25b497ed3778f23f8f86169', 'e44e13f21f2981970d8e991c154e7971c8646bfa', '1', '2018-12-07 01:49:27');
INSERT INTO `sys_file` VALUES ('44', '1f7767bff6dd4fe0ac4aa8720c6e5a47.png', '/upload/picture/20181207/1f7767bff6dd4fe0ac4aa8720c6e5a47.png', 'image/png', '60894', '4ea94eac706a4887a2e0aff362f73eaa', '67bb77f310341d31a9800c350f2d15396ffac3c3', '1', '2018-12-07 01:49:34');
INSERT INTO `sys_file` VALUES ('45', '7233fbd0dd374f7cb6fa5872a87029c0.jpg', '/upload/images/20181207/7233fbd0dd374f7cb6fa5872a87029c0.jpg', 'image/jpeg', '888414', '3d932ba207206df79d67cd2befe446d4', '50722998a3665eadec22bce30b0853123690dba9', '1', '2018-12-07 01:51:17');
INSERT INTO `sys_file` VALUES ('46', 'dfb2598b0f2e4a129b1379641697e5e9.jpg', '/upload/images/20181207/dfb2598b0f2e4a129b1379641697e5e9.jpg', 'image/jpeg', '611314', 'a8c0bdd497e602277c195afddadc42e0', '581a790cea7712364e2c65f392ccf568b3b00634', '1', '2018-12-07 01:56:30');
INSERT INTO `sys_file` VALUES ('47', 'd668556e88074a289815b63f019771e8.jpg', '/upload/images/20181207/d668556e88074a289815b63f019771e8.jpg', 'image/jpeg', '3210554', 'd0348f9fdc838345225893540d4f4c86', 'b8d9bb58d4e7425f0d36ee3c2775e48ae7f984ef', '1', '2018-12-07 01:56:30');
INSERT INTO `sys_file` VALUES ('48', 'a215c323e1e646838e52db4af824b6c0.jpg', '/upload/images/20181207/a215c323e1e646838e52db4af824b6c0.jpg', 'image/jpeg', '330100', '4d133d7ce8a80e2a823963ebf8d7ba8a', '492e52d205ca2a667cbd4ec78bf435fc68c63ad9', '1', '2018-12-07 02:08:33');
INSERT INTO `sys_file` VALUES ('49', 'd1e43304bf504597928229645b14326e.jpg', '/upload/images/20181207/d1e43304bf504597928229645b14326e.jpg', 'image/jpeg', '499979', '25ed5cc684fd6b589d409754978ff8ca', '25ec8df4753932ccd2b98c6d35a57474efe859f7', '1', '2018-12-07 02:08:41');
INSERT INTO `sys_file` VALUES ('50', '65db6654411e415894ddbbbe8c4330c7.jpg', '/upload/images/20181207/65db6654411e415894ddbbbe8c4330c7.jpg', 'image/jpeg', '74536', 'cc5b27b59e717a3a3334fda16489d1cd', '641f43dfce92cc19d771bdb8cceab1953a414927', '1', '2018-12-07 02:16:59');
INSERT INTO `sys_file` VALUES ('51', 'ad5d3b408c4149afa5af6accdbc85c0f.jpg', '/upload/images/20181207/ad5d3b408c4149afa5af6accdbc85c0f.jpg', 'image/jpeg', '106833', 'ae58c66eb37c46f97877ff9cac660b39', 'd640a7330ff78c06076d68af805110f314f94b4d', '1', '2018-12-07 02:17:01');
INSERT INTO `sys_file` VALUES ('52', '3c6d252aaad04936952cac7623274979.jpg', '/upload/images/20181207/3c6d252aaad04936952cac7623274979.jpg', 'image/jpeg', '1135181', 'b73e44a2a04f539b7bf6a7f12928989d', '5f5c1df60fb8ae309adf7512c06b4fa13103fde7', '1', '2018-12-07 02:19:31');

-- ----------------------------
-- Table structure for sys_glass
-- ----------------------------
DROP TABLE IF EXISTS `sys_glass`;
CREATE TABLE `sys_glass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `name` varchar(255) DEFAULT NULL COMMENT '编辑编号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKdkwvv0rm6j3d5l6hwsy2dplol` (`create_by`),
  KEY `FKrouqqi3f2bgc5o83wdstlh6q4` (`update_by`),
  CONSTRAINT `sys_glass_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `sys_glass_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_glass
-- ----------------------------
INSERT INTO `sys_glass` VALUES ('4', '15通信2班', '1001', '', '2019-03-17 14:49:36', '2019-03-17 18:51:57', '1', '1', '1');
INSERT INTO `sys_glass` VALUES ('5', '15计算机1班', '1002', '', '2019-03-17 18:52:18', '2019-03-17 18:52:18', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级编号',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有父级编号',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL地址',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型（1:一级菜单,2:子级菜单,3:不是菜单）',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKoxg2hi96yr9pf2m0stjomr3we` (`create_by`),
  KEY `FKsiko0qcr8ddamvrxf1tk4opgc` (`update_by`),
  CONSTRAINT `FKoxg2hi96yr9pf2m0stjomr3we` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKsiko0qcr8ddamvrxf1tk4opgc` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '菜单管理', '2', '[0],[2]', '/menu/index', '', '2', '3', '', '2018-09-29 00:02:10', '2018-11-13 21:48:58', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '0', '[0]', '#', 'fa fa-cog', '1', '2', '', '2018-09-29 00:05:50', '2019-03-17 10:58:54', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '添加', '1', '[0],[2],[1]', '/menu/add', null, '3', '1', null, '2018-09-29 00:06:57', '2018-09-29 00:06:59', '1', null, '1');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '[0],[2]', '/role/index', '', '2', '2', '', '2018-09-29 00:08:14', '2018-11-13 21:48:58', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('5', '添加', '4', '[0],[2],[4]', '/role/add', null, '3', '1', null, '2018-09-29 00:09:04', '2018-09-29 00:09:09', null, null, '1');
INSERT INTO `sys_menu` VALUES ('6', '主页', '0', '[0]', '/index', 'layui-icon layui-icon-home', '1', '1', '', '2018-09-29 00:09:56', '2019-03-17 10:58:54', null, '1', '1');
INSERT INTO `sys_menu` VALUES ('7', '用户管理', '2', '[0],[2]', '/user/index', '', '2', '1', '', '2018-09-29 00:43:50', '2018-11-13 21:48:58', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('8', '编辑', '1', '[0],[2],[1]', '/menu/edit', null, '3', '2', null, '2018-09-29 00:57:33', '2018-09-29 00:57:38', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '详细', '1', '[0],[2],[1]', '/menu/detail', '', '3', '3', '', '2018-09-29 01:03:00', '2018-09-29 01:03:00', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('10', '修改状态', '1', '[0],[2],[1]', '/menu/status', '', '3', '4', '', '2018-09-29 01:03:43', '2018-09-29 01:03:43', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('11', '编辑', '4', '[0],[2],[4]', '/role/edit', '', '3', '2', '', '2018-09-29 01:06:13', '2018-09-29 01:06:13', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('12', '授权', '4', '[0],[2],[4]', '/role/auth', '', '3', '3', '', '2018-09-29 01:06:57', '2018-09-29 01:06:57', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('13', '详细', '4', '[0],[2],[4]', '/role/detail', '', '3', '4', '', '2018-09-29 01:08:00', '2018-09-29 01:08:00', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('14', '修改状态', '4', '[0],[2],[4]', '/role/status', '', '3', '5', '', '2018-09-29 01:08:22', '2018-09-29 01:08:22', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('15', '编辑', '7', '[0],[2],[7]', '/user/edit', '', '3', '2', '', '2018-09-29 21:17:17', '2018-09-29 21:17:17', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('16', '添加', '7', '[0],[2],[7]', '/user/add', '', '3', '1', '', '2018-09-29 21:17:58', '2018-09-29 21:17:58', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('17', '修改密码', '7', '[0],[2],[7]', '/user/pwd', '', '3', '3', '', '2018-09-29 21:19:40', '2018-09-29 21:19:40', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('18', '权限分配', '7', '[0],[2],[7]', '/user/role', '', '3', '4', '', '2018-09-29 21:20:35', '2018-09-29 21:20:35', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('19', '详细', '7', '[0],[2],[7]', '/user/detail', '', '3', '5', '', '2018-09-29 21:21:00', '2018-09-29 21:21:00', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('20', '修改状态', '7', '[0],[2],[7]', '/user/status', '', '3', '6', '', '2018-09-29 21:21:18', '2018-09-29 21:21:18', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('21', '字典管理', '2', '[0],[2]', '/dict/index', '', '2', '5', '', '2018-10-05 00:55:52', '2019-03-17 10:57:47', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('22', '字典添加', '21', '[0],[2],[21]', '/dict/add', '', '3', '1', '', '2018-10-05 00:56:26', '2019-03-17 10:57:47', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('23', '字典编辑', '21', '[0],[2],[21]', '/dict/edit', '', '3', '2', '', '2018-10-05 00:57:08', '2019-03-17 10:57:47', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('24', '字典详细', '21', '[0],[2],[21]', '/dict/detail', '', '3', '3', '', '2018-10-05 00:57:42', '2019-03-17 10:57:47', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('25', '修改状态', '21', '[0],[2],[21]', '/dict/status', '', '3', '4', '', '2018-10-05 00:58:27', '2019-03-17 10:57:47', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('26', '行为日志', '2', '[0],[2]', '/actionLog/index', '', '2', '6', '', '2018-10-14 16:52:01', '2019-03-17 10:57:52', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('27', '日志详细', '26', '[0],[2],[26]', '/actionLog/detail', '', '3', '1', '', '2018-10-14 21:07:11', '2019-03-17 10:57:52', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('28', '日志删除', '26', '[0],[2],[26]', '/actionLog/delete', '', '3', '2', '', '2018-10-14 21:08:17', '2019-03-17 10:57:52', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('30', '开发设置', '0', '[0]', '#', 'fa fa-gavel', '1', '3', '', '2018-10-19 16:38:23', '2019-03-17 10:58:54', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('31', '代码生成', '30', '[0],[30]', '/code/index', '', '2', '1', '', '2018-10-19 16:39:04', '2018-11-10 19:34:42', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('125', '表单构建', '30', '[0],[30]', '/dev/build', '', '2', '2', '表单构建工具', '2018-11-25 16:12:23', '2018-11-25 16:12:23', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('136', '系别管理', '2', '[0],[2]', '/dept/index', '', '2', '4', '', '2018-12-02 16:33:23', '2019-03-17 13:40:15', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('137', '添加', '136', '[0],[2],[136]', '/dept/add', '', '3', '1', '', '2018-12-02 16:33:23', '2018-12-02 16:38:37', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('138', '编辑', '136', '[0],[2],[136]', '/dept/edit', null, '3', '2', null, '2018-12-02 16:33:23', '2018-12-02 16:38:37', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('139', '详细', '136', '[0],[2],[136]', '/dept/detail', null, '3', '3', null, '2018-12-02 16:33:23', '2018-12-02 16:38:37', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('140', '改变状态', '136', '[0],[2],[136]', '/dept/status', null, '3', '4', null, '2018-12-02 16:33:23', '2018-12-02 16:38:37', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('141', '三级目录', '26', '[0],[2],[26]', '/actionLog/index', '', '2', '3', '', '2018-12-05 16:42:43', '2018-12-05 18:06:44', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('142', '按钮1', '141', '[0],[2],[26],[141]', 'client/add', '', '3', '1', '', '2018-12-05 16:44:45', '2018-12-05 18:06:44', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('143', '按钮2', '141', '[0],[2],[26],[141]', '/wuwu', 'wuwu-icon', '3', '2', '', '2018-12-05 16:50:23', '2018-12-05 18:06:44', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('144', '三级目录2', '26', '[0],[2],[26]', '/wuwu2', '', '2', '4', '', '2018-12-05 17:57:18', '2018-12-05 18:06:52', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('145', '城建', '26', '[0],[2],[26]', '#', 'fa fa-gavel', '2', '3', '', '2018-12-05 19:40:11', '2018-12-05 19:40:54', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('146', '数据接口', '30', '[0],[30]', '/dev/swagger', '', '2', '3', '', '2018-12-09 21:11:11', '2018-12-09 21:11:11', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('147', '字典管理', '30', '[0],[30]', '/dict/index', '', '2', '4', '', '2019-03-17 10:56:48', '2019-03-17 10:56:48', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('148', '行为日志', '30', '[0],[30]', '/actionLog/index', '', '2', '5', '', '2019-03-17 10:57:26', '2019-03-17 10:57:26', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('149', '班级管理', '2', '[0],[2]', '/glass/index', '', '2', '5', '', '2019-03-17 14:37:38', '2019-03-17 14:37:38', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('150', '课程管理', '2', '[0],[2]', '/course/index', null, '2', '7', null, '2019-03-17 15:11:26', '2019-03-17 20:21:13', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('151', '添加', '150', '[0],[2],[150]', '/course/add', null, '3', '4', null, '2019-03-17 15:11:27', '2019-03-17 15:11:27', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('152', '编辑', '150', '[0],[2],[150]', '/course/edit', null, '3', '1', null, '2019-03-17 15:11:27', '2019-03-17 15:11:27', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('153', '详细', '150', '[0],[2],[150]', '/course/detail', null, '3', '2', null, '2019-03-17 15:11:27', '2019-03-17 15:11:27', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('154', '改变状态', '150', '[0],[2],[150]', '/course/status', null, '3', '3', null, '2019-03-17 15:11:27', '2019-03-17 15:11:27', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('155', '班级分配', '7', '[0],[2],[7]', '/user/glass', '', '3', '7', '', '2019-03-17 19:04:33', '2019-03-17 19:04:33', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('156', '添加', '149', '[0],[2],[149]', '/glass/add', '', '3', '1', '', '2019-03-17 19:05:45', '2019-03-17 19:05:45', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('157', '编辑', '149', '[0],[2],[149]', '/glass/edit', '', '3', '2', '', '2019-03-17 19:06:23', '2019-03-17 19:06:23', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('158', '详细', '149', '[0],[2],[149]', '/glass/detail', '', '3', '3', '', '2019-03-17 19:06:55', '2019-03-17 19:06:55', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('159', '改变状态', '149', '[0],[2],[149]', '/glass/status', '', '3', '4', '', '2019-03-17 19:07:26', '2019-03-17 19:07:26', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('160', '成绩管理', '2', '[0],[2]', '/score/index', null, '2', '6', null, '2019-03-17 20:21:13', '2019-03-17 20:21:13', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('161', '添加', '160', '[0],[2],[160]', '/score/add', null, '3', '4', null, '2019-03-17 20:21:13', '2019-03-17 20:21:13', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('162', '编辑', '160', '[0],[2],[160]', '/score/edit', null, '3', '1', null, '2019-03-17 20:21:13', '2019-03-17 20:21:13', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('163', '详细', '160', '[0],[2],[160]', '/score/detail', null, '3', '2', null, '2019-03-17 20:21:13', '2019-03-17 20:21:13', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('164', '改变状态', '160', '[0],[2],[160]', '/score/status', null, '3', '3', null, '2019-03-17 20:21:13', '2019-03-17 20:21:13', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '角色名称（中文名）',
  `name` varchar(255) DEFAULT NULL COMMENT '标识名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKdkwvv0rm6j3d5l6hwsy2dplol` (`create_by`),
  KEY `FKrouqqi3f2bgc5o83wdstlh6q4` (`update_by`),
  CONSTRAINT `FKdkwvv0rm6j3d5l6hwsy2dplol` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKrouqqi3f2bgc5o83wdstlh6q4` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '', '2019-03-29 00:12:40', '2019-03-17 20:21:13', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('2', '教师', 'teacher', '', '2019-03-29 00:12:40', '2019-03-17 19:40:09', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('3', '学生', 'student', '', '2019-03-29 00:12:40', '2019-03-17 19:41:18', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FKf3mud4qoc7ayew8nml4plkevo` (`menu_id`),
  CONSTRAINT `FKf3mud4qoc7ayew8nml4plkevo` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`),
  CONSTRAINT `FKkeitxsgxwayackgqllio4ohn5` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '125');
INSERT INTO `sys_role_menu` VALUES ('1', '136');
INSERT INTO `sys_role_menu` VALUES ('1', '137');
INSERT INTO `sys_role_menu` VALUES ('1', '138');
INSERT INTO `sys_role_menu` VALUES ('1', '139');
INSERT INTO `sys_role_menu` VALUES ('1', '140');
INSERT INTO `sys_role_menu` VALUES ('1', '146');
INSERT INTO `sys_role_menu` VALUES ('1', '147');
INSERT INTO `sys_role_menu` VALUES ('1', '148');
INSERT INTO `sys_role_menu` VALUES ('1', '149');
INSERT INTO `sys_role_menu` VALUES ('2', '149');
INSERT INTO `sys_role_menu` VALUES ('1', '150');
INSERT INTO `sys_role_menu` VALUES ('2', '150');
INSERT INTO `sys_role_menu` VALUES ('3', '150');
INSERT INTO `sys_role_menu` VALUES ('1', '151');
INSERT INTO `sys_role_menu` VALUES ('1', '152');
INSERT INTO `sys_role_menu` VALUES ('1', '153');
INSERT INTO `sys_role_menu` VALUES ('2', '153');
INSERT INTO `sys_role_menu` VALUES ('3', '153');
INSERT INTO `sys_role_menu` VALUES ('1', '154');
INSERT INTO `sys_role_menu` VALUES ('2', '155');
INSERT INTO `sys_role_menu` VALUES ('2', '158');
INSERT INTO `sys_role_menu` VALUES ('1', '160');
INSERT INTO `sys_role_menu` VALUES ('1', '161');
INSERT INTO `sys_role_menu` VALUES ('1', '162');
INSERT INTO `sys_role_menu` VALUES ('1', '163');
INSERT INTO `sys_role_menu` VALUES ('1', '164');

-- ----------------------------
-- Table structure for sys_score
-- ----------------------------
DROP TABLE IF EXISTS `sys_score`;
CREATE TABLE `sys_score` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '学生名称',
  `course_id` bigint(20) DEFAULT NULL COMMENT '课程名称',
  `score` int(10) DEFAULT '0' COMMENT '学业基础分',
  `behavior_score` int(10) DEFAULT '0' COMMENT '行为基础分',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `index_create_by` (`create_by`) USING BTREE,
  KEY `index_update_by` (`update_by`) USING BTREE,
  KEY `FK4bwh56e7tg408nu77wc8kbc6m` (`user_id`),
  KEY `index_course_id11` (`course_id`) USING BTREE,
  CONSTRAINT `FK4bwh56e7tg408nu77wc8kbc6m` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `index_course_id11` FOREIGN KEY (`course_id`) REFERENCES `sys_course` (`id`),
  CONSTRAINT `index_create_by` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `index_update_by` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_score
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) DEFAULT NULL COMMENT '密码盐',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `picture` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别（1:男,2:女）',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `is_role` tinyint(4) DEFAULT NULL COMMENT '是否拥有角色',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKb3pkx0wbo6o8i8lj0gxr37v1n` (`dept_id`),
  CONSTRAINT `FKb3pkx0wbo6o8i8lj0gxr37v1n` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '管理员', '673b87294c3fc7978cba2faf4599bcad176c223b5b15dffd9cfb196c4aad2bae', 'UW7TsX', '2', null, '1', '10086@163.com', '10086', '1', '', '2019-03-17 13:22:13', '2019-03-17 14:24:07', '1');
INSERT INTO `sys_user` VALUES ('2', 'linln', '张三', 'a289208df2024f64355fc9f05ffc83198cc87e07d4e45c024c85b91155da351d', '8YD0KM', '6', null, '1', '10086@qq.com', '10086', '1', '啦啦啦啦啦啦啦', '2019-03-17 13:22:13', '2019-03-17 19:02:48', '1');
INSERT INTO `sys_user` VALUES ('3', '1001', '学生002', 'dc0d15291dd35975156cc95e1619888f3aacef71ea7eaa4cfc8055df9c16ef69', 'V4GEVk', '7', null, '1', '12231231@qq.com', '15845678910', '1', '', '2019-03-17 14:22:18', '2019-03-17 19:10:01', '1');
INSERT INTO `sys_user` VALUES ('4', '1002', '李四', '7bcabf3a1885331371b99574c4862d84e10bab5fd953539484374874a2b1821b', 'DaeBic', '7', null, '1', '12231231@qq.com', '15845678910', '1', '', '2019-03-17 17:33:22', '2019-03-17 18:50:06', '1');

-- ----------------------------
-- Table structure for sys_user_glass
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_glass`;
CREATE TABLE `sys_user_glass` (
  `user_id` bigint(20) NOT NULL,
  `glass_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`glass_id`),
  KEY `sys_user_glass_ibfk_1` (`glass_id`) USING BTREE,
  KEY `sys_user_glass_ibfk_2` (`user_id`) USING BTREE,
  CONSTRAINT `sys_user_glass_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `sys_user_glass_ibfk_2` FOREIGN KEY (`glass_id`) REFERENCES `sys_glass` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_glass
-- ----------------------------
INSERT INTO `sys_user_glass` VALUES ('2', '4');
INSERT INTO `sys_user_glass` VALUES ('3', '4');
INSERT INTO `sys_user_glass` VALUES ('2', '5');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKhh52n8vd4ny9ff4x9fb8v65qx` (`role_id`),
  CONSTRAINT `FKb40xxfch70f5qnyfw8yme1n1s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKhh52n8vd4ny9ff4x9fb8v65qx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('3', '3');