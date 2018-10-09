<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>查看需求信息</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/xcConfirm.css"/>
		<script src="${pageContext.request.contextPath}/js/js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
		
	<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js" type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
	<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css"/>

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12" style="text-align:center">
				<h1>用户列表</h1>
			</div>
		</div>
		
		<br>
		<br>
		<div class="row-fluid">
			<div class="col-md-1 "></div>
			<div class="col-md-10 ">
				<table class="table table-striped">
				<tr>
					<td>用户名</td>
					<td>用户单位</td>
					<td>用户身份</td>
					<td>用户手机</td>
					<td>操作</td>
				</tr>
				  
				<!-- forEach遍历出adminBeans -->
				
				<c:forEach items="${Userlists }" var="item" varStatus="status">
				<tr>
					<td>${item.name }</td>
					<td>${item.danwei }</td>
					
					<td>${item.shenfen}</td>
					
					<td>${item.shouji }</td>
					<td><a href="${pageContext.request.contextPath}/user/userServlet?method=userdelete&id=${item.id }">删除</a></td>
					
				</tr>
				</c:forEach>
				</table>
			</div>
			<div class=" col-md-1"></div>
		</div>
		<c:if test="${param.status.equals('1')}">
		<script type="text/javascript">
			function pass() 
			{
				var txt=  "删除成功！";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
				
			}
			pass();
			
		</script>
	</c:if>
	</div>
</body>
</html>
