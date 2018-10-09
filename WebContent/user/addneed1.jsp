<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/xcConfirm.css"/>
		<script src="${pageContext.request.contextPath}/js/js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/showdate2.js"></script>
  
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js" type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/js/jquery.validate.js" type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/static/js/myValidate.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		var shuxing = "${userbean.jigoushuxing }";
		if(shuxing == "企业")
			$("#qi").attr("checked","checked");
		if(shuxing == "高等院校")
			$("#xiao").attr("checked","checked");
		if(shuxing == "研究机构")
			$("#yan").attr("checked","checked");
		if(shuxing == "其他")
			$("#ta").attr("checked","checked");
		
		var type = "${needbean.type }"
		if(type == "基础研究")
			$("#jichu").attr("checked","checked");
		if(type == "应用研究")
			$("#yingyong").attr("checked","checked");
		if(type == "试验发展")
			$("#shiyan").attr("checked","checked");
		if(type == "研究发展与成果应用")
			$("#yanjiu").attr("checked","checked");
		if(type == "技术推广与科技服务")
			$("#jishu").attr("checked","checked");
		if(type == "生产性活动 ")
			$("#shengchan").attr("checked","checked");
		
		
		var lingyu = "${needbean.lingyu }";
		var lingyu1 = lingyu.split(",");
		for(var i=0;i<lingyu1.length;i++)
		{
			$("#"+lingyu1[i]).attr("checked","checked");
		}
		var xueke = "${needbean.xueke }";
		$("") 
		
		
		
		$("#jichu").click(function(){
			//alert($("#lingyu").css("display"))
			$("#xueke").css("display","block");
			$("#lingyu").css("display","none");
			$("#hangye").css("display","none");
		});
		$("#yingyong").click(function(){
			alert($("#lingyu").css("display"));
			if($("#lingyu").css("display") == "none")//如果领域不显示，则学科不显示，领域显示，否则不边变
			{
				$("#xueke").css("display","none");
				$("#lingyu").css("display","block");
				$("#hangye").css("display","block");
			}
		});
		$("#shiyan").click(function(){
			if($("#lingyu").css("display") == "none")//如果领域不显示，则学科不显示，领域显示，否则不边变
			{
				$("#xueke").css("display","none");
				$("#lingyu").css("display","block");
				$("#hangye").css("display","block");
			}
		});
		$("#yanjiu").click(function(){
			if($("#lingyu").css("display") == "none")//如果领域不显示，则学科不显示，领域显示，否则不边变
			{
				$("#xueke").css("display","none");
				$("#lingyu").css("display","block");
				$("#hangye").css("display","block");
			}
		});
		$("#jishu").click(function(){
			if($("#lingyu").css("display") == "none")//如果领域不显示，则学科不显示，领域显示，否则不边变
			{
				$("#xueke").css("display","none");
				$("#lingyu").css("display","block");
				$("#hangye").css("display","block");
			}
		});
		$("#shengchan").click(function(){
			if($("#lingyu").css("display") == "none")//如果领域不显示，则学科不显示，领域显示，否则不边变
			{
				$("#xueke").css("display","none");
				$("#lingyu").css("display","block");
				$("#hangye").css("display","block");
			}
		});
		
		
	})
</script>
<script type="text/javascript">
function twoxueke(obj) {
	var id = obj.value;
	if (id > 0) {
		$.post(
				"${pageContext.request.contextPath}/admin/xuqiuServlet",
				{
					method : "erjixueke",
					id : id
				},
				function(data) {
					
					if (data != null && data.length > 0) 
					{

						var content = "<select style=height:30px name='twxueke' id='twxueke'> <option value='0'>-- 请选择二级学科 --</option>";
						for (var city in data) 
						{
							content += "<option value='" + data[city].name + "'>"+ data[city].name + "</option>"; 
						}
						content += "</select>";
						$("#xueke2").html(content);
					}
				}, "json");
	}

}

</script>

<script type="text/javascript">
function twohangye(obj) {
	
	var id = obj.value;
	if (id > 0) {
		$.post(
				"${pageContext.request.contextPath}/NeedServlet",
				{
					method : "getTwohangye",
					id : id
				},
				function(data) {
					if (data != null && data.length > 0) {
						//alert(data.length);
						var content = "<select name='twhangye' id='twhangye'> <option value='0'>-- 请选择二级行业 --</option>";
						for (var city in data) {
							content += "<option value='" + data[city].twohangye + "'>"
								+ data[city].twohangye + "</option>";
						}
						content += "</select>";
						$("#hangye2").html(content);
					}
				}, "json");
	}
	
}
function onexueke() {
	var content="<td colspan='4' style=text-align:center;><strong>学科分类</strong></td>";
	content+="<td colspan='8' style=border:0><strong>学科分类</strong></td>";
	
	$("#ss").html(content);
}
</script>
<script type="text/javascript">

function jiancha()
{
	var jiname=$("#jiname").val();
	if(jiname=="")
		{
		alert('机构名称不能为空！');
		}
	var tongxundizhi=$("#tongxundizhi").val();
	if(tongxundizhi=="")
	{
	alert('通讯地址不能为空！');
	}
	var suozaidiyu=$("#suozaidiyu").val();
	
	var dianzixinxiang=$("#dianzixinxiang").val();
	var farendaibiao=$("#farendaibiao").val();
	
	var lianxi=$("#lianxi").val();
	var dianhua=$("#dianhua").val();
	var shouji=$("#shouji").val();
	
	var jigoushuxing=$("#jigoushuxing").val();
	var jigoujianjie=$("#jigoujianjie").val();
	var jishuxuqiuname=$("#jishuxuqiuname").val();
	var xuqiuqianyear=$("#xuqiuqianyear").val();
	var xuqiuhouyear=$("#xuqiuhouyear").val();
	var xuqiugaishu=$("#xuqiugaishu").val();
	var guanjian1=$("#guanjian1").val();
	var guanjian2=$("#guanjian2").val();
	var guanjian3=$("#guanjian3").val();
	var guanjian4=$("#guanjian4").val();
	var guanjian5=$("#guanjian5").val();
	var xuqiujiejuefangshi=$("#xuqiujiejuefangshi").val();
	var kejihuodongleixing=$("#kejihuodongleixing").val();
	
}
</script>
<script type="text/javascript">
    function handleEnter(field, event) {
        var keyCode = event.keyCode ? event.keyCode : event.which ? event.which
                : event.charCode;
        if (keyCode == 13) {
            var i;
            for (i = 0; i < field.form.elements.length; i++)
                if (field == field.form.elements[i])
                    break;
            i = (i + 1) % field.form.elements.length;
            field.form.elements[i].focus();
            return false;
        } else
            return true;
    }
</script>

<body style="background-color:#dceefc" onload= "javascript:document.getElementById( 'jiname').focus();">
	<h3 align="center">河北省重大技术需求征集表</h3>
	<hr>
	<center>
	<form  action="${pageContext.request.contextPath}/admin/xuqiuServlet?method=addneed&id=${user.id }"  method="post">
		<table border="1px" width="860px" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>机构全称</td>
				<td colspan="5"><input onkeypress="return handleEnter(this, event)" id="jiname" type="text"  name="jiname" style="border:0;width:270px;height:30px"value="${user.danwei }" maxlength="30"/></td>
				<td width="150px" style=text-align:center>归口管理部门</td>
				<td colspan="3"><input onkeypress="return handleEnter(this, event)" height="40px" type="text" name="guikou" style="border:0;width:220px;;height:30px" value="" maxlength="30"></td>
			</tr>
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>通讯地址</td>
				<td colspan="5"><input onkeypress="return handleEnter(this, event)"  id="tongxundizhi" type="text" name="tongxundizhi" style="border:0;width:270px;;height:30px" value="${user.tongxundizhi }" maxlength="30"></td>
				<td width="150px" style=text-align:center><font style="color:red">*</font>所在地域</td>
				<td colspan="3"><input onkeypress="return handleEnter(this, event)"  type="text" name="suozaidiyu" style="border:0;width:220px;;height:30px" value="${user.shi }" maxlength="30"></td>
			</tr>
			<tr height="40px">
				<td colspan="4" style=text-align:center>网址</td>
				<td colspan="5"><input onkeypress="return handleEnter(this, event)" type="text" name="wangzhi" style="border:0;width:270px;;height:30px" value=""></td>
				<td width="150px" style=text-align:center><font style="color:red">*</font>电子信箱</td>
				<td colspan="3"><input onkeypress="return handleEnter(this, event)" type="text"  name="dianzixinxiang" style="border:0;width:220px;;height:30px" value="${user.youxiang}"></td>
			</tr>
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>法人代表</td>
				<td colspan="5"><input onkeypress="return handleEnter(this, event)"  type="text" name="farendaibiao" style="border:0;width:270px;;height:30px" value="" maxlength="30"></td>
				<td width="150px" style=text-align:center>邮政编码</td>
				<td colspan="3"><input onkeypress="return handleEnter(this, event)" type="text" name="youzhengbianma" style="border:0;width:220px;;height:30px" value="${user.youzhengbianma }"></td>
			</tr>
			
			<tr height="40px">
				<td rowspan="2" colspan="4" style=text-align:center> <font style="color:red">*</font>联系人</td>
				<td rowspan="2" colspan="3" ><input onkeypress="return handleEnter(this, event)" type="text" name="lianxi" style="border:0;width:220px;;height:30px" value="${user.name }"></td>
				<td colspan="2" style=text-align:center><font style="color:red">*</font>电话</td>
				<td colspan="3">
					1.固定:<input onkeypress="return handleEnter(this, event)" type="text"  name="dianhua" style="border:0;width:140px;height:30px" value="${user.dianhua }">
					2.手机:<input onkeypress="return handleEnter(this, event)" type="text" name="shouji" style="border:0;width:140px;height:30px" value="${user.shouji }">
				</td>
			</tr>
			
			<tr height="40px">
				
				<td colspan="2" style=text-align:center>传真</td>
				<td colspan="3"><input onkeypress="return handleEnter(this, event)" type="text" name="chuangzhen" style="border:0;width:220px;;height:30px" value=""></td>
			</tr>
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><strong><font style="color:red">*</font>机构属性</strong></td>
				<td colspan="8">
					 
					<input onkeypress="return handleEnter(this, event)" type="radio" name="jigoushuxing" id="qi" value="企业">企业
					<input onkeypress="return handleEnter(this, event)" type="radio" name="jigoushuxing" id="xiao" value="高等院校">高等院校
					<input onkeypress="return handleEnter(this, event)" type="radio" name="jigoushuxing" id="yan" value="研究机构">研究机构
					<input onkeypress="return handleEnter(this, event)" type="radio" name="jigoushuxing" id="ta" value="其他">其他
				</td>
			</tr>
			
			
				<tr height="40px">
					<td colspan="12" ><font style="color:red">*</font>机构简介(主要包括基本情况、现有研究基础等，<font style="color:red">限500字以内</font>)</td>
				</tr>
				<tr>
					<td colspan="12" style="height: 150px">
						<textarea  onkeypress="return handleEnter(this, event)" name="jigoujianjie"rows="8" cols="150" style="border:0" maxlength="500" 
							onchange="this.value=this.value.substring(0, 500)" 
							onkeydown="this.value=this.value.substring(0, 500)" 
							onkeyup="this.value=this.value.substring(0, 500)" ></textarea>
					</td>
				</tr>
			
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><strong><font style="color:red">*</font>技术需求名称</strong></td>
				<td colspan="3"><input onkeypress="return handleEnter(this, event)" type="text" name="jishuxuqiuname" style="border:0;width:220px;;height:30px"></td>
				<td colspan="2"><strong><font style="color:red">*</font>需求时限</strong></td>
				<td colspan="3"><input  onkeypress="return handleEnter(this, event)" id="time" placeholder="选择时间" onClick="return Calendar('time');" type="text" name="xuqiuqianyear"style="border:0;height:30px">年至
					<input type="text" onkeypress="return handleEnter(this, event)" id="time1" placeholder="选择时间" onClick="return Calendar('time1');" name="xuqiuhouyear" style="border:0;height:30px">年	
				</td>
			</tr>
			
			
				<tr height="100px"><td colspan="12" style="border:1;line-height:30px" colspan="4"><strong><font style="color:red">*</font>技术需求概述<br>
				1、主要问题（需要解决的重大技术问题，<font style="color:red">限500字以内</font>）<br>
				2、技术关键（所需的关键技术、主要指标，<font style="color:red">限500字以内</font>）<br>
				3、预期目标（技术创新性、经济社会效益，，<font style="color:red">限500字以内</font>）<br>
				</strong></td></tr>
				
				<tr height="40px">
					<td colspan="12" style="height: 150px">
						<textarea onkeypress="return handleEnter(this, event)" name="xuqiugaishu" rows="8" cols="120" style="border:0" maxlength="500" 
							onchange="this.value=this.value.substring(0, 500)" 
							onkeydown="this.value=this.value.substring(0, 500)" 
							onkeyup="this.value=this.value.substring(0, 500)"></textarea>
					</td>
				</tr>
			
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font><strong>关键字:</strong>
				<td colspan="8">
				<input onkeypress="return handleEnter(this, event)" type="text" style="border:1px;width:123px;height:30px" name="guanjian1">&nbsp;
				<input onkeypress="return handleEnter(this, event)"  type="text" style="border:1px;width:123px;height:30px" name="guanjian2">&nbsp;
				<input onkeypress="return handleEnter(this, event)" type="text" style="border:1px;width:123px;height:30px" name="guanjian3">&nbsp;
				<input onkeypress="return handleEnter(this, event)" type="text" style="border:1px;width:123px;height:30px" name="guanjian4">&nbsp;
				<input onkeypress="return handleEnter(this, event)" type="text" style="border:1px;width:123px;height:30px" name="guanjian5">
				</td>
			</tr>
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><strong>拟投资金额</strong>
				<td colspan="8" ><input onkeypress="return handleEnter(this, event)" onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/" type="text" name="jine" style="border:0px;width:220px;height:30px">&nbsp;万元</td>
			</tr>
			
			<tr height="40px">
				<td rowspan="2" colspan="4" style=text-align:center><strong><font style="color:red">*</font>技术需求解决方式</strong></td>
				<td colspan="8">
					<input onkeypress="return handleEnter(this, event)" type="radio" name="xuqiujiejuefangshi" value="独立开发">独立开发&nbsp;
					<input onkeypress="return handleEnter(this, event)" type="radio" name="xuqiujiejuefangshi" value="委托研发">委托研发&nbsp;
					<input onkeypress="return handleEnter(this, event)" type="radio" name="xuqiujiejuefangshi" value="技术入股">合作研发&nbsp;
					<input onkeypress="return handleEnter(this, event)" type="radio" name="xuqiujiejuefangshi" value="合作开发">其他
				</td>
			</tr>
			
			<tr height="40px">
				
				<td colspan="8" >合作意向单位:<input onkeypress="return handleEnter(this, event)" type="text" name="hezuodanwei" style="border:1px;width:220px;height:30px">(选填)</td>
			</tr>
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><strong><font style="color:red">*</font>科技活动类型</strong></td>
				<td colspan="8">
					<input type="radio" onchange="onexueke()" name="kejihuodongleixing" id="jichu"  value="基础研究">基础研究&nbsp;
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究">应用研究&nbsp;
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展">试验发展&nbsp;
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用">研究发展与成果应用&nbsp;
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务">技术推广与科技服务<br>
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动">生产性活动&nbsp;
				</td>
			</tr>
			<tr height="40px" id="ss">
			</tr>
			</table>
			<table id="xueke" border="1px" width="860px" cellpadding="0" cellspacing="0" style="display:none;border-collapse:collapse">

				<tr height="40px">
					<td  style=text-align:center;width:146px><strong>学科分类</strong></td>
					<td style=border:0;width:180px>
						<select style=height:30px name="xuekenfenlei" class="form-control"
								onchange="twoxueke(this)" id="firstxueke">
								<option value="0"  >-- 请选择一级学科 --</option>
								<c:forEach items="${xuekeBeans }" var="item">
									<option value="${item.id }">${item.name }</option>
								</c:forEach>
							</select>
					</td>
					<td id="xueke2"  style="border:0"></td>
				</tr>
			</table>
			<table style="display:none;border-collapse:collapse" width="860px" id="lingyu" border="1px" cellpadding="0" cellspacing="0">
			<tr height="60px">
				<td style=text-align:center;width:146px><strong>需求技术所属领域</strong></td>
				<td style=width:714px>
					<input type="checkbox" name="lingyu" id="dianzixinxi" value="电子信息">电子信息&nbsp;
					<input type="checkbox" name="lingyu" id="guangjidian" value="光机电一体化 ">光机电一体化 &nbsp;
					<input type="checkbox" name="lingyu" id="shengwu" value="生物技术与制药">生物技术与制药&nbsp;
					<input type="checkbox" name="lingyu" id="xincailiao" value="新材料及应用">新材料及应用&nbsp;
					<input type="checkbox" name="lingyu" id="xiandai" value="现代农业">现代农业<br>
					<input type="checkbox" name="lingyu" id="xinnengyuan" value="新能源与高效节能">新能源与高效节能&nbsp;
					<input type="checkbox" name="lingyu" id="ziyuan" value="资源与环境">资源与环境&nbsp;
					<input type="checkbox" name="lingyu" id="gaojishu" value="高技术服务业">高技术服务业&nbsp;
					<input type="checkbox" name="lingyu" id="haiyang" value="海洋">海洋&nbsp;
					<input type="checkbox" name="lingyu" id="shehui" value="社会公共事业">社会公共事业<br>
					<input type="checkbox" name="lingyu" id="yiliao" value="医疗卫生">医疗卫生
					<input type="checkbox" name="lingyu" id="qita"   value="其它（注明）">其它（注明）
				</td>
			</tr>
			<tr height="40px">
					<td colspan="1"><strong>需求技术应用行业</strong></td>
					<td style="border:0">
						<select style=height:30px name="hangye" class="form-control"
								onchange="twohangye(this)" id="firsthangye">
								<option value="0">-- 请选择行业 --</option>
								<c:forEach items="${hangyeBeans }" var="item">
									<option value="${item.id}">${item.name }</option>
								</c:forEach>
							</select>
					</td>
					<td id="hangye2" colspan="4"></td>
				</tr>
			</table>
			
			
		<br><br>
		<button type="submit"  class="btn btn-primary" >保存并提交</button>
	</form>
	</center>
	<c:if test="${param.status.equals('1')}">
		<script type="text/javascript">
			function error() {
				var txt=  "填报成功！";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
			}
			error();
		</script>
	</c:if>
</body>
</html>