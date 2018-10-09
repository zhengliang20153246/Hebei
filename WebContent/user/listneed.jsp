<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>查看需求信息</title>
	<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js" type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
	<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css"/>
<script type="text/javascript">
	function func(){
		var name = $("#name").val();
		var status2 = $("#status2").val();
		window.location.href = "${pageContext.request.contextPath}/user/userZhengjiServlet?method=searchlist&name=" + name + "&status=" + status2;
	}
	function show(){
		var name = $("#name").val();
		var status2 = $("#status2").val();
		window.location.href = "${pageContext.request.contextPath}/user/userZhengjiServlet?method=needlist&userid=${user.id}";
	}
</script>


</head>
<body>
<br>
	<div class="container-fluid">
		<div style="text-align:center">
		<a href="${pageContext.request.contextPath}/user/userZhengjiServlet?method=tianbao">
		<button class="btn btn-primary" >新需求</button></a>&nbsp;&nbsp;&nbsp;&nbsp;
		
				技术需求名称：<input type="text" name="name" id="name" value="${param.name }" />
				需求状态：
				<select name="status2" id="status2">
					<option value="3">全部</option>
					<c:if test="${param.status2 == '0'}">
						<option value="0" selected="selected">未审核</option>
					</c:if>
					<c:if test="${status2 != '0'}">
						<option value="0">未审核</option>
					</c:if>
					<c:if test="${status2 == '1'}">
						<option value="1" selected="selected">已审核</option>
					</c:if>
					<c:if test="${status2 != '1'}">
						<option value="1">已审核</option>
					</c:if>
				</select>
			<button class="btn btn-primary" onclick="func();">查询</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-primary" onclick="show();">显示全部</button>
		</div>
		<br>
		<br>
		<div class="row-fluid">
			<div class="col-md-1 "></div>
			<div class="col-md-10 ">
				<table class="table table-striped">
				<tr>
					<td>需求编号</td>
					<td>技术需求名称</td>
					<td>填报日期</td>
					<td>状态</td>
				</tr>
				  
				<!-- forEach遍历出adminBeans -->
				
				<c:forEach items="${zhengjibeanlist }" var="item" varStatus="status">
				<tr>
					<td>${item.id }</td>
					<td><a href="${pageContext.request.contextPath}/user/userZhengjiServlet?method=search&id=${item.id }">${item.jiname }</a></td>
					<td>${item.createdate }</td>
					
					<c:if test="${item.status==0}">
						<td>未审核</td>
					</c:if>
					<c:if test="${item.status==1}">
						<td>已审核</td>
					</c:if>
					<c:if test="${item.status==2}">
						<td>被退回</td>
					</c:if>
					
				</tr>
				</c:forEach>
				</table>
			</div>
			<div class=" col-md-1"></div>
		</div>
		
	</div>
</body>
</html>
