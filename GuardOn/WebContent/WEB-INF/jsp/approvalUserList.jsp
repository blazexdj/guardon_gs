<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% String cp=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>

<link rel="stylesheet" href="<%=cp%>/js/__jquery.tablesorter/themes/blue/style.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />

<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery-latest.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.tablesorter.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.tablesorter.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.metadata.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/addons/pager/jquery.tablesorter.pager.js"></script>

<script type="text/javascript">

function checkAll(value) {
    var checkboxList = document.getElementsByName("temp");
    for (var i = 0; i < checkboxList.length; i++) {
        checkboxList[i].checked = value;
    }
}

function submitForm1() {
	var form = document.forms['test_form'];
	var serverName = document.getElementsByName("temp");
	var check = false;
	
	for (var i = 0; i < serverName.length; i++) {
		if(serverName[i].checked!=""){
			check=true;
			break;
		}
	}
	
	if (check==false) {
		alert("하나 이상의 서버를 체크해 주십시오");
	}
	if(check==true){
		form.action = 'updateApproved.do';
		form.submit();
	}
	}
	
	
	function submitForm2() {
	var form = document.forms['test_form'];
	var serverName = document.getElementsByName("temp");
	var check = false;
	
	for (var i = 0; i < serverName.length; i++) {
		if(serverName[i].checked!=""){
			check=true;
			break;
		}
	}
	
	if (check==false) {
		alert("하나 이상의 서버를 체크해 주십시오");
	}
	if(check==true){
		form.action = 'updateRejected.do';
		form.submit();
	}	
	} 
</script>
<script type="text/javascript">
$(function() {		
	$("#tablesorter-demo").tablesorter({sortList:[[0,0],[2,1]], widgets: ['zebra']});
	$("#options").tablesorter({sortList: [[0,0]], headers: { 3:{sorter: false}, 4:{sorter: false}}});
});	

</script>
</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 비밀번호 발급 요청 리스트(관리자)</div>

<div class="sidebar1">
    <ul class="nav">
      <li><a href="approvalUserList.do">비밀번호 발급 요청 리스트</a></li>
      <li><a href="changeAllList.do">사용자 일괄-선택 비밀번호 발급</a></li>
      <li><a href="updateUser.do">개인정보 수정</a></li>
      
      <li><a href="userLogout.do">로그아웃</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>

  <div class="content">

  	 <center>
   <form name="test_form" style="width: 780px">
     <table id="tablesorter-demo" class="tablesorter" border="0" cellpadding="0" cellspacing="1" width="780px">
     	<thead>
     	<tr>
        	<th><input type="checkbox" id="checkboxAll" onchange="javascript:checkAll(this.checked);" /></th>
            <th>서버명</th>
            <th width="200">요청내용</th>
            <th>접속아이디</th>
            <th>사용자아이디</th>
            <th>비밀번호 타입</th>
            <th>시작일</th>
            <th>종료일</th>
        </tr>
        </thead>
         <c:forEach var="i" items="${requestList}">
         	<tr>
              <td><input type="checkbox" name="temp" value="${i.serverName},${i.connectId},${i.userId},${i.pwdType}" /></td>
              <td>${i.serverName}</td>
              <td style="word-break:break-all">${i.requestDesc}</td>
              <td>${i.connectId}</td>
              <td>${i.userId}</td>
              <td>${i.pwdType}</td>
              <td>${i.startDate}</td>
              <td>${i.endDate}</td>
           </tr>   
         </c:forEach>
     </table>
     <div id="paging" style="height:100px;"></div>
     <input id="currentPage" type="hidden" value="${page}" />
     <input id="serverListCount" type="hidden" value="${serverListCnt}" />
     
     <input type="button" value="승  인" onclick="submitForm1();"> 
	 <input type="button" value="반  려" onclick="submitForm2();"> 
   
   
   

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
