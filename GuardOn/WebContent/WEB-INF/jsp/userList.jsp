
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<% String cp=request.getContextPath(); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />

<script>
    function checkAll(value) {
        var checkboxList = document.getElementsByName("temp");
        for (var i = 0; i < checkboxList.length; i++) {
            checkboxList[i].checked = value;
        }
    }
</script>
</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 사용자 리스트</div>

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
  <strong> 
  
  </strong>
  	 <center>
  	 <table>
     	<tr>
        	<th><input type="checkbox" id="checkboxAll" onchange="javascript:checkAll(this.checked);" /></th>
            <th>아이디</th>
            <th>이름</th>
            <th>부서명</th>
        </tr>
         <c:forEach var="i" items="${userList}">
         	<tr>
            	<td><input type="checkbox" name="temp" value="${i.userId}" /></td>
                <td>${i.userId}</td>
                <td>${i.userName}</td>
                <td>${i.userDepartment}</td>
            </tr>
         </c:forEach>
     </table>
    
  <br/>
  <br/>
   <form action="changePwd.do" method="post">
     <input type="submit" class="content" value="비밀번호 변경"/>
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
