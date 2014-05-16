<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
	<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
	<link rel="stylesheet" type="text/css" href="<%=cp%>/style/drag1.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<%=cp%>/style/drag2.css" media="screen" />
</head>

<body class="dhe-body">
	<div id="center-wrapper">
		<div id="workflow">

				<p><input type="submit" class="input-button" id="btn-get" value="Get items" /></p>

				<div class="column left first">

					<ul class="sortable-list">
						<li class="sortable-item" id="A">Sortable item A</li>
						<li class="sortable-item" id="B">Sortable item B</li>
					</ul>

				</div>

				<div class="column left">

					<ul class="sortable-list">
						<li class="sortable-item" id="C">Sortable item C</li>
						<li class="sortable-item" id="D">Sortable item D</li>
					</ul>

				</div>

				<div class="column left">

					<ul class="sortable-list">
						<li class="sortable-item" id="E">Sortable item E</li>
					</ul>

				</div>
		</div>
					<div class="clearer">&nbsp;</div>
</div>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
	
	
<script language="javascript">
function getItems(exampleNr)
	{
		var columns = [];

		$(exampleNr + ' ul.sortable-list').each(function(){
			columns.push($(this).sortable('toArray'));				
		});

		return columns.join('|');
	}
	
	$(document).ready(function(){
	$('#example-1-4 .sortable-list').sortable({
		connectWith: '#example-1-4 .sortable-list',
		containment: '#containment'
	});
	});

	$('#workflow .sortable-list').sortable({
		connectWith: '#workflow .sortable-list'
	});

	$('#btn-get').click(function(){
		alert(getItems('#workflow'));
	});
	</script>

</body>
</html>
