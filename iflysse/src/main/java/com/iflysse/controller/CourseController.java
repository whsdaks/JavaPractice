package com.iflysse.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iflysse.bean.Course;
import com.iflysse.dao.CourseDao;

@Controller
public class CourseController {

	@Autowired
	private CourseDao courseDao;

	
	
	/* 添加课表页 */
	@RequestMapping("addCourseStep1")
	public String kc() {
		return "add_kcb";
	}
	
	/* 添加课程时间 */
	@RequestMapping("/classTime")
	public String addClassTime() {	
		return "classTime";
	}

	/* 添加课程说明页 */
	@RequestMapping("addCourseStep2")
	public String home() {
		return "add_kcb1";
	}
	
	/* 添加课程页 */
	@RequestMapping("saveCourse1")
	public String saveCourse1(Course course,HttpServletRequest request) {
		courseDao.insertCourse1(course);
		request.setAttribute("course", course);
		return "classTime";
	}
	@RequestMapping("saveCourse2")
	public String saveCourse2(Course course) {
		System.out.println(course.getId());
		courseDao.insertCourse2(course);
		return "add_kcb1";
	}
	
	@RequestMapping("saveCourse3")
	public String saveCourse3(Course course) {
		System.out.println(course.getId());
		courseDao.insertCourse3(course);
		return "add_kcb";
	}
	
	/* 查看课表页 */
	@RequestMapping("courseList")
	public String courseList() {
		return "courseList";
	}


	
	
}
