package com.iflysse.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.iflysse.bean.User;
@Mapper
public interface UserDao {
	
	@Select("select * from bs_user where id=#{id}")
	public User getUserById(Integer id);
	
	@Select("select * from bs_user where username=#{username}")
	public User getUserByUsername(String username);

	@Insert("insert into bs_user(id, username, password, type) values(#{id}, #{username}, #{password}, #{type})")
	public void insertUser(User user);
	
	@Update("update bs_user set password=#{password} where id=#{id}")
	public void updatePassword(Integer id,String password);
	
	
}
