package com.iflysse.bean;


public class Course {

	private Integer id; //课程ID
	private String name;  //课程名
	private String teacher; //上课老师
	private String type; //课程类型
	private String mode; //课程模式
	private String classroom; //上课教室
	private Integer startTime; //开始周
	private Integer endTime; //结束周
	private Integer week; //星期几
	private String classNum; //第几节
	private String grade; //上课班级
	private String assistant; //助教
	private String objective; //教学目的
	private String content; //教学内容
	private String homework; //有无作业
	private Integer totalHours; //总学时
	
	
	public Course(Integer id, String name, String teacher, String type, String mode, String classroom,
			Integer startTime, Integer endTime, Integer week, String classNum, String grade, String assistant,
			String objective, String content, String homework, Integer totalHours) {
		super();
		this.id = id;
		this.name = name;
		this.teacher = teacher;
		this.type = type;
		this.mode = mode;
		this.classroom = classroom;
		this.startTime = startTime;
		this.endTime = endTime;
		this.week = week;
		this.classNum = classNum;
		this.grade = grade;
		this.assistant = assistant;
		this.objective = objective;
		this.content = content;
		this.homework = homework;
		this.totalHours = totalHours;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getTeacher() {
		return teacher;
	}


	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getMode() {
		return mode;
	}


	public void setMode(String mode) {
		this.mode = mode;
	}


	public String getClassroom() {
		return classroom;
	}


	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}


	public Integer getStartTime() {
		return startTime;
	}


	public void setStartTime(Integer startTime) {
		this.startTime = startTime;
	}


	public Integer getEndTime() {
		return endTime;
	}


	public void setEndTime(Integer endTime) {
		this.endTime = endTime;
	}


	public Integer getWeek() {
		return week;
	}


	public void setWeek(Integer week) {
		this.week = week;
	}


	public String getClassNum() {
		return classNum;
	}


	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}


	public String getGrade() {
		return grade;
	}


	public void setGrade(String grade) {
		this.grade = grade;
	}


	public String getAssistant() {
		return assistant;
	}


	public void setAssistant(String assistant) {
		this.assistant = assistant;
	}


	public String getObjective() {
		return objective;
	}


	public void setObjective(String objective) {
		this.objective = objective;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getHomework() {
		return homework;
	}


	public void setHomework(String homework) {
		this.homework = homework;
	}


	public Integer getTotalHours() {
		return totalHours;
	}


	public void setTotalHours(Integer totalHours) {
		this.totalHours = totalHours;
	}
	
	
	
	
	
}
