<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" href="<%=cp%>/js/__jquery.tablesorter/themes/blue/style.css" type="text/css" media="print, projection, screen" />
<script type="text/javascript" src="<%=cp%>/js/plugin/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/plugin/asyncPaging.js"></script>


<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery-latest.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.tablesorter.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.tablesorter.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.metadata.js"></script>
<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/addons/pager/jquery.tablesorter.pager.js"></script>
 
 
 
 <script type="text/javascript">
 function fc_chk_byte(aro_name,ari_max)
 {

    var ls_str     = aro_name.value; // 이벤트가 일어난 컨트롤의 value 값
    var li_str_len = ls_str.length;  // 전체길이

    // 변수초기화
    var li_max      = ari_max; // 제한할 글자수 크기
    var i           = 0;  // for문에 사용
    var li_byte     = 0;  // 한글일경우는 2 그밗에는 1을 더함
    var li_len      = 0;  // substring하기 위해서 사용
    var ls_one_char = ""; // 한글자씩 검사한다
    var ls_str2     = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.

    for(i=0; i< li_str_len; i++)
    {
       // 한글자추출
       ls_one_char = ls_str.charAt(i);

       // 한글이면 2를 더한다.
       if (escape(ls_one_char).length > 4)
       {
          li_byte += 2;
          $("#type_num").html( li_byte );  
       }
       // 그밗의 경우는 1을 더한다.
       else
       {
          li_byte++;
          $("#type_num").html( li_byte );  
       }

       // 전체 크기가 li_max를 넘지않으면
       if(li_byte <= li_max)
       {
          li_len = i + 1;
       }
    }
   
    // 전체길이를 초과하면
    if(li_byte > li_max)
    {
       alert( li_max + " 글자를 초과 입력할수 없습니다. \n 초과된 내용은 자동으로 삭제 됩니다. ");
       ls_str2 = ls_str.substr(0, li_len);
       aro_name.value = ls_str2;
      
    }
    aro_name.focus();  
 }

 </script>
 <script type="text/javascript">
	$(document).ready(function(){

		asyncPaging.title.previous = "<";
		asyncPaging.title.next = ">";
		asyncPaging.onclick = "pageMove()";
		asyncPaging.init("paging", Number($("#serverListCount").val()), 15, Number($("#currentPage").val()));

		var serverIps = $(".server-ip");
		for(var i=0; i<serverIps.length; i++){
			tcpCheck({ ip: serverIps[i].innerHTML.split(":")[0] }, function(resp, index){
				var result = JSON.parse(resp).result;
				$(".tcp-check")[index].innerHTML = result;
			}, i);
		}
		
		
	});
	
	var tcpCheckCallCount = 10;
	function tcpCheck(data, callback, index){
		setTimeout(function(){
			$.ajax({
				type: "GET",
				cache: false,
				url: "./tcpCheck.do",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data: data,
				success: function(resp, textStatus, jqXHR){
					callback(resp, index);
				}, 
				failure: function(resp, textStatus, jqXHR){
					$(".tcp-check")[index].innerHTML = "FAILURE(ERROR)";
				}
			});	
		}, index*500);
	}
	
	function pageMove(){
		location.href = "./dbList.do?page="+asyncPaging.options.currentPage;
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
  Guard-ON</strong> 외부 사용자 OTP 발급요청(외부)</div>
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
    <center>
    
    <form action="outSendRequest.do" method="post">
		<table id="tablesorter-demo" class="tablesorter" border="0" cellpadding="0" cellspacing="1">
		<thead>
     	<tr>
        	<th></th>
            <th>서버명</th>
            <th>IP주소</th>
            <th>서버설명</th>
            <th>Health Check</th>
        </tr>
        </thead>
         <c:forEach var="i" items="${serverList}">
         	<tr>
              <td><input type="radio" name="checkList" value="${i.serverName}" /></td>
              <td>${i.serverName}</td>
              <td class="server-ip">${i.ipAddress}</td>
              <td>${i.serverDesc}</td>
              <td class="tcp-check"></td>
           </tr>   
         </c:forEach>
     </table>
     <div id="paging" style="height:100px;"></div>
     <input id="currentPage" type="hidden" value="${page}" />
     <input id="serverListCount" type="hidden" value="${serverListCnt}" />
     <table>
     
     <tr>
     	<th>접속 아이디 </th>
     	<td><input type="text" id="connectId" name="connectId"/></td>
     </tr>  
     <tr>
     	<th>요청 사유 </th>
     	<td>
     	<textarea name="requestDesc" id="requestDesc" rows="3" cols="60" onkeyup="fc_chk_byte(this,100);" onkeyup="fc_chk2()" onkeypress="fc_chk2()"></textarea>
     	<label id="type_num">0</label> / 100bytes
     	</td>
     </tr>      
		
	</table>
	<br/>
	<br/>
		  <input type="submit" value="OTP 발급 승인 요청" />
		  <br/>
		 	<br/>
		</form>
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
