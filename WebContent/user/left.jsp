<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: "Microsoft Yahei", Verdana, Arial, Helvetica, sans-serif
}
.leftMenu {
    width:210px;
	margin:30px;
	margin-left: -10px;
}
.menu {
	border: #dceefc 1px solid;
	border-top: #dceefc 4px solid;
	border-bottom: #dceefc 3px solid;
	background: #dceefc repeat-y right;
	margin-left: 10px;
}
.menu .ListTitle {
	border-bottom: 1px #79CDCD solid;
	display: block;
	text-align: center;
	/*position: relative;*/
	height: 38px;
	line-height: 38px;
	cursor: pointer;
	/*+min-width:220px;*/

	+width:100%;
}
.ListTitlePanel {
	position: relative;
	
}
.leftbgbt {
	position: absolute;
	background: no-repeat;
	width: 11px;
	height: 52px;
	left: -11px;
	top: -4px;
}
/*.leftbgbt {
	float:left;
	background: no-repeat;
	width: 11px;
	height: 52px;
	left: 0px;
	top: 0px;
	zoom:1;
	z-index:200px;
}
*/
.leftbgbt2 {
	position: absolute;
	background: no-repeat;
	width: 11px;
	height: 48px;
	left: -11px;
	top: -1px;
}
.menuList {
	display: block;
	height: auto;
}
.menuList div {
	height: 28px;
	line-height: 24px;
	border-bottom: 1px #98c9ee dotted;
}
.menuList div a {
	display: block;
	background: #fff;
	line-height: 28px;
	height: 28px;
	text-align: center;
	color: #185697;
	text-decoration: none;
}
.menuList div a:hover {
	color: #f30;
	background: #79CDCD;
	color: #fff;
}
</style>

<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.12.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			if($(menuList[i]).css('display') == 'none'){
				$(menuList[i]).slideDown(300);
			}
			else{
				$(menuList[i]).slideUp(300);
			}
		});
	});
});
</script>

</head>
<body style="margin-top: -30px;">

<div class="leftMenu">
	<div class="menu">
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>需求管理</strong>
					<div class="leftbgbt"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a  target="mainAction" href="${pageContext.request.contextPath}/user/userZhengjiServlet?method=tianbao">需求征集</a></div>
				<div> <a  target="mainAction" href="${pageContext.request.contextPath}/user/userZhengjiServlet?method=needhecha&status=0&userid=${user.id}">形式审核</a> </div>
				<div> <a  target="mainAction" href="${pageContext.request.contextPath}/user/userZhengjiServlet?method=needlist&userid=${user.id}">需求浏览</a> </div>
				<div> <a  target="mainAction" href="${pageContext.request.contextPath}/user/userZhengjiServlet?method=tuihuiliulan&status=3&userid=${user.id}">退回需求</a> </div>
			</div>
		</div>
		
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>个人中心</strong>
					<div class="leftbgbt"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a  target="mainAction" href="${pageContext.request.contextPath}/user/addUser.jsp">修改密码</a> </div>
		        <div> <a  target="mainAction" href="${pageContext.request.contextPath}/user/register.jsp">个人信息</a> </div>
		        <div> <a  target="_top" href="${pageContext.request.contextPath}/login/login.jsp">退出登录</a> </div>
		 	</div>
		</div>
		
	</div>
</div>
<div style="text-align:center;">
</div>
</body>
</html>