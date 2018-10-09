<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看需求信息</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/xcConfirm.css"/>
		<script src="${pageContext.request.contextPath}/js/js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/showdate2.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js"
	type="text/javascript"></script>
	
<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css" />
<script type="text/javascript">
	function search() {
		var name = $("#name").val();
		var status2 = $("#status2").val();
		if (status2 == "-1") {
			status2 = "4";
		}
		//window.location.href = "${pageContext.request.contextPath}/admin/xuqiuServlet?method=searchlist&name=" + name + "&status=" + status2;
	}
</script>
<script type="text/javascript">
var jishu=1;
function jia()
{
	
	if(jishu<=6)
		{
			jishu++;
			var id="#"+jishu;
			if ($(id).css('display') == 'none') 
			{
				$(id).css('display', '');
			}
		}
	else
		{window.wxc.xcConfirm("不能再多了！", window.wxc.xcConfirm.typeEnum.error);}
		
}
function jian()
{
	if(jishu>1)
	{   
		
		var id="#"+jishu;
		$(id).css('display', 'none');
		jishu--;
	}
    else
	{window.wxc.xcConfirm("不能再少了！", window.wxc.xcConfirm.typeEnum.error);}
}
function jianyan()
{
   var state=0;
   var 	id=$("#id").val();
   var idchaxun=$("#idfangshi").val();

   var 	xuqiuname=$("#xuqiuname").val();
   var xuqiunamechaxun=$("#xuqiunamefangshi").val();
   if(xuqiuname!="")
	   {
	   if(xuqiunamechaxun=="-1")
	   {
		   state=0;
		   window.wxc.xcConfirm("请选择需求名称的查询方式！", window.wxc.xcConfirm.typeEnum.error);
	   }
	   else {state=1;}
	   }
   else {state=1;}
   var 	guanjian=$("#guanjian").val();
   var guanjianchaxun=$("#guanjianfangshi").val();
   if(guanjian!="")
	   {
	   if(guanjianchaxun=="-1"){state=0;window.wxc.xcConfirm("请选择关键字的查询方式！", window.wxc.xcConfirm.typeEnum.error);}
	   else
		   {
		   state=1;
		   }
	   }
  
   var 	jigoushuxing=$("#jigoushuxing").val();
   var xuqiujiejuefanghsi=$("#xuqiujiejuefanghsi").val();
   
   var 	kejihuodong=$("#kejihuodong").val();
   var time=$("#time").val();
   var time1=$("#time1").val();
   if(id==""&&xuqiuname==""&&guanjian==""&&jigoushuxing=="-1"&&xuqiujiejuefanghsi=="-1"&&kejihuodong=="-1"&&time==""&&time1=="")
	   {
	   state=0;window.wxc.xcConfirm("请输入查询条件！", window.wxc.xcConfirm.typeEnum.error);
	   }
   
   if(state==1)
	   {
	   document.getElementById("form1").submit();
	   }
   
}


</script>
</head>
<body>
	<div class="container-fluid">
		
		<hr>
		<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/needsearchServlet?method=needsearch"
				method="post" id="form1">
		<table width="90%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="30%">
				<div style="margin-left: 80px">
						<a href="#" onclick="jia()"><img src="${pageContext.request.contextPath}/index/images/jia.jpg"
							width="20" height="20"></a> <a href="#" onclick="jian()"><img
							src="${pageContext.request.contextPath}/index/images/jian.jpg" width="20" height="20"></a>
					</div>
					</td>
				<td width="70%">
					<div id="1" >
					请输入需求编号：<input onkeypress="return handleEnter(this, event)" onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/" type="text" id="id" name="id">&nbsp;&nbsp;&nbsp;&nbsp;
						
					</div>
					
				</td>
				<td>
						<button type="button" class="btn btn-primary" onclick="jianyan();">查询</button>
				</td>
			</tr>
			<tr>
			<td width="20%">
			</td>
			<td width="70%" >
			<div id="2" style="display:none">
			<br>
						请输入需求名称：<input type="text" name="xuqiuname" id="xuqiuname" >&nbsp;&nbsp;&nbsp;&nbsp;
						查询方式： <select name="xuqiunamefangshi" id="xuqiunamefangshi">
							<option value="-1">请选择</option>
							<option value="1">精确查询</option>
							<option value="2">模糊查询</option>
						</select>
						<br>
						<br>
					</div>
					
					<div id="3" style="display:none">
						请输入关键字：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="guanjian" id="guanjian">&nbsp;&nbsp;&nbsp;&nbsp;
						查询方式： <select name="guanjianfangshi" id="guanjianfangshi">
							<option value="-1">请选择</option>
							<option value="1">精确查询</option>
							<option value="2">模糊查询</option>
						</select>
						<br>
						<br>
					</div>
				
					<div id="4" style="display:none">
						请选择机构属性： <select name="jigoushuxing" id="jigoushuxing">
							<option value="-1">请选择</option>
							<option value="企业">企业</option>
							<option value="高等院校">高等院校</option>
							<option value="研究机构">研究机构</option>
							<option value="其他">其他</option>
						</select><br>
						<br>
					</div>
					
					<div id="5" style="display:none">
						请选择技术需求解决方式： <select name="xuqiujiejuefanghsi" id="xuqiujiejuefanghsi">
							<option value="-1">请选择</option>
							<option value="独立开发">独立开发</option>
							<option value="委托研发">委托研发</option>
							<option value="合作研发">合作研发</option>
							<option value="其他">其他</option>
						</select><br>
						<br>
					</div>
					
					<div id="6" style="display:none">
						请选择科技活动类型： <select name="kejihuodong" id="kejihuodong">
							<option value="-1">请选择</option>
							<option value="基础研究">基础研究</option>
							<option value="应用研究">应用研究</option>
							<option value="试验发展">试验发展</option>
							<option value="研究发展与成果应用">研究发展与成果应用 </option>
							<option value="技术推广与科技服务">技术推广与科技服务</option>
							<option value="生产性活动">生产性活动 </option>
						</select><br>
						<br>
					</div>		
					<div id="7" style="display:none">
						请选择施行时间：<input id="time" placeholder="选择时间"
							onClick="return Calendar('time');" type="text"
							name="time"> &nbsp;&nbsp;&nbsp;&nbsp;请选择施行时间：<input
							type="text" id="time1" placeholder="选择时间"
							onClick="return Calendar('time1');" name="time1">
					</div>
				</td>
			<td>
			</td>
			</tr>
		</table>
		</form>
		


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

					<c:forEach items="${zhengjibeanlist }" var="item"
						varStatus="status">
						<tr>
							<td>${item.id }</td>
							<td><a
								href="${pageContext.request.contextPath}/admin/xuqiuServlet?method=search&id=${item.id }">${item.jiname }</a></td>
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
	<c:if test="${param.status.equals('1')}">
		<script type="text/javascript">
			function error() {
				var txt=  "没有符合的内容，请重新查找！！！";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
			}
			error();
		</script>
	</c:if>
</body>
</html>
