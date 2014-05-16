<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
  Guard-ON</strong> 서버 리스트</div>

 <div>
 <center>
  	<table>
     	<tr>
        	<th><input type="checkbox" id="checkboxAll" onchange="javascript:checkAll(this.checked);" /></th>
            <th>서버명</th>
            <th>IP주소</th>
            <th>서버설명</th>
            <th>Health Check</th>
        </tr>
         <c:forEach var="i" items="${serverList}">
         	<tr>
              <td><input type="checkbox" name="temp" value="${i.serverName}" /></td>
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
 	<form action="dbInstall.do" method="post">
   <input type="submit" value="추가등록" />
	<br/>
	<br/>
	</form>
</center>
</div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
  <script>
	$(document).ready(function(){
		
		//paging 관련
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
					/*
					if(tcpCheckCallCount>0){
						tcpCheck(data, callback, index);
						tcpCheckCallCount--;
					} else {
						$(".tcp-check")[index].innerHTML = "FAILURE(ERROR)";
					}
					*/
				}
			});	
		}, index*500);
	}
	
	function pageMove(){
		location.href = "./dbList.do?page="+asyncPaging.options.currentPage;
	}
</script>
</body>
</html>
