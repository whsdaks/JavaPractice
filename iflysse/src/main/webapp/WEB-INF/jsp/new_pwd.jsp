<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BS_修改密码</title>

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
		<form class="form-signin" action="savePassword" method="post" 
		onsubmit="return checkAll()">
			  <div>
			    <img src="images/mmexport.gif" width="100px" />
			  </div>
			  <div class="brand-title">修改密码</div>
			  <div class="inputs">
			    <label>原密码</label>
				<input type="password" id="password" name="oldPassword" 
				placeholder=""  onblur="checkPwd()">
				<span id="pwdErr"></span>
			    <label>新密码</label>
				<input type="password" id="password" name="password" 
				placeholder=""  onblur="checkPassword()">
				<span id="passwordErr"></span>
				<label>确认密码</label>
				<input type="password" id="pwd" name="cPassword" 
				placeholder=""  onblur="checkPassword1()">
				<span id="passwordErr1"></span>
				<button type="submit">确认</button>
				
				
            </div>
		</form>

	</div>
	
	<%@ include file="common/footer.jsp" %> 
<script src="../js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script>
	/* 验证原密码 */
		function checkPwd(){	
			var password = $('#password').val()
			if(password === ''){
				$('#pwdErr').html('请输入密码')
				$("#pwdErr").css("color","red")
				return false
			}else if(password.length<6||password.length>54){
				$('#pwdErr').html('密码长度在6-54位之间')
				$("#pwdErr").css("color","red")
				return false
			}else{
				$('#pwdErr').html('')
				return true
			}
		}
		/* 验证新密码 */
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
		/* 确认密码 */
		function checkPassword1(){
			var pwd = $('#password').val()
			if(password === ''){
				$('#passwordErr1').html('请确认密码')
				$("#passwordErr1").css("color","red")
				return false
			}else if(pwd.equal(password)){
				$('#passwordErr1').html('请确认两次密码是否一致')
				$("#passwordErr1").css("color","red")
				return false
			}else{
				$('#passwordErr1').html('')
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