<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>查看需求信息</title>
	<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
	<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css"/>
<script type="text/javascript">
	function func(){
		var name = $("#name").val();
		var status2 = $("#status2").val();
		window.location.href = "${pageContext.request.contextPath}/admin/xuqiuServlet?method=searchlist&name=" + name + "&status=" + status2;
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12" style="text-align:center">
				<h1>网络审核</h1>
			</div>
		</div>
		<hr>
		<div class="row-fluid">
			<div class="col-md-1 "></div>
			<div class="col-md-10 ">
				<table class="table table-striped">
				<tr>
					<td>需求编号</td>
					<td>技术需求名称</td>
					<td>填报日期</td>
					<td>审核</td>
				</tr>
				  
				<!-- forEach遍历出adminBeans -->
				<c:forEach items="${zhengjibeanlist }" var="item" varStatus="status">
				<tr>
					<td>${item.id }</td>
					<td>${item.jiname }</td>
					<td>${item.createdate }</td>
					<td>
					<a href="${pageContext.request.contextPath}/admin/xuqiuServlet?method=shenhedetail&id=${item.id }">
					<button type="button" class="btn btn-primary">审核</button></a>
					</td>
					
				</tr>
				</c:forEach>
				</table>
			</div>
			<div class=" col-md-1"></div>
		</div>
		
	</div>
</body>
</html>
