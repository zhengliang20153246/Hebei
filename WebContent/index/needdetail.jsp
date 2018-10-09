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
		var shuxing = "${zhengjibeanbean.jigoushuxing }";
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
				"${pageContext.request.contextPath}/admin/xuqizhengjibeanvlet",
				{
					method : "erjixueke",
					id : id
				},
				function(data) {
					
					if (data != null && data.length > 0) 
					{

						var content = "<select name='twxueke' id='twxueke'> <option value='0'>-- 请选择二级学科 --</option>";
						for (var city in data) {
							content += "<option value='" + data[city].name + "'>"
								+ data[city].name + "</option>"; 
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

</script>

<body style="background-color:#dceefc">
	<h3 align="center">河北省重大技术需求征集表</h3>
	<hr>
	<center>
	<form action="${pageContext.request.contextPath}/admin/xuqiuServlet?method=needlist" method="post">
		<table border="1px" width="860px" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>机构全称</td>
				<td colspan="5">${zhengjibean.jiname }</td>
				<td width="150px" style=text-align:center>归口管理部门</td>
				<td colspan="3">${zhengjibean.guikou }</td>
			</tr>
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>通讯地址</td>
				<td colspan="5">${zhengjibean.tongxundizhi }</td>
				<td  width="150px" style=text-align:center><font style="color:red">*</font>所在地域</td>
				<td colspan="3">${zhengjibean.suozaidiyu }</td>
			</tr>
			<tr height="40px">
				<td colspan="4" style=text-align:center>网址</td>
				<td colspan="5">${zhengjibean.wangzhi }</td>
				<td  width="150px" style=text-align:center><font style="color:red">*</font>电子信箱</td>
				<td colspan="3">${zhengjibean.dianzixinxiang}</td>
			</tr>
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>法人代表</td>
				<td colspan="5">${zhengjibean.farendaibiao}</td>
				<td  width="150px" style=text-align:center>邮政编码</td>
				<td colspan="3">${zhengjibean.youzhengbianma }</td>
			</tr>
			
			<tr height="40px">
				<td rowspan="2" colspan="4" style=text-align:center><font style="color:red">*</font>联系人</td>
				<td rowspan="2" width="150px">${zhengjibean.lianxi }</td>
				<td colspan="4" style=text-align:center><font style="color:red">*</font>电话</td>
				<td width="150px" style=text-align:center>固定:${zhengjibean.dianhua }</td>
				<td colspan="2" >手机:${zhengjibean.shouji }</td>
			</tr>
			
			<tr height="40px">
				
				<td colspan="4" style=text-align:center>传真</td>
				<td colspan="3">${zhengjibean.chuangzhen }</td>
			</tr>
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>机构属性</strong></td>
				<td colspan="8">
					<c:if test="${zhengjibean.jigoushuxing.equals('企业')}">
					<input type="radio" name="jigoushuxing" id="qi" value="企业" checked="checked">企业
					<input type="radio" name="jigoushuxing" id="xiao" value="高等院校" disabled="disabled">高等院校
					<input type="radio" name="jigoushuxing" id="yan" value="研究机构" disabled="disabled">研究机构
					<input type="radio" name="jigoushuxing" id="ta" value="其他" disabled="disabled">其他
					</c:if>
					<c:if test="${zhengjibean.jigoushuxing.equals('高等院校')}">
					<input type="radio" name="jigoushuxing" id="qi" value="企业" disabled="disabled">企业
					<input type="radio" name="jigoushuxing" id="xiao" value="高等院校" checked="checked">高等院校
					<input type="radio" name="jigoushuxing" id="yan" value="研究机构" disabled="disabled">研究机构
					<input type="radio" name="jigoushuxing" id="ta" value="其他" disabled="disabled">其他
					</c:if>
					<c:if test="${zhengjibean.jigoushuxing.equals('研究机构')}">
					<input type="radio" name="jigoushuxing" id="qi" value="企业" disabled="disabled">企业
					<input type="radio" name="jigoushuxing" id="xiao" value="高等院校" disabled="disabled">高等院校
					<input type="radio" name="jigoushuxing" id="yan" value="研究机构"checked="checked">研究机构
					<input type="radio" name="jigoushuxing" id="ta" value="其他" disabled="disabled">其他
					</c:if>
					<c:if test="${zhengjibean.jigoushuxing.equals('其他')}">
					<input type="radio" name="jigoushuxing" id="qi" value="企业" disabled="disabled">企业
					<input type="radio" name="jigoushuxing" id="xiao" value="高等院校" disabled="disabled">高等院校
					<input type="radio" name="jigoushuxing" id="yan" value="研究机构" disabled="disabled">研究机构
					<input type="radio" name="jigoushuxing" id="ta" value="其他" checked="checked">其他
					</c:if>
				</td>
			</tr>
			
			<tr height="40px">
					<td colspan="4" style="height: 150px;text-align:center"><font style="color:red">*</font>机构简介</td>
				
					<td colspan="8" >${zhengjibean.jigoujianjie }
					</td>

			</tr>
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>技术需求名称</strong></td>
				<td colspan="5">${zhengjibean.jishuxuqiuname }</td>
				<td width="150px" style=text-align:center>需求时限<strong></td>
				<td colspan="3">${zhengjibean.xuqiuqianyear }&nbsp;年至
					${zhengjibean.xuqiuhouyear }&nbsp;年
				</td>
			</tr>
			
			<tr height="40px">
					<td colspan="4" style="height: 150px;text-align:center"><font style="color:red">*</font>技术需求概述</td>
				
					<td colspan="8" style="height: 150px">${zhengjibean.xuqiugaishu }
					</td>

			</tr>
			
			
			<tr height="40px">
				<td colspan="4" style=text-align:center><font style="color:red">*</font>关键字
				<td colspan="8">
				${zhengjibean.guanjian1 }&nbsp;
				${zhengjibean.guanjian2 }&nbsp;
				${zhengjibean.guanjian3 }&nbsp;
				${zhengjibean.guanjian4 }&nbsp;
				${zhengjibean.guanjian5 }
				</td>
			</tr>
			
			<tr height="40px">
				<td colspan="4" style=text-align:center>拟投资金额
				<td colspan="8" >${zhengjibean.jine}万元</td>
			</tr>
			
			<tr height="40px">
				<td rowspan="2" colspan="4" style=text-align:center>技术需求解决方式</strong></td>
				<td colspan="8">
					<c:if test="${zhengjibean.xuqiujiejuefangshi.equals('独立开发')}">
					<input type="radio" name="xuqiujiejuefangshi" value="独立开发"   checked="checked">独立开发
					<input type="radio" name="xuqiujiejuefangshi" value="委托研发"  disabled="disabled">委托研发
					<input type="radio" name="xuqiujiejuefangshi" value="技术入股"  disabled="disabled">合作研发
					<input type="radio" name="xuqiujiejuefangshi" value="合作开发" disabled="disabled">其他
					</c:if>
					<c:if test="${zhengjibean.xuqiujiejuefangshi.equals('委托研发')}">
					<input type="radio" name="xuqiujiejuefangshi" value="独立开发"  disabled="disabled">独立开发
					<input type="radio" name="xuqiujiejuefangshi" value="委托研发"  checked="checked">委托研发
					<input type="radio" name="xuqiujiejuefangshi" value="技术入股"  disabled="disabled">合作研发
					<input type="radio" name="xuqiujiejuefangshi" value="合作开发" disabled="disabled">其他
					</c:if>
					<c:if test="${zhengjibean.xuqiujiejuefangshi.equals('合作研发')}">
					<input type="radio" name="xuqiujiejuefangshi" value="独立开发" disabled="disabled">独立开发
					<input type="radio" name="xuqiujiejuefangshi" value="委托研发"  disabled="disabled">委托研发
					<input type="radio" name="xuqiujiejuefangshi" value="技术入股"  checked="checked">合作研发
					<input type="radio" name="xuqiujiejuefangshi" value="合作开发" disabled="disabled">其他
					</c:if>
					<c:if test="${zhengjibean.xuqiujiejuefangshi.equals('其他')}">
				    <input type="radio" name="xuqiujiejuefangshi" value="独立开发" disabled="disabled" >独立开发
					<input type="radio" name="xuqiujiejuefangshi" value="委托研发" disabled="disabled">委托研发
					<input type="radio" name="xuqiujiejuefangshi" value="技术入股"  disabled="disabled">合作研发
					<input type="radio" name="xuqiujiejuefangshi" value="合作开发"  checked="checked">其他
					</c:if>
				</td>
			</tr>
				
			<tr height="40px">
				
				<td colspan="8">合作意向单位:${zhengjibean.hezuodanwei}</td>
			</tr>
			
			<tr height="40px">
				<td colspan="4"style=text-align:center><font style="color:red">*</font>科技活动类型</strong></td>
				<td colspan="8">
				<c:if test="${zhengjibean.kejihuodongleixing.equals('基础研究')}">
					<input type="radio" name="kejihuodongleixing" id="jichu" value="基础研究" checked="checked">基础研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究" disabled="disabled">应用研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展" disabled="disabled">试验发展
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用" disabled="disabled">研究发展与成果应用
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务" disabled="disabled">技术推广与科技服务
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动" disabled="disabled">生产性活动
				</c:if>
				<c:if test="${zhengjibean.kejihuodongleixing.equals('应用研究')}">
					<input type="radio" name="kejihuodongleixing" id="jichu" value="基础研究" disabled="disabled">基础研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究" checked="checked">应用研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展" disabled="disabled">试验发展
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用" disabled="disabled">研究发展与成果应用
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务" disabled="disabled">技术推广与科技服务
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动" disabled="disabled">生产性活动
				</c:if>
				<c:if test="${zhengjibean.kejihuodongleixing.equals('试验发展')}">
					<input type="radio" name="kejihuodongleixing" id="jichu" value="基础研究" disabled="disabled">基础研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究" disabled="disabled">应用研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展" checked="checked">试验发展
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用" disabled="disabled">研究发展与成果应用
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务" disabled="disabled">技术推广与科技服务
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动" disabled="disabled">生产性活动
				</c:if>
				<c:if test="${zhengjibean.kejihuodongleixing.equals('研究发展与成果应用')}">
					<input type="radio" name="kejihuodongleixing" id="jichu" value="基础研究" disabled="disabled">基础研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究" disabled="disabled">应用研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展" disabled="disabled">试验发展
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用" checked="checked">研究发展与成果应用
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务" disabled="disabled">技术推广与科技服务
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动" disabled="disabled">生产性活动
				</c:if>
				<c:if test="${zhengjibean.kejihuodongleixing.equals('技术推广与科技服务')}">
					<input type="radio" name="kejihuodongleixing" id="jichu" value="基础研究" disabled="disabled">基础研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究" disabled="disabled">应用研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展" disabled="disabled">试验发展
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用" disabled="disabled">研究发展与成果应用
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务" checked="checked">技术推广与科技服务
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动" disabled="disabled">生产性活动
				</c:if>
				<c:if test="${zhengjibean.kejihuodongleixing.equals('生产性活动')}">
					<input type="radio" name="kejihuodongleixing" id="jichu" value="基础研究" disabled="disabled">基础研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="应用研究" disabled="disabled">应用研究
					<input type="radio" name="kejihuodongleixing" id="shiyan" value="试验发展" disabled="disabled">试验发展
					<input type="radio" name="kejihuodongleixing" id="yanjiu" value="研究发展与成果应用" disabled="disabled">研究发展与成果应用
					<input type="radio" name="kejihuodongleixing" id="jishu" value="技术推广与科技服务" disabled="disabled">技术推广与科技服务
					<input type="radio" name="kejihuodongleixing" id="shengchan" value="生产性活动" checked="checked">生产性活动
				</c:if>
				</td>
			</tr>
			</table>
		<br><br>
		<button type="submit" class="btn btn-primary">返回</button>
	</form>
	</center>
	
</body>
</html>