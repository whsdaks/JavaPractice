package com.iflysse.bean;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class User {

	private Integer id; //用户ID
	
	@NotBlank
	@Size(min=6, max=16)
	private String username;  //登录名
	
	private String password; //密码
	private Integer type; //用户类型
	
	
	
	
	public User(Integer id,String username, String password, Integer type) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.type = type;
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
	
	
}
