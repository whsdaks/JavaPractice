package com.iflysse.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.iflysse.bean.Course;
@Mapper
public interface CourseDao {

	@Select("select * from bs_course where id=#{id}")
	public Course getCourseById(Integer id);
	
	@Select("select * from bs_course where name=#{name}")
	public Course getCourseByName(String name);

	@Insert("insert into bs_course(id, name, type, teacher, grade, assistant, total_hours) values"
			+ "(#{id}, #{name}, #{type}, #{teacher},#{grade},#{assistant},#{totalHours})")
	public void insertCourse1(Course course);

	@Update("update bs_course set start_time=#{startTime}, end_time=#{endTime},"
			+"week=#{week}, class_num=#{classNum}, classroom=#{classroom} where id=#{id}")
	public void insertCourse2(Course course);
	
	@Update("update bs_course set content=#{content}, objective=#{objective},"
			+"homework=#{homework}, mode=#{mode} where id=#{id}")
	public void insertCourse3(Course course);
	
}
