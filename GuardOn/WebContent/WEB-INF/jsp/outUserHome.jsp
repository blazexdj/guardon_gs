<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" href="<%=cp%>/style/plugin/asyncPaging.css" type="text/css" media="print, projection, screen" />
<script type="text/javascript" src="<%=cp%>/js/plugin/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/plugin/asyncPaging.js"></script>
</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 외부 사용자</div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="outUserOtpRequest.do">일회용 비밀번호 발급요청</a></li>
      <li><a href="outUserOtpPretreatment.do">일회용 비밀번호 발급</a></li>
      <li><a href="outPeriodPwdServerSelect.do">주기적 비밀번호 발급요청</a></li>
      <li><a href="outPeriodPwdList.do">주기적 비밀번호 발급현황</a></li>
      <li><a href="updateUser.do">개인정보 수정</a></li>
      <li><a href="userLogout.do">로그아웃</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
  <div class="content">
    <h1>&nbsp;</h1>
    <center>

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
