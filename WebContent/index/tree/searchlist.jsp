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
		if(status2=="-1"){status2="4";}
		window.location.href = "${pageContext.request.contextPath}/admin/xuqiuServlet?method=searchlist&name=" + name + "&status=" + status2;
	}
	function show()
	{
		window.location.href = "${pageContext.request.contextPath}/admin/xuqiuServlet?method=needlist";
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12" style="text-align:center">
				<h1>需求浏览</h1>
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
					<td><a href="${pageContext.request.contextPath}/admin/xuqiuServlet?method=search&id=${item.id }">${item.jiname }</a></td>
					<td>${item.createdate }</td>
					
					<c:if test="${item.status==1}">
						<td>未审核</td>
					</c:if>
					<c:if test="${item.status==2}">
						<td>已审核</td>
					</c:if>
					<c:if test="${item.status==3}">
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
