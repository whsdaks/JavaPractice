<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta property="qc:admins" content="3020656377612414137646375711277">
        <title>博思教师辅助系统-主页</title><meta name="keywords">
        <link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="layui/css/register.css"/>
        <style>
            .bs{
                width: auto;
                height: 1339px;
                margin: 0 auto;
                background-color: #FFF;
            }
            .banner{
                height: 100px;
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
                height: 1000px;
            }
            .left{
                height: 1000px;
                width: 200px;
                background-color: #f93;
                float: left;
            }
            .left a{
                left: center;
                margin: 50px;
            }
            .right{
                height:100%;
                width: 100%;
                /* background-color: #CCFF66; */
                float: right;         
                margin-left: 3px;
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
                                     
                    <div id="darkbannerwrap"></div>
            <form class="layui-form" style="margin-left:40%;"action="saveCourse1">
			        <div class="layui-form-item">
			            <label class="layui-form-label">课程名称：</label>
			            <div class="layui-input-block">
			                <input type="text" class="input_text" id="c_name" placeholder="请输入课程名称" 
			                name="name" autocomplete="off" lay-verify="required|name">
			            </div>
			        </div>
			        <div class="layui-form-item">
			            <label class="layui-form-label">班级：</label>
			            <div class="layui-input-block">
			                <input type="text" class="input_text" id="teacher" placeholder="请输入班级名称" 
			                name="grade" lay-verify="required|identity">
			            </div>
			        </div>
			        <div class="layui-form-item">
		            <label class="layui-form-label">教室：</label>
		            <div class="layui-input-block">
		                <input type="text" class="input_text" id="classroom" placeholder="请输入教室号" 
		                name="classroom" lay-verify="required|phone" oninput="value=value.replace(/[^\d]/g,'')">
		            </div>
		        </div>
		        
		            <label class="layui-form-label">课程类型：</label>
		            <div class="layui-input-block" style="width:354px">
		            
		            </div>
		       
		        <div class="layui-form-item">
		            <label class="layui-form-label">总课时：</label>
		            <div class="layui-input-block">
		                <input type="number" class="input_text" id="total_hours" placeholder="请输入课程总课时" 
		                name="totalHours" lay-verify="required|identity">
		            </div>
		        </div>
		        <div class="layui-form-item">
		            <label class="layui-form-label">教师：</label>
		            <div class="layui-input-block">
		                <input type="text" class="input_text" id="teacher" placeholder="请输入该课程任课老师" 
		                name="teacher" lay-verify="required|identity">
		            </div>
		        </div>
		        <div class="layui-form-item">
		            <label class="layui-form-label">助教：</label>
		            <div class="layui-input-block">
		                <input type="text" class="input_text" id="assistant" placeholder="请输入该课程助教老师" 
		                name="assistant" lay-verify="required|identity">
		            </div>
		        </div>
		        <button type="submit" class="layui-btn layui-btn-radius layui-btn-normal" 
		        style="margin-left:100px;">下一步</button>
        </form>
        	
                </div>
            
        
    </body>
    <script type="text/javascript">
        function getnext(i){
        	alert(i);
          var sz=new Array("step1");
          for(var j=0;j<sz.length;j++){
            if(i==sz[j]){
              document.getElementById(i).style.display="block";
            }else{
              document.getElementById(sz[j]).style.display="none";
            }
          }
        }
        </script>
</html>