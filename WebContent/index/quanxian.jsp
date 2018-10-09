<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/xcConfirm.css"/>
		<script src="${pageContext.request.contextPath}/js/js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
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
function quanxianxuanze(obj) 
{
	var juese = obj.value;
	if(juese==-1)
		{
		$("#tianbao").prop("checked",false);
		
		$("#chakangerenshenhexuqiu").prop("checked",false);
		
		$("#chakanquanbushenhexuqiu").prop("checked",false);
		
		$("#xuqiuxiugai").prop("checked",false);
		
		$("#chakanquanbu").prop("checked",false);
		
		$("#chakangeren").prop("checked",false);
		
		$("#chakantuihui").prop("checked",false);
		$("#shenhexuqiu").prop("checked",false);
		
		$("#chakanuser").prop("checked",false);
		
		$("#xinxixiugai").prop("checked",false);
		
		$("#mimaxiugai").prop("checked",false);
		}
		else
		{
		$.post(
				"${pageContext.request.contextPath}/user/quanxianServlet",
				{
					method : "searchquanxian",
					juese : juese
				},
				function(data) 
				{
					if(data.tianbao=="1")
					{$("#tianbao").prop("checked","checked");}
					else
					{$("#tianbao").prop("checked",false);}
					
					if(data.chakangerenshenhexuqiu=="1")
					{$("#chakangerenshenhexuqiu").prop("checked","checked");}
					else
					{$("#chakangerenshenhexuqiu").prop("checked",false);}
					
					if(data.chakanquanbushenhexuqiu=="1")
					{$("#chakanquanbushenhexuqiu").prop("checked","checked");}
					else
					{$("#chakanquanbushenhexuqiu").prop("checked",false);}
					
					if(data.xuqiuxiugai=="1")
					{$("#xuqiuxiugai").prop("checked","checked");}
					else
					{$("#xuqiuxiugai").prop("checked",false);}
					
					if(data.chakanquanbu=="1")
					{$("#chakanquanbu").prop("checked","checked");}
					else
					{$("#chakanquanbu").prop("checked",false);}
					
					if(data.chakangeren=="1")
					{$("#chakangeren").prop("checked","checked");}
					else
					{$("#chakangeren").prop("checked",false);}
					
					if(data.chakantuihui=="1")
					{$("#chakantuihui").prop("checked","checked");}
					else
					{$("#chakantuihui").prop("checked",false);}
					
					if(data.shenhexuqiu=="1")
					{$("#shenhexuqiu").prop("checked","checked");}
					else
					{$("#shenhexuqiu").prop("checked",false);}
					
					if(data.chakanuser=="1")
					{$("#chakanuser").prop("checked","checked");}
					else
					{$("#chakanuser").prop("checked",false);}
					
					if(data.xinxixiugai=="1")
					{$("#xinxixiugai").prop("checked","checked");}
					else
					{$("#xinxixiugai").prop("checked",false);}
					
					if(data.mimaxiugai=="1")
					{$("#mimaxiugai").prop("checked","checked");}
					else
					{$("#mimaxiugai").prop("checked",false);}
					
					
				}, "json");
		}
	
}

</script>
<script type="text/javascript">
function quanxianxuanze2(obj) 
{
	var juese = obj.value;
	if(juese==-1)
	{
	$("#qxtianbao").prop("checked",false);
	
	$("#qxchakangerenshenhexuqiu").prop("checked",false);
	
	$("#qxchakanquanbushenhexuqiu").prop("checked",false);
	
	$("#qxxuqiuxiugai").prop("checked",false);
	
	$("#qxchakanquanbu").prop("checked",false);
	
	$("#qxchakangeren").prop("checked",false);
	
	$("#qxchakantuihui").prop("checked",false);
	$("#qxshenhexuqiu").prop("checked",false);
	
	$("#qxchakanuser").prop("checked",false);
	
	$("#qxxinxixiugai").prop("checked",false);
	
	$("#qxmimaxiugai").prop("checked",false);
	}
	else
	{
	$.post(
			"${pageContext.request.contextPath}/user/quanxianServlet",
			{
				method : "searchquanxian",
				juese : juese
			},
			function(data) 
			{
				if(data.tianbao=="1")
				{$("#qxtianbao").prop("checked","checked");}
				else
				{$("#qxtianbao").prop("checked",false);}
				
				if(data.chakangerenshenhexuqiu=="1")
				{$("#qxchakangerenshenhexuqiu").prop("checked","checked");}
				else
				{$("#qxchakangerenshenhexuqiu").prop("checked",false);}
				
				if(data.chakanquanbushenhexuqiu=="1")
				{$("#qxchakanquanbushenhexuqiu").prop("checked","checked");}
				else
				{$("#qxchakanquanbushenhexuqiu").prop("checked",false);}
				
				if(data.xuqiuxiugai=="1")
				{$("#qxxuqiuxiugai").prop("checked","checked");}
				else
				{$("#qxxuqiuxiugai").prop("checked",false);}
				
				if(data.chakanquanbu=="1")
				{$("#qxchakanquanbu").prop("checked","checked");}
				else
				{$("#qxchakanquanbu").prop("checked",false);}
				
				if(data.chakangeren=="1")
				{$("#qxchakangeren").prop("checked","checked");}
				else
				{$("#qxchakangeren").prop("checked",false);}
				
				if(data.chakantuihui=="1")
				{$("#qxchakantuihui").prop("checked","checked");}
				else
				{$("#qxchakantuihui").prop("checked",false);}
				
				if(data.shenhexuqiu=="1")
				{$("#qxshenhexuqiu").prop("checked","checked");}
				else
				{$("#qxshenhexuqiu").prop("checked",false);}
				
				if(data.chakanuser=="1")
				{$("#qxchakanuser").prop("checked","checked");}
				else
				{$("#qxchakanuser").prop("checked",false);}
				
				if(data.xinxixiugai=="1")
				{$("#qxxinxixiugai").prop("checked","checked");}
				else
				{$("#qxxinxixiugai").prop("checked",false);}
				
				if(data.mimaxiugai=="1")
				{$("#qxmimaxiugai").prop("checked","checked");}
				else
				{$("#qxmimaxiugai").prop("checked",false);}
				
				
			}, "json");
	}
	
}

</script>
<script type="text/javascript">
function showquanxian(obj) 
{
	var userid = obj.value;
	if(userid=="-1")
		{
        $("#tianbao").prop("checked",false);
		
		$("#chakangerenshenhexuqiu").prop("checked",false);
		
		$("#chakanquanbushenhexuqiu").prop("checked",false);
		
		$("#xuqiuxiugai").prop("checked",false);
		
		$("#chakanquanbu").prop("checked",false);
		
		$("#chakangeren").prop("checked",false);
		
		$("#chakantuihui").prop("checked",false);
		$("#shenhexuqiu").prop("checked",false);
		
		$("#chakanuser").prop("checked",false);
		
		$("#xinxixiugai").prop("checked",false);
		
		$("#mimaxiugai").prop("checked",false);
		}
	else
		{
		$.post(
				"${pageContext.request.contextPath}/user/quanxianServlet",
				{
					method : "showquanxian",
					userid : userid
				},
				function(data) 
				{
					if(data.tianbao=="1")
					{$("#tianbao").prop("checked","checked");}
					else
					{$("#tianbao").prop("checked",false);}
					
					if(data.chakangerenshenhexuqiu=="1")
					{$("#chakangerenshenhexuqiu").prop("checked","checked");}
					else
					{$("#chakangerenshenhexuqiu").prop("checked",false);}
					
					if(data.chakanquanbushenhexuqiu=="1")
					{$("#chakanquanbushenhexuqiu").prop("checked","checked");}
					else
					{$("#chakanquanbushenhexuqiu").prop("checked",false);}
					
					if(data.xuqiuxiugai=="1")
					{$("#xuqiuxiugai").prop("checked","checked");}
					else
					{$("#xuqiuxiugai").prop("checked",false);}
					
					if(data.chakanquanbu=="1")
					{$("#chakanquanbu").prop("checked","checked");}
					else
					{$("#chakanquanbu").prop("checked",false);}
					
					if(data.chakangeren=="1")
					{$("#chakangeren").prop("checked","checked");}
					else
					{$("#chakangeren").prop("checked",false);}
					
					if(data.chakantuihui=="1")
					{$("#chakantuihui").prop("checked","checked");}
					else
					{$("#chakantuihui").prop("checked",false);}
					
					if(data.shenhexuqiu=="1")
					{$("#shenhexuqiu").prop("checked","checked");}
					else
					{$("#shenhexuqiu").prop("checked",false);}
					
					if(data.chakanuser=="1")
					{$("#chakanuser").prop("checked","checked");}
					else
					{$("#chakanuser").prop("checked",false);}
					
					if(data.xinxixiugai=="1")
					{$("#xinxixiugai").prop("checked","checked");}
					else
					{$("#xinxixiugai").prop("checked",false);}
					
					if(data.mimaxiugai=="1")
					{$("#mimaxiugai").prop("checked","checked");}
					else
					{$("#mimaxiugai").prop("checked",false);}	
				}, "json");
		}
		
	
}
</script>
<script type="text/javascript">
function fenpeijuese() 
{
	var qxuserid=$('#qxuser').val();
	var qxjuese=$('#qxxuanze').val();
	if(qxuserid=="-1"||qxjuese=="-1")
		{
		var txt=  "请选择用户或者角色！";
		window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.error);
		}
	else
		{
	$.post(
			"${pageContext.request.contextPath}/user/quanxianServlet",
			{
				method : "fenpeijuese",
				qxuserid : qxuserid,
				qxjuese:qxjuese
			},
			function(data) 
			{
				var txt=  "分配成功！";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
				
					
			}, "json");
		}
}
function deletejuese() 
{
	var juese=$("#juesexuanze").val();
	$.post(
			"${pageContext.request.contextPath}/user/quanxianServlet",
			{
				method : "deletejuese",
				juese : juese
				
			},
			function(data) 
			{
				var txt=  "删除成功!";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
				
				var content="请选择角色： <select style='height: 30px' id='juesexuanze' name='jsjuese' onchange='quanxianxuanze2(this)'>";
				var content1="请选择角色： <select style='height: 30px' id='qxxuanze'  name='qxjuese' onchange='quanxianxuanze(this)'>";
				content+="<option value='-1'>请选择角色</option>";
				content1+="<option value='-1'>请选择角色</option>";
				for (var item in data) 
				{
					content += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
					content1 += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
				}
				content+="</select>";
				content1+="</select>";
				$("#jueselectjuese").html(content);
				
				$("#qxjueselist").html(content1);
			}, "json");
}
function addJSTJ() 
{
	var newjuese=$('#newjuese').val();
	$.post(
			"${pageContext.request.contextPath}/user/quanxianServlet",
			{
				method : "addjuese",
				newjuese : newjuese	
			},
			function(data) 
			{
				var txt=  "创建成功";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
				var content="请选择角色： <select style='height: 30px' id='juesexuanze' name='jsjuese' onchange='quanxianxuanze2(this)'>";
				var content1="请选择角色： <select style='height: 30px' id='qxxuanze'  name='qxjuese' onchange='quanxianxuanze(this)'>";
				content+="<option value='-1'>请选择角色</option>";
				content1+="<option value='-1'>请选择角色</option>";
				for (var item in data) 
				{
					content += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
					content1 += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
				}
				content+="</select>";
				content1+="</select>";
				$("#jueselectjuese").html(content);
				
				$("#qxjueselist").html(content1);
			}, "json");
}

function jueselist()
{
	$.post(
			"${pageContext.request.contextPath}/user/quanxianServlet",
			{
				method : "jueselist"
			},
			function(data)
			{
				var content="请选择角色： <select style='height: 30px' id='juesexuanze' name='jsjuese' onchange='quanxianxuanze2(this)'>";
				var content1="请选择角色： <select style='height: 30px' id='qxxuanze'  name='qxjuese' onchange='quanxianxuanze(this)'>";
				content+="<option value='-1'>请选择角色</option>";
				content1+="<option value='-1'>请选择角色</option>";
				for (var item in data) 
				{
					content += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
					content1 += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
				}
				content+="</select>";
				content1+="</select>";
				$("#jueselectjuese").html(content);
				
				$("#qxjueselist").html(content1);
			},"json");
	
}
function saveJSQX()
{ 
    var tianbao="0";
    if($("#qxtianbao").is(":checked")){tianbao="1";}
    
    var chakangerenshenhexuqiu="0";
    if($("#qxchakangerenshenhexuqiu").is(":checked")){chakangerenshenhexuqiu="1";}
    
    var chakanquanbushenhexuqiu="0";
    if($("#qxchakanquanbushenhexuqiu").is(":checked")){chakanquanbushenhexuqiu="1";}
    
    var xuqiuxiugai="0";
    if($("#qxxuqiuxiugai").is(":checked")){xuqiuxiugai="1";}
    
    var chakanquanbu="0";
    if($("#qxchakanquanbu").is(":checked")){chakanquanbu="1";}
    
    var chakangeren="0";
    if($("#qxchakangeren").is(":checked")){chakangeren="1";}
    
    var chakantuihui="0";
    if($("#qxchakantuihui").is(":checked")){chakantuihui="1";}
    
    var shenhexuqiu="0";
    if($("#qxshenhexuqiu").is(":checked")){shenhexuqiu="1";}
    
    var chakanuser="0";
    if($("#qxchakanuser").is(":checked")){chakanuser="1";}
    
    var xinxixiugai="0";
    if($("#qxxinxixiugai").is(":checked")){xinxixiugai="1";}
    
    var mimaxiugai="0";
    if($("#qxmimaxiugai").is(":checked")){mimaxiugai="1";}
    
    var juese=$("#juesexuanze").val();
    $.post(
			"${pageContext.request.contextPath}/user/quanxianServlet",
			{
				method : "feipeiquanxian",
				name : juese,
				tianbao : tianbao,
				chakangerenshenhexuqiu : chakangerenshenhexuqiu,
				chakanquanbushenhexuqiu : chakanquanbushenhexuqiu,
				xuqiuxiugai : xuqiuxiugai,
				chakanquanbu : chakanquanbu,
				chakangeren : chakangeren,
				chakantuihui : chakantuihui,
				shenhexuqiu : shenhexuqiu,
				chakanuser : chakanuser,
				xinxixiugai : xinxixiugai,
				mimaxiugai : mimaxiugai
			},
			function(data)
			{
				
				var txt=  "修改成功";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
			    var content="请选择角色： <select style='height: 30px' id='juesexuanze' name='jsjuese' onchange='quanxianxuanze2(this)'>";
				var content1="请选择角色： <select style='height: 30px' id='qxxuanze'  name='jsjuese' onchange='quanxianxuanze(this)'>";
				content+="<option value='-1'>请选择角色</option>";
				content1+="<option value='-1'>请选择角色</option>";
				for (var item in data) 
				{
					content += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
					content1 += "<option value='" + data[item].name + "'>"+ data[item].name + "</option>"; 
				}
				content+="</select>";
				content1+="</select>";
				$("#jueselectjuese").html(content);
				
				$("#qxjueselist").html(content1);
			},"json");
    
}
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
<body onload="jueselist()" leftmargin="0" topmargin="0" marginwidth="0"
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
					<select style=height:30px name="qxuser" id="qxuser" onchange="showquanxian(this)"> 
					<option value="-1">请选择用户</option>
					<c:forEach items="${Userlists }" var="item" varStatus="status">
					<option value="${item.id }">${item.name }</option>				
					</c:forEach>
					</select>
					</div>
					<br>
					<div id="qxjueselist">
				
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
					<td colspan="3">需求管理</td>
					</tr>
					<tr height="30px">
					<td><font style="margin-left:90px">需求填报</font></td>
					<td >可以填报新的需求</td>
					<td align="center"><input type="checkbox" disabled  id="tianbao" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人待审需求</font></td>
					<td >可以查看自己等待审核的需求</td>
					<td align="center">  <input type="checkbox" disabled  id="chakangerenshenhexuqiu" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部待审需求</font></td>
					<td >可以查看全部等待审核的需求</td>
					<td align="center">  <input type="checkbox" disabled  id="chakanquanbushenhexuqiu" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求修改</font></td>
					<td >可以修改自己未上传的需求</td>
					<td align="center">  <input type="checkbox" disabled  id="xuqiuxiugai" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人需求浏览</font></td>
					<td >可以查看自己上传需求的状态</td>
					<td align="center">  <input type="checkbox" disabled id="chakangeren" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部需求浏览</font></td>
					<td >可以查看全部上传需求的状态</td>
					<td align="center">  <input type="checkbox" disabled  id="chakanquanbu" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">退回浏览</font></td>
					<td >可以查看自己被退回的需求</td>
					<td align="center">  <input type="checkbox" disabled id="chakantuihui" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求审核</font></td>
					<td >可以审核上传的需求</td>
					<td align="center">  <input type="checkbox" disabled  id="shenhexuqiu" ></td>
					</tr>
				
					<tr height="30px"   class="colhead" style="background:#EBEBEB">
					<td colspan="3">用户管理</td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">用户查看</font></td>
					<td >可以浏览全部用户信息</td>
					<td align="center">  <input type="checkbox" disabled  id="chakanuser" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">个人信息修改</font></td>
					<td >可以修改自己的信息</td>
					<td align="center">  <input type="checkbox" disabled  id="xinxixiugai" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">密码管理</font></td>
					<td >可以修改自己的密码</td>
					<td align="center">  <input type="checkbox" disabled  id="mimaxiugai" ></td>
					</tr>
					</table>					
					</div>
                    <hr>

					<button
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
						onclick="fenpeijuese()">分配</button>
				</div>
				<!-- 角色管理 -->
				<div id="jsgl" align="center">
					<h2>角色管理</h2>
					<hr>
					<button id="addjs"
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
						onclick="addJS()">新增角色</button>
					<button id="deletejs"
						style="background-color: #D2340F; color: white; text-decoration: none; font-family: Arial; font-weight: 900; font-size: 15px; padding: 5px 6px; border-radius: 3px;"
						onclick="deletejuese()">删除角色</button>
					<br>
					<br>
					<div id="jueselectjuese" >
					</div>
                    <br>
					<div id="newjs" style="width: 98%; display: none;">	
					角色名：<input id="newjuese" style="text" name="newjs">	
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
					<td align="center"><input type="checkbox"  id="qxtianbao" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人待审需求</font></td>
					<td >可以查看自己等待审核的需求</td>
					<td align="center">  <input type="checkbox"  id="qxchakangerenshenhexuqiu" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部待审需求</font></td>
					<td >可以查看全部等待审核的需求</td>
					<td align="center">  <input type="checkbox"    id="qxchakanquanbushenhexuqiu" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求修改</font></td>
					<td >可以修改自己未上传的需求</td>
					<td align="center">  <input type="checkbox"    id="qxxuqiuxiugai" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">个人需求浏览</font></td>
					<td >可以查看自己上传需求的状态</td>
					<td align="center">  <input type="checkbox"   id="qxchakangeren" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">全部需求浏览</font></td>
					<td >可以查看全部上传需求的状态</td>
					<td align="center">  <input type="checkbox"    id="qxchakanquanbu" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">退回浏览</font></td>
					<td >可以查看自己被退回的需求</td>
					<td align="center">  <input type="checkbox"   id="qxchakantuihui" ></td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">需求审核</font></td>
					<td >可以审核上传的需求</td>
					<td align="center">  <input type="checkbox"    id="qxshenhexuqiu" ></td>
					</tr>
				
					<tr height="30px"   class="colhead" style="background:#EBEBEB">
					<td colspan="3">用户管理</td>
					</tr><tr height="30px">
					<td ><font style="margin-left:90px">用户查看</font></td>
					<td >可以浏览全部用户信息</td>
					<td align="center">  <input type="checkbox"    id="qxchakanuser" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">个人信息修改</font></td>
					<td >可以修改自己的信息</td>
					<td align="center">  <input type="checkbox"    id="qxxinxixiugai" ></td>
					</tr>
					<tr height="30px">
					<td ><font style="margin-left:90px">密码管理</font></td>
					<td >可以修改自己的密码</td>
					<td align="center">  <input type="checkbox"    id="qxmimaxiugai" ></td>
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
								</tr>

								<!-- forEach遍历出adminBeans -->

								<c:forEach items="${Userlists }" var="item" varStatus="status">
									<tr>
										<td>${item.name }</td>
										<td>${item.danwei }</td>
										<td>${item.zhuanye }</td>
										<td>${item.jiaoyu }</td>
										<td>${item.zhicheng }</td>
										<td>${item.shouji }</td>								
										<td>${item.shenfen }</td>
									
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