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
	<c:if test="${param.status.equals('1')}">
		<script type="text/javascript">
			function error() {
				alert('填报成功！！！')
			}
			error();
		</script>
	</c:if>
</body>
</html>