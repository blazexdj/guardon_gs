<%@ page contentType="text/html; charset=UTF-8"%>
<%
 String cp = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/style/portal/magic_common.css" />
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" /></head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> LogIn</div>

  <div>
  <center>
<form action="userLogin.do" method="post">
<br/>
<br/>
<br/>
<br/>
<pre>
아 이 디	<input type="text" name="userId" id="userId" />
<br/>
비밀번호	<input type="password" name="userPwd" id="userPwd" />
<br/>
<br/>
</pre>
<br/>
<br/>
<center>
<input type="submit" value="Login" style="height:50px; width:100px;"/> 
<a href="userJoin.do">
<input type="button" value="회원가입" style="height:50px; width:100px;"/>
</a>
</center>
<br/>
<br/>
</form>
<!-- 
<form action="userJoin.do" method="post">
<input type="submit" value="회원가입" style="height:50px; width:100px;">
</form>
 -->
<br/>
<br/>

</center>
    <!-- end .content --></div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
