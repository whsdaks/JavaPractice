<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>用户管理</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/main.css"/>
	</head>
	<body>
		
		<div class="container">
			<div class="page-header ">
			  <h2>课程列表</h2>
			</div>
			
			<!-- 高级查询表单 -->
			<form class="form-inline" style="margin-bottom: 20px" >
			  <div class="form-group">
			    <label for="username">用户名</label>
			    <!-- param是EL中的一个内置对象，保存了提交的参数 -->
			    <input type="text" class="form-control" id="username" 
			     name="username" placeholder="支持模糊查询" value="${param.username }">
			  </div>
			  <div class="form-group">
			    <label for="phone">手机号</label>
			    <input type="text" class="form-control" id="phone" 
			    name="phone" placeholder="手机号" value="${param.phone }">
			  </div>
			  <button type="submit" class="btn btn-default">查询</button>
			</form>
			
			<form action="/user_del_batch" onsubmit="return checkBatch()">
				<p><a href="user_add" class="btn btn-primary">新增用户</a>
				   <button type="submit" class="btn btn-danger">批量删除</button>
				</p>
				<table class="table table-striped">
					<tr>
						<th><input type="checkbox" id="firstCheck" onchange="changeAll()"></th>
						<th>编号</th>
						<th>头像</th>
						<th>用户名</th>
						<th>手机号</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${userList }" var="user">
					<tr>
						<td><input type="checkbox" name="ids" value="${user.id }"></td>
						<td>${user.id }</td>
						<td><img src="images/${user.tx }" width="50px" /></td>
						<td>${user.username }</td>
						<td>${user.phone }</td>
						<td>
							<a href="user_info?id=${user.id }" class="btn btn-info">详情</a>
							<a href="user_edit?id=${user.id }" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span> 编辑</a>
							<a href="user_del?id=${user.id }" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> 删除</a>
							<a href="javascript:;" class="btn btn-danger" onclick="deleteConfirm(${user.id})"><span class="glyphicon glyphicon-trash"></span> 软删除</a>
						</td>
					</tr>
					</c:forEach>
					
				</table>
			</form>
			
			<%@ include file="common/userPageNav.jsp" %>
			<p>当前时间：<span id="time"></span></p>
			
		</div>
		
		<script src="./js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			
			//$.get()接受两个参数，第一个是url地址，第二个是回调函数
			//请求返回的内容会放到回调函数的参数中
			$.get('/date', function(result){
				//alert('调用结束了！！！')
				/* alert(result) */
				$('#time').html(result)
			})
		
		
			function deleteConfirm(id){
				if(confirm('是否要删除选中的用户？')){
					location.href="/user_del2?id="+id
				}
			}
			
			function checkBatch(){
				if($('input[name=ids]:checked').length == 0){
					alert('请至少选择一个用户')
					return false
				}
			}
			
			
			function changeAll(){
				var ids = $('input[name=ids]')
				for(let i in ids){
					ids[i].checked = $('#firstCheck')[0].checked
				}
			}
		
		</script>
	</body>
</html>