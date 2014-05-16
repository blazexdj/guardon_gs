<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<script src="/home/djk/workspace_01/GuardOn/WebContent/js/calendar_beans_v2.2/calendar_beans_v2.2.js" type="text/javascript" charset="utf-8"></script>
<script src="/home/djk/workspace_01/GuardOn/WebContent/js/calendar_beans_v2.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/home/djk/workspace_01/GuardOn/WebContent/js/calendar_beans_v2.2/jquery.mask.min.js" type="text/javascript" charset="utf-8"></script>

</head>

<body>

<div class="container">
  <div class="header">
  
  <strong>
    <!-- end .header -->
  Guard-ON</strong> 외주 사용자
  </div>
  <div class="header"></strong>
   <ui>
   지정기간 비밀번호 발급
  <ui></div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="#">일회용 비밀번호 발급</a></li>
      <li><a href="#">지정기간 비밀번호 발급</a></li>
      <li><a href="#">개인정보 수정</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
  <div class="content">
    
    <table> 
  <tr>
  <td width="676">
	<h2>지정기간 비밀번호 발급</h2>
  </td>
    </tr>
    <tr>
    <td height="47">
    &nbsp;&nbsp;&nbsp;시작일 : <input type="text" id="startDate">
    <script type="text/javascript">						
			/*
				id		:텍스트박스Id   // *필수
				type	:day,mon	    // 둘중 하나입력		,기본값> 일달력 출력
				minYear :xxxx			// 최소년도 4자리 입력	,기본값> 2000
				maxYear :xxxx  			// 최대년도 4자리 입력	,기본값> 현재년도
				splitKey:'-','/'		// 달력 구분값        	,기본값> '-'
				todayYN :'y','n'		// today 표시         	,기본값> 안보여주기
				iconYN  :'y','n'		// 달력그림표시여부	  	,기본값> 안보여주기
				iconUrl :fullUrl 혹은 해당위치 상대경로 url'	,기본값> jquery 사이트 달력
			 */
			initCal({id:"startDate",type:"day",today:"y",icon:"y"});									
</script>


    </td>
    </tr>
    <tr>
    <td height="48">
    &nbsp;&nbsp;&nbsp;종료일 : <input type="text" id="endDate">
    <script type="text/javascript">						
			/*
				id		:텍스트박스Id   // *필수
				type	:day,mon	    // 둘중 하나입력		,기본값> 일달력 출력
				minYear :xxxx			// 최소년도 4자리 입력	,기본값> 2000
				maxYear :xxxx  			// 최대년도 4자리 입력	,기본값> 현재년도
				splitKey:'-','/'		// 달력 구분값        	,기본값> '-'
				todayYN :'y','n'		// today 표시         	,기본값> 안보여주기
				iconYN  :'y','n'		// 달력그림표시여부	  	,기본값> 안보여주기
				iconUrl :fullUrl 혹은 해당위치 상대경로 url'	,기본값> jquery 사이트 달력
			 */
			initCal({id:"endDate",type:"day",today:"y",icon:"y"});									
</script>
    
    </td>
    </tr>
    <tr>
    <td height="190"><p>요청 사유 
      </p>
      <p>
        <textarea id="approvalDesc" style="width:550px;height:100px"></textarea>
      </p></td>
    </tr>
    
    </table>
    
    <!-- end .content --></div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
