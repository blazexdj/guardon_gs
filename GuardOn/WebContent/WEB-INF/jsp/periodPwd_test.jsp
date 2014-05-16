<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 주기적 비밀번호 발급</div>

  <div>
    </br>
    </br>
    </br>
   		<form action="userOtp.do" name="userOtp" method="post"></form>
    
    <center>
    <strong>
    <font size="+3">Period Password :
    <% String userOtp = request.getParameter("userOtp"); %>
    ${userOtp}
    </br>
    </br>
    	주기적 비밀번호 만료일 : 
    	<% String peroidPwd = request.getParameter("periodPwd"); %>
    	${periodPwd} 
    </font>
    </strong>
    </center>

 	
  <!-- end .content --></div>
        </br>
    </br>
    </br>

  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
