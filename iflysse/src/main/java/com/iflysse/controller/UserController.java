package com.iflysse.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iflysse.bean.User;
import com.iflysse.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;  //有Service以后，Dao就不要注入了
	
	/* 注册页 */
	@RequestMapping("signUp")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping("signUp_save")
	public String singUpSave(User user) {
		
		//根据用户名查找用户
		User dbUser = userDao.getUserByUsername(user.getUsername());
		//判断如果用户已存在，则报错
		if(dbUser != null) {
			System.out.println("该用户名已被占用");
			return "error/400";
		}
		
		user.setType(1);
		userDao.insertUser(user);
		
		return "redirect:/bs_login";
	}
	
	/* 修改密码页 */
	@RequestMapping("updatePassword")
	public String new_pwd() {
		
		return "new_pwd";
	}
	
	/* 修改密码页 */
	@RequestMapping("savePassword")
	public String save_pwd(Integer id, String password, HttpServletRequest request) {
		//User dbUser = userDao.getUserByUsername(user.getUsername());
		
		userDao.updatePassword(id,password);
		return "redirect:/menu";
	}
	
	
	
	/* 菜单栏页 */
	@RequestMapping("menu")
	public String menu(Integer id, HttpServletRequest request) {
		
		User user = userDao.getUserById(id);
		request.setAttribute("user", user);
		
		return "menu";
	}
	
	
	
	
}
