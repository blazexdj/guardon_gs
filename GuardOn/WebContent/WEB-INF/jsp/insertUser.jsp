<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" /></head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 회원가입</div>

 <div>
 <center>
 	<form action="insertUser.do" method="post">
<pre>
아이디		<input type="text" name="userId" id="userId" />
<br/>
비밀번호 	<input type="password" name="userPwd" id="userPwd" />
<br/>
<br/>
이	름 	<input type="text" name="userName" id="userName" />
<br/>
<br/>
부 서 명 	<input type="text" name="userDepartMent" id="userDepartment" /> 
			[외주사용자는 업체명을 입력하세요]
			
<br/>
<br/>

가입자 직위 <input>

<br/>
<br/>
전화번호 	<input type="text" name="phoneNumber" id="phoneNumber" /> 
			['-' 없이 입력하세요]
<br/>
<br/>
</pre>
<input type="radio" name="userType" value="admin" /> 관리자
<input type="radio" name="userType" value="user" /> 내부사용자
<input type="radio" name="userType" value="outUser" /> 외부사용자
<br/>
<br/>
<input type="submit" value="회원가입" />
</form>
</center>
</div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
