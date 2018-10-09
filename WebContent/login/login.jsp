<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/xcConfirm.css"/>
		<script src="${pageContext.request.contextPath}/js/js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
		
<style type="text/css">

<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/loginbg.jpg);
	background-repeat: repeat-x;
}
-->
</style>

<style type="text/css">  
        .code   
        {   
            background-image:url(code.jpg);
            font-family:Arial;   
            font-style:italic;   
            color:Red;   
            border:0;   
            padding:2px 3px;   
            letter-spacing:3px;   
            font-weight:bolder;   
        }   
        .unchanged   
        {   
            border:0;   
        }   
    </style>
<script type="text/javascript">
var code ; //在全局 定义验证码   
function createCode()   
{    
  code = "";   
  var codeLength = 6;//验证码的长度   
  var checkCode = document.getElementById("checkCode");   
  var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的   
      
  for(var i=0;i<codeLength;i++)
  {   
    
      
  var charIndex = Math.floor(Math.random()*36);//生成0到36的随机数   
  code +=selectChar[charIndex];//将随机数连成字符串，  生成随机数
     
     
  }   
//alert(code);   
  if(checkCode) //  
  {   
    checkCode.className="code";   
    checkCode.value = code;   
  }     
}
function validateCode() 
{
 var inputCode=document.getElementById("codeCheck").value;
 if(inputCode.length <= 0) 
 {
  
  var txt=  "请输入验证码！";
	window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
 }
 else if(inputCode.toUpperCase() != code.toUpperCase()) 
 {
   var txt=  "验证码输入有误！";
	window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
   createCode();
 }
 else 
 {
	 document.login.submit();
	 
 }    
}  

</script>
</head>
<body bgcolor="#FFFFFF" onload="createCode()">
<!-- Save for Web Slices (待切.psd) -->
<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/adminServlet?method=login" name="login"
				method="post" id="checkForm">
<table width="795" height="475" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
<tr>
		<td colspan="5">
			<img src="images/login_01.jpg" width="795" height="159" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/login_02.jpg" width="269" height="174" alt=""></td>
		<td bgcolor="#CFE5F2">
			<img src="images/login_03.jpg" width="66" height="115" alt=""></td>
		<td colspan="2" bgcolor="#D0E6F3"><table width="100%" height="116" border="0" cellpadding="0" cellspacing="0">
	      <tr>
	        <td colspan="2" align="left" valign="bottom"><input name="username" onclick="J.calendar.get({dir:'right'});" TYPE="text" CLASS="STYLE1" id="username" STYLE="width:180px; height:17px; border:#336699 1px solid" tabindex="1" MAXLENGTH="26"></td>
          </tr>
	      <tr>
	        <td height="32" colspan="2" align="left" valign="bottom"><input name="password" TYPE="password" id="password" CLASS="STYLE1" STYLE="width:180px; height:17px; border:#336699 1px solid" tabindex="1" MAXLENGTH="26"></td>
          </tr>
	      <tr>
	        <td width="50%" height="29" align="left" valign="bottom"><INPUT name="codeCheck" id="codeCheck"  TYPE="text" CLASS="STYLE1" STYLE="width:100px; height:17px; border:#336699 1px solid" tabindex="1" MAXLENGTH="26" id="codeCheck"></td>
            <td width="50%" align="left" valign="bottom"><input type="text" oncopy="return false" onclick="createCode()" readonly="readonly" id="checkCode" class="unchanged" style="width: 75px"  /></td>
            
          </tr>
	      <tr>
	        <td height="30" colspan="1" align="left" valign="bottom">&nbsp;</td>
	      </tr>
      </table></td>
<td rowspan="2">
			<img src="images/login_05.jpg" width="262" height="174" alt=""></td>
	</tr>
	<tr>
		<td colspan="2"><a href="#" onclick="validateCode()" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image12','','images/loging000_06.jpg',1)"><img src="images/login_06.jpg" name="Image12" width="135" height="59" border="0"></a></td>
<td><a href="register.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image13','','images/loging000_07.jpg',1)"><img src="images/login_07.jpg" name="Image13" width="129" height="59" border="0"></a></td>
  </tr>
	<tr>
		<td colspan="5">
			<img src="images/login_08.jpg" width="795" height="141" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="269" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="66" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="69" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="129" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="262" height="1" alt=""></td>
	</tr>
</table>
</form>
<!-- End Save for Web Slices -->
	<c:if test="${param.status.equals('1')}">
		<script type="text/javascript">
			function error() {
				var txt=  "密码或用户名错误";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
			}
			error();
		</script>
	</c:if>

	<script src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.validate.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/myValidate.js" type="text/javascript"></script>
</body>
</html>