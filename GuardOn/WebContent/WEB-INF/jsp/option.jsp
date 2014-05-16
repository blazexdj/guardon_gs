<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />

</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong>관리자</div>
    <div class="header">
   <ul>
   설  정
  </ul></div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="approvalUserList.do">비밀번호 발급 요청 리스트</a></li>
      <li><a href="changeAllList.do">사용자 일괄-선택 비밀번호 발급</a></li>
      <li><a href="updateUser.do">개인정보 수정</a></li>
       <li><a href="option.do">관리자 설정</a></li>
      <li><a href="userLogout.do">로그아웃</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
  <div class="content">
  <table> 
  <tr>
  <td width="676">
	<h2>비밀번호 설정</h2>
  </td>
    </tr>
    <tr>
    <td height="47">
    &nbsp;&nbsp;&nbsp;비밀번호 자릿수 : <select name="pwdLevel" id="pwdLevel" >
    <option value="10" > 10 </option>
    <option value="11" > 11 </option>
    <option value="12" > 12 </option>
    <option value="13" > 13 </option>
    <option value="14" > 14 </option>
    <option value="15" > 15 </option>
    <option value="16" > 16 </option>
    <option value="17" > 17 </option>
    <option value="18" > 18 </option>
    <option value="19" > 19 </option>
    <option value="20" > 20 </option>
    </select>
    (10~20 자리까지 설정)</td>
    </tr>
    <tr>
    <td height="48">
    &nbsp;&nbsp;&nbsp;OTP 적용시간 : 
    <select name="otpTime" id="otpTime">
    <option value="30" > 30 </option>
    <option value="40" > 40 </option>
    <option value="50" > 50 </option>
    <option value="60" > 60 </option>
    <option value="70" > 70 </option>
    <option value="80" > 80 </option>
    <option value="90" > 90 </option>
    <option value="100" > 100 </option>
    <option value="110" > 110 </option>
    <option value="120" > 120 </option>
    <option value="130" > 130 </option>
    <option value="140" > 140 </option>
    <option value="150" > 150 </option>
    <option value="160" > 160 </option>
    <option value="170" > 170 </option>
    <option value="180" > 180 </option>
    
    </select> 
     (30초~180초 까지 설정)</td>
    </tr>
    <tr>
    <td height="48">
    &nbsp;&nbsp;&nbsp;로그인 입력실패 횟수 : <select name="loginFailedCount" id="loginFailedCount" >
    <option value="2" > 2 </option>
    <option value="3" > 3 </option>
    <option value="4" > 4 </option>
    <option value="5" > 5 </option>
    <option value="6" > 6 </option>
    <option value="7" > 7 </option>
    <option value="8" > 8 </option>
    <option value="9" > 9 </option>
    <option value="10" >10 </option>
    </select>
     (2회~10회 까지 설정)</td>
    </tr>
    
    <tr>
    	<td height="48">
    		&nbsp;&nbsp;&nbsp;비밀번호 복잡도 : <select name="pwdComplexity" id="pwdComplexity" >
    			<option value="Low" > Low </option>
    			<option value="High" > High </option>
    	</td>
    
    </tr>
    
    </table>
<br>
<br>
<br>
</form>
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
