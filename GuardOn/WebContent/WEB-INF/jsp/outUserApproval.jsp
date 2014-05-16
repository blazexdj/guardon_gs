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
  Guard-ON</strong> 외주 사용자</div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="#">일회용 비밀번호 발급</a></li>
      <li><a href="#">지정기간 비밀번호 발급</a></li>
      <li><a href="#">개인정보 수정</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
  <div >
    <h1>&nbsp;</h1>
    <center>
    
    <form action="userLogin.do" method="post">
		  <input type="submit" class="content" value="돌아가기" />
		  <br/>
		 	<br/>
		</form>
	<strong>
    <font size="+3">
    <% String message = request.getParameter("message"); %>
    ${message}
    </font>
    </strong>
    </center>
         <br/>
		 	<br/>
        
    <!-- end .content --></div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
