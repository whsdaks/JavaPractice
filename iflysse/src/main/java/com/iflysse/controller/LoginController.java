package com.iflysse.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iflysse.bean.User;
import com.iflysse.dao.UserDao;;

@Controller
public class LoginController {
	@Autowired
	private UserDao userDao;

	/* 首页 */
	@RequestMapping("/index")
	public String index() {	
		return "index";
	}

	/* 登录页 */
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	/* 登录页 */
	@RequestMapping("/loginCheck")
	public String loginCheck(User user, HttpServletRequest request, HttpSession session) {
		//根据用户名去数据库查找用户
				User dbUser = userDao.getUserByUsername(user.getUsername());
				
				//用户名不存在，或者密码错误
				if(dbUser == null 
						|| !dbUser.getPassword().equals(user.getPassword())) {
					
					System.out.println("用户名或密码错误！");
					return "login";
				}
				
				request.setAttribute("user", user);
				
				//登录用户的信息放入session中
				session.setAttribute("loginUser", dbUser);
				
				//统计登录人数
				ServletContext application = request.getServletContext();
				int online = application.getAttribute("online") == null ? 0 : (int)application.getAttribute("online");
				application.setAttribute("online", online + 1);

				
				return "redirect:/menu";
	}
	

	
}
