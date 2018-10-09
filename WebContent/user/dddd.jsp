<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body {
	font: 14px/1.5 宋体, 宋体, \5b8b\4f53, sans-serif;
	background-color: #B1D8EA;
}

.etabs {
	margin: 0;
	padding: 0;
}

.tab {
	display: inline-block;
	zoom: 1;
	*display: inline;
	background: #eee;
	border: solid 1px #999;
	border-bottom: none;
	-moz-border-radius: 4px 4px 0 0;
	-webkit-border-radius: 4px 4px 0 0;
}

.tab a {
	font-size: 14px;
	line-height: 2em;
	display: block;
	padding: 0 10px;
	outline: none;
	text-decoration: none;
}

.tab a:hover {
	text-decoration: underline;
}

.tab.active {
	background: #fff;
	padding-top: 6px;
	position: relative;
	top: 1px;
	border-color: #666;
}

.tab a.active {
	font-weight: bold;
}

.tab-container .panel-container {
	background: #fff;
	border: solid #666 1px;
	padding: 10px;
	-moz-border-radius: 0 4px 4px 4px;
	-webkit-border-radius: 0 4px 4px 4px;
	margin: 0px 50px 0px 50px;
}

.panel-container {
	margin-bottom: 10px;
}
</style>
<style type="text/css">
.btn {
	background-color: #D2340F;
	color: white;
	text-decoration: none;
	font-family: Arial;
	font-weight: 900;
	font-size: 15px;
	padding: 5px 6px;
	border-radius: 3px;
}

.btn-buynow {
	background-color: #D2340F;
}

.btn-buynow:hover {
	background-color: #EF411A;
}

.btn-signup {
	background-color: #006DCC;
}

.btn-signup:hover {
	background-color: rgb(0, 74, 204);
}

.btn-login {
	background-color: rgb(113, 181, 27);
}

.btn-login:hover {
	background-color: rgb(147, 199, 25);
}
</style>

<style type="text/css">
.msg-div {
	width: 280px;
	height: 60px;
	color: #ffffff;
	margin-left: 40%;
	background-color: #000000;
	position: absolute;
	filter: alpha(opacity = 70);
	opacity: 0.6;
}
</style>
<style type="text/css">
table.gridtable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}

table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}

table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>



<style>
.test1 {
	top: 50%;
	position: relative;
	margin-top: -114px;
	margin-left: auto;
	margin-right: auto;
	width: 450px;
	display: block;
	overflow: hidden;
}
</style>
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js" type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css"/>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css1/msgbox.css" />

<link
	href="${pageContext.request.contextPath}/css1/tablecloth.css"
	rel="stylesheet">

<script src="lib/jquery.easytabs.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tab-container').easytabs();
	});
</script>
<script type="text/javascript">

function addJS() 
{
	if ($("#newjs").css('display') == 'none') 
	{
		$("#newjs").css('display', '');
	} 
	else 
	{
		$("#newjs").css('display', 'none');
	}
}
</script>




</head>
<body onload="toBuild()" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0" background="#B1D8EA" bgcolor="#B1D8EA">
	<div align="center" id="msgDiv" class="msg-div" style="display: none;">信息提示</div>
	<div
		style="margin: 5px 0px 0px 10px; background-color: white; height: 98%; min-height: 550px;">
		<br />
		<div id="tab-container" class="tab-container">
			<input type="hidden" value="16" id="userjsid">
			<ul class="etabs" style="text-align: center;">

				<li class="tab"><a href="#yhgl">用户管理</a></li>
				<li class="tab"><a href="#qxgl" onclick="getTabMsg('qx')">权限管理</a></li>
				<li class="tab"><a href="#jsgl" onclick="getTabMsg('js')">角色管理</a>
			</ul>
			<div class="panel-container">
				<div id="qxgl" align="center">
					<h2>权限管理</h2>
					<hr>
                     <div>
					请选择用户：
					<select style=height:30px name="twxueke" id="selectuser"> 
					<option value="-1">请选择用户</option>
					<c:forEach items="${userBeanlist }" var="item" varStatus="status">
					<option value="${item.shefen }">${item.shefen }</option>				
					</c:forEach>
					</select>
					</div>
					<br>
					<div>
					请选择角色：
					<select style=height:30px name="twxueke" id="selectuser"> 
					<option value="-1">请选择角色</option>
					<c:forEach items="${jueseBeanlist }" var="item" varStatus="status">
					<option value="${item.name }">${item.shefen }</option>				
					</c:forEach>
					</select>
					</div>
					<hr>
					<div >
					<table id="qxtable" style="width: 95%" cellspacing="1" cellpadding="3" class="tablehead" background="#EBEBEB">
			 		<thead>              
					<tr height="25px"  class="colhead" style="background:#EBEBEB">
					<td><font style="margin-left:90px">权限名称</font></td>
					<td>权限说明</td>
					<td align="center">是否赋予</td></tr>
					
					<tr height="30px"   class="colhead" style="background:#EBEBEB">
					<td colspan="3">需求发布</td>
					</tr>
					<tr height="30px">
					<td><font style="margin-left:90px">需求填报</font></td>
					<td >可以填报新的需求</td>
					<td align="center"><input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人待审需求</font></td>
					<td >可以查看自己等待审核的需求</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部待审需求</font></td>
					<td >可以查看全部等待审核的需求</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求修改</font></td>
					<td >可以修改自己未上传的需求</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人需求浏览</font></td>
					<td >可以查看自己上传需求的状态</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部需求浏览</font></td>
					<td >可以查看全部上传需求的状态</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">退回浏览</font></td>
					<td >可以查看自己被退回的需求</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求审核</font></td>
					<td >可以审核上传的需求</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr>
				
					<tr height="30px"   class="colhead" style="background:#EBEBEB">
					<td colspan="3">用户管理</td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">用户查看</font></td>
					<td >可以浏览全部用户信息</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">个人信息修改</font></td>
					<td >可以修改自己的信息</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">密码管理</font></td>
					<td >可以修改自己的密码</td>
					<td align="center">  <input type="checkbox" disabled class="changeuserqx" id="" ></td>
					</tr>
					</table>					
					</div>
                    <hr>

					<button
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
						onclick="saveUserQX()">分配</button>
				</div>
				<!-- 角色管理 -->
				<div id="jsgl" align="center">
					<h2>角色管理</h2>
					<hr>
					<button id="addjs"
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
						onclick="addJS()">新增角色</button>
					<button id="deletejs"
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;">删除角色</button>
					<br>
					<br>
					<div>
						请选择角色： <select style="height: 30px" name="twxueke" id="selectuser">
							<option value="-1">请选择角色</option>
							<c:forEach items="${jueseBeanlist }" var="item"
								varStatus="status">
								<option value="${item.name }">${item.shefen }</option>
							</c:forEach>
						</select>
					</div>
                    <br>
					<div id="newjs" style="width: 98%; display: none;">	
					角色名：<input style="text" name="newjs">	
					<button
							style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
							onclick="addJSTJ()">创建</button>
					</div>
						<hr>
					<div >
					<table id="qxtable" style="width: 95%" cellspacing="1" cellpadding="3" class="tablehead" background="#EBEBEB">
			 		<thead>              
					<tr height="25px"  class="colhead" style="background:#EBEBEB">
					<td><font style="margin-left:90px">权限名称</font></td>
					<td>权限说明</td>
					<td align="center">是否赋予</td></tr>
					
					<tr height="30px"   class="colhead" style="background:#EBEBEB">
					<td colspan="3">需求发布</td>
					</tr>
					<tr height="30px">
					<td><font style="margin-left:90px">需求填报</font></td>
					<td >可以填报新的需求</td>
					<td align="center"><input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人待审需求</font></td>
					<td >可以查看自己等待审核的需求</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部待审需求</font></td>
					<td >可以查看全部等待审核的需求</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求修改</font></td>
					<td >可以修改自己未上传的需求</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人需求浏览</font></td>
					<td >可以查看自己上传需求的状态</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部需求浏览</font></td>
					<td >可以查看全部上传需求的状态</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">退回浏览</font></td>
					<td >可以查看自己被退回的需求</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求审核</font></td>
					<td >可以审核上传的需求</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr>
				
					<tr height="30px"   class="colhead" style="background:#EBEBEB">
					<td colspan="3">用户管理</td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">用户查看</font></td>
					<td >可以浏览全部用户信息</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">个人信息修改</font></td>
					<td >可以修改自己的信息</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">密码管理</font></td>
					<td >可以修改自己的密码</td>
					<td align="center">  <input type="checkbox"  class="changeuserqx" id="" ></td>
					</tr>
					</table>			
					</div>
					<hr>
				    <div align="center">
					<button id="changejsqx"
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
						onclick="saveJSQX()">修改</button>
					</div>		
				</div>
				
				<!-- 用户管理界面 -->
				<div id="yhgl" align="center">
				<h2>用户管理</h2>
					<hr>
					<div>
							<table class="table table-striped">
								<tr>
									<td>姓名</td>
									<td>单位</td>
									<td>专业</td>
									<td>教育</td>
									<td>职称</td>
									<td>手机</td>
									<td>身份</td>
									<td>操作</td>
								</tr>

								<!-- forEach遍历出adminBeans -->

								<c:forEach items="${userBeanlist }" var="item"
									varStatus="status">
									<tr>
										<td>${item.name }</td>
										<td>${item.danwei }</td>
										<td>${item.zhuanye }</td>
										<td>${item.jiaoyu }</td>
										<td>${item.zhicheng }</td>
										<td>${item.shouji }</td>
									<c:if test="${item.shenfen==0}">
										<td>管理员</td>
									</c:if>
									<c:if test="${item.status==1}">
										<td>普通用户</td>
									</c:if>
									<td><a href="${pageContext.request.contextPath}/admin/xuqiuServlet?method=search&id=${item.id }">删除</a></td>					
								</tr>
								</c:forEach>
							</table>
						</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>