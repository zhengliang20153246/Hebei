<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>添加用户</title>
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<meta name="viewport"content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"type="text/css"href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css"/>
</head>
<!-- 自定义，表单验证 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/xcConfirm.css"/>
		<script src="${pageContext.request.contextPath}/js/js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
		
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/js/jquery.validate.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/js/myValidate.js"type="text/javascript"></script>
<body>
	<h1 align="center">用户注册</h1>
	<hr>
	<div class="row-fluid"style="margin-top: 80px;">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<form role="form"class="form-horizontal" action="${pageContext.request.contextPath}/admin/adminServlet?method=reg&updateId=${updateBean.username }"method="post" id="checkForm">
			<div class="form-group">
				<label class="col-md-3 control-label"for="username"><font style="color:red">*</font>用户名</label>
				<div class="col-md-9">
					<input class="form-control" name="username" type="text" id="username"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="inputPassword"><font style="color:red">*</font>用户密码</label>
				<div class="col-md-9">
					<input type="password"name="password"class="form-control"id="password"value="${updateBean.password }">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="password2"><font style="color:red">*</font>确认密码</label>
				<div class="col-md-9">
					<input type="password"name="password2"class="form-control"id="password2">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="truename"><font style="color:red">*</font>姓名</label>
				<div class="col-md-9">
					<input type="text"name="name"class="form-control"id="truename">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="cardid"><font style="color:red">*</font>身份证号</label>
				<div class="col-md-9">
					<input type="text"name="shenfenhao"class="form-control"id="cardid">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="city"><font style="color:red">*</font>市</label>
				<div class="col-md-9">
					<select name="shi">
						<option value="石家庄市" checked="checked">石家庄市</option>
						<option value="唐山市">唐山市</option>
						<option value="秦皇岛市">秦皇岛市</option>
						<option value="邯郸市">邯郸市</option>
						<option value="邢台市">邢台市</option>
						<option value="保定市">保定市</option>
						<option value="张家口市">张家口市</option>
						<option value="承德市">承德市</option>
						<option value="沧州市">沧州市</option>
						<option value="廊坊市">廊坊市</option>
						<option value="衡水市">衡水市</option>
						<option value="定州市">定州市</option>
						<option value="辛集市">辛集市</option>
						<option value="其他（河北工大）">其他（河北工大）</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="depart"><font style="color:red">*</font>工作单位</label>
				<div class="col-md-9">
					<input class="form-control"name="danwei"type="text"id="depart"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="director"><font style="color:red">*</font>专业方向</label>
				<div class="col-md-9">
					<input class="form-control"name="zhuanye"type="text"id="director"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="hangye"><font style="color:red">*</font>所在行业</label>
				<div class="col-md-9">
					<input class="form-control"name="hangye""type="text"id="hangye"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="education">教育程度</label>
				<div class="col-md-9">
					<input class="form-control"name="jiaoyu""type="text"id="education"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="zhicheng">职称</label>
				<div class="col-md-9">
					<input class="form-control"name="zhicheng""type="text"id="zhicheng"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="address">通讯地址</label>
				<div class="col-md-9">
					<input class="form-control"name="tongxundizhi""type="text"id="address"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="e_code">邮政编码</label>
				<div class="col-md-9">
					<input class="form-control"name="youzhengbianma""type="text"id="e_code"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="Pnumber">手机号</label>
				<div class="col-md-9">
					<input class="form-control"name="shouji"type="text"id="Pnumber"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="dianhua">固定电话</label>
				<div class="col-md-9">
					<input class="form-control"name="dianhua"type="text"id="dianhua"value="${updateBean.username }"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label"for="email">邮箱</label>
				<div class="col-md-9">
					<input type="text"name="youxiang"class="form-control"id="email">
				</div>
			</div>
			<div class="form-group"></div>
			<div class="form-group">
				<div class="col-md-offset-3 col-md-9">
					<button type="submit"class="btn btn-primary btn-block">注册</button>
				</div>
			</div>
			<!-- 注册成功或失败后的通知 -->
			<c:if test="${param.status.equals('1')}">
				<script type="text/javascript">
			   function error() {
				   var txt=  "注册成功";
					window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
			}
			error();
		</script>
			</c:if> 
			<c:if test="${param.status.equals('2')}">
				<div class="alert alert-danger"role="alert">注册失败</div>
			</c:if> 
			<c:if test="${param.status.equals('3')}">
				<div class="alert alert-danger"role="alert">用户已存在</div>
			</c:if>
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
</body>
</html>
