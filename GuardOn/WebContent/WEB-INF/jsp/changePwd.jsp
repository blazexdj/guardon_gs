<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
  Guard-ON</strong> 변경사항</div>

<div class="sidebar1">
    <ul class="nav">
      <li><a href="#">일회용 발급 요청 리스트</a></li>
      <li><a href="#">주기적 발급 요청 리스트</a></li>
      <li><a href="#">사용자 일괄-선택 비밀번호 발급</a></li>
      <li><a href="#">개인정보 수정</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>

  <div>
  </br>
  </br>
<center>
      	 <table>
     	<tr>
            <th>이름</th>
            <th>부서명</th>
            <th>OTP</th>
        </tr>
         <c:forEach var="i" items="${resultList}">
         	<tr>
                <td>${i.userName}</td>
                <td>${i.userDepartment}</td>
                <td>${i.userOtp}</td>
            </tr>
         </c:forEach>
     </table>
  </center>  
  <br>
  <center>
  	<strong>
     <font size="5px">상기 명단의 사용자의 비밀번호가 변경되었습니다.
     </font> 
     </strong>
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
