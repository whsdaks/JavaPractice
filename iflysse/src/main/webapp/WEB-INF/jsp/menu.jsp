<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta property="qc:admins" content="3020656377612414137646375711277">
        <title>博思教师辅助系统-主页</title><meta name="keywords">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
		<!--  <link rel="stylesheet" type="text/css" href="layui/css/main.css"/> -->  
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		
		 <link rel="stylesheet" type="text/css" href="layui/css/menus.css"/> 
        <style>
            /* .bs{
                width: auto;
                height: 1339px;
                margin: 0 auto;
                background-color: #FFF;
            }
            .banner{
                height: 100px;
                width: auto;
                background: rgb(189, 19, 175);
            } */
            /* .banner h1{
                text-align: center;
                padding-top: 20px;
            } */
            /* .menu{
                height: 50px;
                line-height: 50px;
                background-color: #bbb;
            } */
            .headline{
            	height:10px;
            	width:auto;
            	color:#fff;
            	font-size:30px;
            	margin-top:20px;
            	font-family:'LiSu';
            }
             .main{
                height: 100%;
            } 
            .left{
                height: 89%;
                width: auto;
                background-color: #f93;               
                float: left;
                margin-top:80px;
            }
             /* .left a{
                left: center;
                margin: 50px;
            }  */
            .right{
                height: 75%;
                width: 85%;
                /* background-color: #CCFF66; */
                float: left;              
                margin-left: 3px;
                margin-top: 80px;
                border: none;
            }
            .my_form{
                text-align: center;
            }
            /* .menu a{
                left: center;
                margin: 50px;
               
            } */
            body,html{height:100%}
            
        </style>
    </head>
    <body>
<div class="main">
      
		 <nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
					data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					 <div class="headline">
					 	<p >博 思 教 师 辅 助 平 台</p>
					</div>
					  <ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">
							${loginUser.username}
							<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/profile">退出</a></li>
								</ul>
						</li>
					</ul>  
					
				<!-- /.nav-collapse -->
			</div>
		</nav> 
		
            <div class="menu">
                
            </div>
            
                <div class="left">
                    
                    <div class="menus">

    <div id="menu_title1" class="menu_title" onclick="openMenu(this)">
        我的控制台
        <div class="indicator" id="indicator1">^</div>
    </div>
    <div class="menu" id="menu1">
         <div class="item">
            <a href="#">完善个人信息</a>
        </div> 
         <li class="item_divider"></li> 
        <div class="item">
            <a href="#">查看个人信息</a>
        </div>
        <li class="item_divider"></li>
        <div class="item">
            <a href="updatePassword">修改密码</a>
        </div>
        <li class="item_divider"></li>
        <div class="item">
            <a href="#">Item4</a>
        </div>
    </div>

    <li class="menu_divider"></li>

    <div id="menu_title2" class="menu_title" onclick="openMenu(this)">
        课表管理
        <div class="indicator" id="indicator2">^</div>
    </div>
    <div class="menu" id="menu2">
        <div class="item">
            <a href="addCourseStep1" target="right">填写课表</a>
        </div>
        <li class="item_divider"></li>
        <div class="item">
            <a href="#">查看课表</a>
        </div>
    </div>

    <li class="menu_divider"></li>
    <div id="menu_title3" class="menu_title" onclick="openMenu(this)">
        周报管理
        <div class="indicator" id="indicator3">^</div>
    </div>
    <div class="menu" id="menu3">
        <div class="item">
            <a href="add_kc">填写周报</a>
        </div>
        <li class="item_divider"></li>
        <div class="item">
            <a href="#">查看周报</a>
        </div>
    </div>

    <li class="menu_divider"></li>

    <div id="menu_title4" class="menu_title" onclick="openMenu(this)">
        系统管理
        <div class="indicator" id="indicator4">^</div>
    </div>
    <div class="menu" id="menu4">
        <div class="item">
            <a href="#">用户管理</a>
        </div>
        <li class="item_divider"></li>
        <div class="item">
            <a href="#">角色管理</a>
        </div>
       
        <li class="item_divider"></li>
        <div class="item">
            <a href="#">学期设置</a>
        </div>
    </div>
</div>  
</div>
<div class="right">
	<iframe name="right" width="100%" height="100%" style="border: none;"></iframe>
</div>
           
            
        <div class="footer"></div>
        </div>
        <script type="text/javascript">
var itemHeight = 40;
var dividerHeight = 1;

function openMenu(obj) {
    menuTitleId = obj.id;
    menuId = "menu" + menuTitleId.substring(10);
    indicatorId = "indicator" + menuTitleId.substring(10);

    menu = document.getElementById(menuId);
    indicator = document.getElementById(indicatorId);
    height = menu.style.height;

    if (height == "0px" || height == "") {
        childAmount = menu.getElementsByTagName('div').length;
        dividerAmount = menu.getElementsByTagName('li').length;
        height = childAmount * itemHeight + dividerAmount * dividerHeight;
        menu.style.height = height + "px";
        indicator.style.transform = "rotate(180deg)";
    } else {
        menu.style.height = "0px";
        indicator.style.transform = "rotate(0deg)";
    }
}
</script>
    </body>
</html>