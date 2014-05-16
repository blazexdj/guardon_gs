<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>


<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" type="text/css" href="<%=cp %>/style/drag1.css" media="screen" />
<link rel="stylesheet" type="text/css" href="<%=cp %>/style/drag2.css" media="screen" />

<link rel="stylesheet" href="<%=cp%>/js/__jquery.tablesorter/themes/blue/style.css" type="text/css" media="print, projection, screen" />

<script type="text/javascript">

function test1(tr){
	var id = tr.cells[3].innerHTML;
	var name = tr.cells[0].innerHTML;
	var userLevel = tr.cells[2].innerHTML;
	var workflowSteps = document.getElementsByName("workflow-step");
	var item = document.getElementsByName("item");
	var checkIndex = 0;
	for(var i=0; i<workflowSteps.length; i++){
		if(workflowSteps[i].checked){
			checkIndex = i;
			break;
		}
	}
	document.getElementById("userName"+(checkIndex+1)).value = name+" "+userLevel;
	document.getElementById("userId"+(checkIndex+1)).value = id;
	document.getElementById("item"+(checkIndex+1)).value =item;
	
}

</script>

</head>

<body class="dhe-body">

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong>관리자</div>
    <div class="header">
    <p>워크플로우 생성</p>
   </div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="#">일회용 비밀번호 발급</a></li>
      <li><a href="#">주기적 비밀번호 발급</a></li>
      <li><a href="#">개인정보 수정</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
 
	<div class="content">
  
		<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery-latest.js"></script>
		<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.tablesorter.js"></script>
		<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.tablesorter.min.js"></script>
		<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/jquery.metadata.js"></script>
		<script type="text/javascript" src="<%=cp%>/js/__jquery.tablesorter/addons/pager/jquery.tablesorter.pager.js"></script>
		<script type="text/javascript">
		$(function() {
			$("#tablesorter-demo").tablesorter({sortList:[[0,0],[2,1]], widgets: ['zebra']});
			$("#options").tablesorter({sortList: [[0,0]], headers: { 3:{sorter: false}, 4:{sorter: false}}});
		});	
		</script>
		  <h1>직원명단</h1>
		
		 <table id="tablesorter-demo" class="tablesorter" border="0" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>이 름</th>
						<th>부서명</th>
						<th>직급</th>
						<th>사용자 아이디</th>
						<th>전화번호</th>
						<th>E-mail</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${userList}">
			         	<tr onclick="test1(this)">
			            	<td>${i.userName}</td>
			            	<td>${i.userDepartment}</td>
			              <td>${i.userLevel}</td>
			              <td>${i.userId}</td>
			              <td>${i.phoneNumber}</td>
			              <td>${i.userEmail}</td>
			          </tr>   
		         	</c:forEach>
				</tbody>
			</table>
				</div>
				
				<h1>승인순서</h1>
			</div>
	<form action="insertWorkflow.do" method="post" id="center-wrapper" name="workflow">
	<center>
	<div id="workflow" class="workflow">
				<input type="hidden" name="step" id="step" value="">

				<div class="column left first">

					<ul class="sortable-list">
						<li class="sortable-item" id="item1" >
							<input type="radio" name="workflow-step" checked="checked"/>
							<br/>
							<input type="text" id="userName1" name="userName"/>
							<input type="hidden" id="userId1" name="userId">
						</li>
						<li class="sortable-item" id="item2">
							<input type="radio" name="workflow-step" />
							<br/>
							<input type="text" id="userName2" name="userName"/>
							<input type="hidden" id="userId2" name="userId">
						</li>
					</ul>

				</div>

				<div class="column left">

					<ul class="sortable-list">
						<li class="sortable-item" id="item3">
							<input type="radio" name="workflow-step" />
							<br/>
							<input type="text" id="userName3" name="userName"/>
							<input type="hidden" id="userId3" name="userId">
						</li>
						<li class="sortable-item" id="item4">
							<input type="radio" name="workflow-step" />
							<br/>
							<input type="text" id="userName4" name="userName"/>
							<input type="hidden" id="userId4" name="userId">
						</li>
					</ul>

				</div>

				<div class="column left">

					<ul class="sortable-list">
						<li class="sortable-item" id="item5">
							<input type="radio" name="workflow-step" />
							<br/>
							<input type="text" id="userName5" name="userName"/>
							<input type="hidden" id="userId5" name="userId">
						</li>
					</ul>

				</div>
				
				<div class="column left">

					<ul class="sortable-list">
					</ul>

				</div>
				
				<div class="column left">

					<ul class="sortable-list">
					</ul>

				</div>

			</div>
			</center>
					<div class="clearer">&nbsp;</div>
			<center>
			<!-- <p><input type="button" class="input-button" id="btn-get" value="Get items" /></p> -->
			<br/>
			<br/>
			<br/>
		<div style="padding-right: 400px;">			  
		새 워크플로우 이름 : <input type="text" name="workflowName"/>
		<br/>
		<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;
		워크플로우 설명 : <input type="text" name="workflowDesc" style="width: 400px;"/>
		<br/>
		<br/>
		<br/>
		</div>
		<input type="submit" value="워크플로우 등록" onclick="getItem()" class="input-button" id="btn-get" style="height: 35px">
		<br/>
		<br/>
		</center>
	</form>
  <div class="footer">
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>  
<script language="javascript">
function getItems(exampleNr){
		var columns = [];
		var userIdEls = document.getElementsByName('userId');
		var userIds = [];
		var columnNumber;
		var resultMsg = '';
		var arrResult = [];
		
		for(var i=0; i<userIdEls.length; i++){
			userIds.push(userIdEls[i].value);
		}
		
		$(exampleNr + ' ul.sortable-list').each(function(){
			columns.push($(this).sortable('toArray'));
		});
		
	    
		for(var i=0; i<columns.length; i++){
			for(var j=0; j<columns[i].length; j++){
				columnNumber = Number(columns[i][j].replace('item', ''));
				if($('#userId'+columnNumber) && $('#userId'+columnNumber).val()!=''){
					arrResult.push({ userId: $('#userId'+columnNumber).val(), column: i });
				}
			}
		}

		var currentColumn = 0;
		for(var i=0; i<arrResult.length; i++){
			if(resultMsg!=''){
				if(currentColumn==arrResult[i].column){
					resultMsg += ',';	
				} else {
					resultMsg += '|';
					currentColumn = arrResult[i].column;
				}
			} else {
				currentColumn = arrResult[i].column;
			}
			resultMsg += arrResult[i].userId;
		}
		
		console.log(arrResult);
		insertMsg(resultMsg);
		return resultMsg;
	}

	function insertMsg(resultMsg){
		var msg = resultMsg;
		document.workflow.step.value = msg;
	}

	$('#workflow .sortable-list').sortable({	
	connectWith: '#workflow .sortable-list'
	});

	$('#btn-get').click(function(){
		getItems('#workflow');
	});


</script>
</body>
</html>
