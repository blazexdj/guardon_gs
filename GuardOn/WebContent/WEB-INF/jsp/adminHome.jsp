<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" /></head>
<script src="http://code.jquery.com/jquery-1.7.1.js"></script>


<script language="javascript">
	$(document).ready(function(){
		check();
			
		function check(){
			setInterval(function(){
				$.ajax({
					type: "GET",
					url: "./checkApproval.do",
					data: {
						
					},
					contentType : "charset=UTF-8",
					success: function(response, textStatus, jqXHR){
						var uncheckString = "승인해야함";
						//var message ="승인 요청이 도착 했습니다.";
						
						if(uncheckString==response){
							//console.log('특정함수');
							//console.log(musicOn());
							playSound ( 'beep');
							//alert(message,self.setInterval(check(), 20*1000));
							//confirm(message);
						} else {
							console.log('승인 완료됨');
						}
					}, 
					failure: function(response, textStatus, jqXHR){
						alert("failure");
					}
				});	
			}, 10000);	
		}
	});
</script>

<script type="text/javascript">

	function playSound ( soundname )
	{
	  var thissound = document.getElementById( soundname );
	  thissound.play();
	  alert( "Played " + soundname );
	}

/*
		function musicOff() { 
		document.midi.stop();
		}
		 
		function musicOn() {
			document.player.Play();
		}
		*/
</script>

<body>
<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong>관리자</div>
    <div class="header"></div>
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
    <h1>&nbsp;</h1>
  
 <audio src="<%=cp%>/media/output.wav" id="beep" autostart="false"></audio>
  
  <!-- 
  <embed id="player" src="<%=cp%>/media/output.wav" autoplay="false" />
   -->
    <!-- end .content --></div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
  
  <!--
  <object type="audio/x-mpeg" data="<%=cp%>/media/request.mp3" name="player">
		<param  id="player" name="autoplay" value="false" />
</object>
-->
</body>
</html>
