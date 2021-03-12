<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BS_login</title>

<link rel="stylesheet" href="../layui/css/loginStyle.css">
<style>
.signup {
margin-top: 10px;
width:auto;
height:40px;
background:lightgreen;
text-align: center;
transition:width 0.5s;
-moz-transition:width 0.5s; /* Firefox 4 */
-webkit-transition:width 0.5s; /* Safari and Chrome */
-o-transition:width 0.5s; /* Opera */
}
.signup:hover
{
width:65px;
}
.forget {
margin-top: 10px;
width:auto;
height:40px;
background:goldenrod;
text-align: center;
transition:width 0.5s;
-moz-transition:width 0.5s; /* Firefox 4 */
-webkit-transition:width 0.5s; /* Safari and Chrome */
-o-transition:width 0.5s; /* Opera */
}
.forget:hover
{
width:100px;
}

</style>
</head>

<body>

	<div class="container">
		<form class="form-signin" action="/loginCheck" method="post" 
		onsubmit="return checkAll()">
			  <div>
			    <img src="images/title.jpg" width="100px" />
			  </div>
			  <div class="brand-title">博思教师辅助平台</div>
			  <div class="inputs">
			    <label>用户名</label>
				<input type="text" id="username" name="username" 
				placeholder=""  onblur="checkUsername()">
				<span id="usernameErr"></span>
			    <label>密码</label>
				<input type="password" id="password" name="password" 
				placeholder=""  onblur="checkPassword()">
				<span id="passwordErr"></span>
				<button type="submit">登录</button>
				<div style="float: auto;">
				<input class = "signup" type="button" 
				onclick="window.location.href='signUp'" value="注册"></input>
				<input class = "forget" type="button" 
				onclick="window.location.href='register'" value="忘记密码"></input>
				</div>
				
            </div>
		</form>

	</div>
	
	<%@ include file="common/footer.jsp" %> 
<script src="../js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script>
		function checkUsername(){	
			var username = $('#username').val()
			var pattern = /^\w+$/
			var num = /^[0-9]*$/
			if(username === ''){
				$('#usernameErr').html('请输入用户名')
				$("#usernameErr").css("color","red")
				return false
			}else if(username.length < 6 || username.length > 16){
				$('#usernameErr').html('用户名长度在6-16位之间')
				$("#usernameErr").css("color","red")
				return false
			}else if(!(pattern.test(username))){
				$('#usernameErr').html('用户名只能是英文字母、数字或下划线')
				$("#usernameErr").css("color","red")
				return false
			}else if(num.test(username.substr(0,1))){
				$('#usernameErr').html('数字不能作为开头')
				$("#usernameErr").css("color","red")
				return false
			}else{
				
					$('#usernameErr').html('')
					return true
				}
		}

		function checkPassword(){
			var password = $('#password').val()
			if(password === ''){
				$('#passwordErr').html('请输入密码')
				$("#passwordErr").css("color","red")
				return false
			}else if(password.length<6||password.length>54){
				$('#passwordErr').html('密码长度在6-54位之间')
				$("#passwordErr").css("color","red")
				return false
			}else{
				$('#passwordErr').html('')
				return true
			}
		}

		function checkAll(){
			if(checkUsername()&&checkPassword()){
				return true
			}else{
				alert("请检查是否符合全部要求")
				return false
			}
		}

	</script>  
</body>
</html>