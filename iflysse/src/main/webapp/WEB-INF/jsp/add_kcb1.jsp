<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta property="qc:admins" content="3020656377612414137646375711277">
        <title>博思教师辅助系统-主页</title><meta name="keywords">
        <link rel="stylesheet" type="text/css" href="layui/css/layui.css" /> 
        <style>
            .bs{
                width: auto;
                height: auto;
                margin: 0 auto;
                background-color: #FFF;
            }
            .banner{
                height: auto;
                width: auto;
                background: rgb(189, 19, 175); 
            }
            .banner h1{
                text-align: center;
                padding-top: 20px;
            }
            /* .menu{
                height: 50px;
                line-height: 50px;
                background-color: #bbb;
            } */
            .main{
                height: 100%;
            }
                 
            .right{
                height: 100%;
                width: 100%;
                /* background-color: #CCFF66; */
                float: left;
                margin-top: 5px; 
                border: none;
            }
            
             .my_form{
                text-align: center;
            } 
              .right input{
                height: 30px;
            } 
            
            .right select{
                height: 30px;
            } 
            .menu a{
                left: center;
                margin: 50px;
               
            }
            
        </style>
    </head>
    <body>
                <div class="right">
        <form class="layui-form" style="width:700px;margin-top:5%;margin-left:5%"
        action="saveCourse3" lay-filter="example">
        <!-- 课程内容 -->
  		<div class="layui-form-item layui-form-text">  
	    <label class="layui-form-label">课程内容：</label>
	    <div class="layui-input-block">
	      <textarea placeholder="请输入内容" class="layui-textarea" name="content"></textarea>
	    </div>
	  </div>
	  <!-- 课程目标 -->
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">课程目标：</label>
	    <div class="layui-input-block">
	      <textarea placeholder="请输入内容" class="layui-textarea" name="objective"></textarea>
	    </div>
	  </div>
  		<!-- 作业 -->
	  <div class="layui-form-item">
    <label class="layui-form-label">单选框</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="男" title="男">
      <input type="radio" name="sex" value="女" title="女" checked>
    </div>
  </div>
	  	<button type="submit" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">完成</button>	
	  </form>
	   </div>
    </body>
</html>