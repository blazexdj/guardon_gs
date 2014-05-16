<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String cp = request.getContextPath();
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title> Add User </title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/style/portal/magic_common.css" />
<script type="text/javascript" src="<%=cp %>/js/jquery/jquery.form.js"></script>
<script src="http://code.jquery.com/jquery-1.7.1.js"></script>
<style type="text/css">
<!--
#InsertUser1 {
	position:absolute;
	width:1000px;
	height:1130px;
	z-index:1;
	left: 50%;
	margin-left: -500px;
}
#InsertUser2 {
	position:absolute;
	width:950px;
	height:810px;
	z-index:1;
	left: 18px;
	top: 31px;
}
#InsertUser29 {
	position:absolute;
	width:950px;
	height:730px;
	z-index:2;
	left: 0px;
	top: 90px;
}
#InsertUser3 {
	position:absolute;
	width:120px;
	height:30px;
	z-index:2;
	left: 850px;
	top: 3px;
}
#InsertUser30 {
	position:absolute;
	width:120px;
	height:30px;
	z-index:2;
	left: 195px;
	top: 160px;
}
#InsertUser_image {
	position:absolute;
	width:170px;
	height:200px;
	z-index:2;
	top: 38px;
	left: 780px;
}
#apDiv1 {
	position:absolute;
	width:150px;
	height:50px;
	z-index:2;
	left: 770px;
	top: 740px;
}

-->
</style>
 
 <script type="text/javascript">
 	
	function filecheck(obj, i) {  // 이미지 파일만 업로드 가능하게 체크
		
		pathpoint = obj.value.lastIndexOf('.');
		filepoint = obj.value.substring(pathpoint + 1, obj.value.length);
		filetype = filepoint.toLowerCase();

		if (filetype == 'jpg' || filetype == 'gif' || filetype == 'png'
				|| filetype == 'jpeg' || filetype == 'bmp') {
			preview(obj, i);
			return;
		} else {
			alert("이미지만 업로드 가능합니다.");
			return;
		}
	}

	function preview(obj) { // 미리보기 변경 
		var update_image_view = document.getElementById('InsertUser_image');
			
		var img_path = "";
		
		var ua = window.navigator.userAgent;
		
		if (ua.indexOf("MSIE") > -1) {
			if (obj.value.indexOf("\\fakepath\\") < 0) {
				img_path = obj.value;
			} else {
				obj.select();
				var selectionRange = document.selection.createRange();
				img_path = selectionRange.text.toString();
				obj.blur();
			}
			update_image_view.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='fi"
					+ "le://" + img_path + "', sizingMethod='scale')";
		} else {
			update_image_view.innerHTML = "";
			var W = update_image_view.offsetWidth;
			var H = update_image_view.offsetHeight;
			var tempImage = document.createElement("img");
			update_image_view.appendChild(tempImage);

			tempImage.onerror = function() {
				return update_image_view.innerHTML = "";
			}
			tempImage.onload = function() {
				if (this.width > W) {
					this.height = this.height / (this.width / W);
					this.width = W;
				}
				if (this.height > H) {
					this.width = this.width / (this.height / H);
					this.height = H;
				}
			}
			if (ua.indexOf("Firefox/3") > -1) {
				var picData = obj.files.item(0).getasDataURL();
				update_image_view.src = picData;
			} else {
				tempImage.src = "file://" + obj.value;
			}

		}

	}
	
 	var httpRequest = null;
	/////아이디 유효성 체크
	function idduplicate(url){
		var sId = document.getElementById("userId").value;
		if(sId.length < 4){
			alert("3자이상 입력하셔야합니다.");
			duplicate.close();
		} else if(sId.length > 15){
			alert("15자이하로 입력하셔야합니다.");
			duplicate.close();
		}
		httpRequest = new XMLHttpRequest();
		httpRequest.onreadystatechange=CheckId;
		httpRequest.open("POST", url, true);
		httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		httpRequest.send("userId="+sId); 
	}
	function CheckId(){
 		if(httpRequest.readyState ==4){
 			if(httpRequest.status==200){
 				var span = document.getElementById("userIdCheck");
 				var xml = httpRequest.responseXML;
 				var result = xml.getElementsByTagName("result")[0].firstChild.nodeValue;
 				span.innerText=result;
 			}
 		}
 	}
	//////닉네임 유효성 체크
	function nickduplicate(url){
		var sId = document.getElementById("userNick").value;
		if(sId.length < 4){
			alert("3자이상 입력하셔야합니다.");
			duplicate.close();
		} else if(sId.length > 15){
			alert("15자이하로 입력하셔야합니다.");
			duplicate.close();
		}
		httpRequest = new XMLHttpRequest();
		httpRequest.onreadystatechange=CheckNick;
		httpRequest.open("POST", url, true);
		httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		httpRequest.send("userNick="+sId); 
	}
	function CheckNick(){
 		if(httpRequest.readyState ==4){
 			if(httpRequest.status==200){
 				var span = document.getElementById("nickCheck");
 				var xml = httpRequest.responseXML;
 				var result = xml.getElementsByTagName("result")[0].firstChild.nodeValue;
 				span.innerText=result;
 			}
 		}
 	}
 	
 	function findZip(){//우편번호 검색팝업 호출
		window.open("searchZip.do","","width=450,height=400, status=no,scrollbars=yes");		
	}
	

	//메일 체인지 
	function changeMail() {
		var f = document.insert;
		var str = f.selectMail.value;
			if (str != "direct") {
				f.userEmail2.value = str;
				f.userEmail2.readOnly = true;
				f.userEmail1.focus();
			} else {
				f.userEmail2.value = "";
				f.userEmail2.readOnly = false;
				f.userEmail1.focus();
			}
	}
	function sendIt(userDiv){
		var f = document.insert;
		f.action = "insertUser.do?userDiv=NOR";	
		f.method = "POST";
		f.submit();
	}
	// 파일전송//////////////잠시보류
	/* function FileuploadCallback(data, state) {
		if (data == "error") {
			alert("파일전송중 오류가 발생하였습니다.\n다시한번 시도해주세요.");
			
			return false;
		}
		alert("파일전송이 완료되었습니다.");
	}

	
	$(function() {
		//메인 파일전송??
			var frm = $('#upform');
			frm.ajaxForm(FileuploadCallback);
			frm.submit(function() {
				return false;
			});
	});
	
	function fileUpload() {
		
		 if (!$('#imageup').val()) {
			alert("파일을 선택하세요.");
			$('#imageup').focus();
			return;
		}
		var frm;
		frm = $('#upform');
		frm.attr("action", "insertUserPhoto.do");
		frm.submit();
	} */
</script>
</head>
<body>
	<center>
	
	<div id="InsertUser1">
  	<div id="InsertUser2">
    <!-- <img src="<%=request.getContextPath()%>/images/user/3_1.png" width="915" height="770" /> -->
    <div id="InsertUser28">
      <table width="950" height="80" border="0">
        <tr>
          <td ><img src="<%=request.getContextPath()%>/images/user/adduser_1.png" width="950px" height="90px" /></td>
        </tr>
      </table>
    </div>
    <div id="InsertUser29">
    <form name="insert" id="insert" enctype="multipart/form-data">
      <div id="InsertUser3"><img src="<%=request.getContextPath()%>/images/user/adduser_pil.png"/></div>
    
    <table width="950" height="30"  border="0">
    	<tr align="left">
        	<td align="left"></td>
        </tr>
    </table>

      <table width="950" height="702" class="table" border="0">
        

        <tr>
          <td width="150" class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;이 름</font></td>
          <td class="table3"><input type="text" name="userName" class="format" style="width:200px; height:20px;"/></td>
          <td width="150" rowspan="2" class="table3"><div id="InsertUser_image" style="background: url('<%=cp%>/images/user/noperson.jpg') no-repeat center ;
		  																			background-size: 150px 200px;"></div></td>
        </tr>
        <tr>
          <td class="table2" ><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;아이디</font></td>
          <td class="table3" height="100"><input type="text" name="userId" id="userId" class="format" style="width:200px; height:20px;"/>&nbsp;<input type="button" value="중복확인" class="button" style="width:100px; height:22px;" onClick="idduplicate('checkUserId.do')"/>
            <span id="userIdCheck"></span>

            <div id="InsertUser30"><img src="<%=request.getContextPath()%>/images/user/adduser_3.png"/></div></td>
          </tr>
        <tr>
          <td class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;닉네임</font></td>
          <td class="table3"><input type="text" name="userNick" id="userNick" class="format" style="width:200px; height:20px;"/>&nbsp;<input type="button" value="중복확인" class="button" style="width:100px; height:22px;" onClick="nickduplicate('checkUserNick.do')"/>
          <span id="nickCheck"></span></td>
          <td class="table3"></td>
        </tr>
        <tr>
          <td class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;비밀번호</font></td>
          <td class="table3"><input type="password" name="userPwd" class="format" style="width:200px; height:20px;"/></td>
          <td class="table3">&nbsp;</td>
        </tr>
        <tr>
          <td class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;비밀번호 확인</font></td>
          <td class="table3"><input type="password" name="confirmPwd" class="format" style="width:200px; height:20px;"/></td>
          <td class="table3">&nbsp;</td>
        </tr>
        <tr>
          <td class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;E-MAIL</font></td>
          <td class="table3"><input name="userEmail1" type="text" style="width:200px; height:20px;" value="" class="format"/>&nbsp;@
	    		<input name="userEmail2" type="text" readonly="readonly" style="width:200px; height:20px;" value="" class="format"/>
	    		<select name="selectMail" style="width:100px; height:25px;" onChange="changeMail();" class="select">
					<option>&nbsp;&nbsp;선택하세요&nbsp;</option>
	    			<option value="naver.com">&nbsp;&nbsp;네이버&nbsp;</option>
	    			<option value="nate.com">&nbsp;&nbsp;네이트&nbsp;</option>
	    			<option value="yahoo.com">&nbsp;&nbsp;야후&nbsp;</option>
	    			<option value="gmail.com">&nbsp;&nbsp;지메일&nbsp;</option>
	    			<option value="hanmail.net">&nbsp;&nbsp;한메일&nbsp;</option>
					<option value="direct">&nbsp;&nbsp;직접입력&nbsp;</option>
	    		</select>
	    </td>
          <td class="table3">&nbsp;</td>
        </tr>
        <tr>
          <td class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;주 소</font></td>
		  <td class="table3"><input name="zip1" type="text" style="width:80px; height:20px;" value="" class="format" />&nbsp; &nbsp;-&nbsp; &nbsp;<input name="zip2" type="text" style="width:80px; height:20px;" value="" class="format" />&nbsp;
		    <input name="input" type="button" value="우편번호검색" class="button" style="width:100px; height:22px; padding: 0px; " onClick="findZip()"/>
		    <br/>
		<input type="hidden" name="zipnum" value=""/><br/>
		<input name="userAddr1" id="Addr1" type="text" value=""  style="width: 425px; height:20px;" class="format"/><br/><br/>
		<input name="userAddr2" type="text" style="width: 425px; height:20px;" class="format" /></td>
          <td class="table3">&nbsp;</td>
        </tr>     
        <tr>
          <td height="56" class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;휴대전화</font></td>
          <td class="table3"><select name="userCp1" class="select" style="width:100px; height:25px;">
	    			<option value="010" >&nbsp; &nbsp;010&nbsp; &nbsp;</option>
	    			<option value="011" >&nbsp; &nbsp;011&nbsp; &nbsp;</option>
	    			<option value="016" >&nbsp; &nbsp;016&nbsp; &nbsp;</option>
	    			<option value="017" >&nbsp; &nbsp;017&nbsp; &nbsp;</option>
	    			<option value="018" >&nbsp; &nbsp;018&nbsp; &nbsp;</option>
	    			<option value="019" >&nbsp; &nbsp;019&nbsp; &nbsp;</option>
    		  </select>&nbsp; &nbsp;-&nbsp; &nbsp; 
	    		<input name="userCp2" type="text" maxlength="4" style="width:100px; height:20px;" value="" class="format"/>
	    		&nbsp; &nbsp;-&nbsp; &nbsp;  
	    		<input name="userCp3" type="text" maxlength="4" style="width:100px; height:20px;" value="" class="format"/></td>
          <td class="table3">&nbsp;</td>
        </tr>
        <tr>
          <td class="table2"><img src="<%=request.getContextPath()%>/images/user/accept.png" border="0" width="12px" height="12px" style="margin-top: 8px;" /><font class="h2">&nbsp;사진첨부</font></td>
		
          <td class="table3">
          	<!-- <form method="post" id="upform" name="upform" enctype="multipart/form-data"> -->
          	<input type="file" name="imageup" id="imageup" onChange="filecheck(this);" class="button" style="width:200px; height:25px;" />
			<!-- <input type="button" name="fileupload" id="fileupload" class="button" onclick="fileUpload();" value="파일첨부하기" style="width:100px; height:33px;" /> -->
          	<!-- </form> -->
		  </td>
		  <!-- NOR / FARM_ADMIN -->
          <td class="table3"><input type="hidden" name="userDiv" value="NOR" /></td>
        </tr>
      </table>
	  <div id="apDiv1">
	  	<input type="button" value="가입" class="button" onClick="sendIt('NOR');"/>
		<input type="button" value="취소" class="button" onclick="javascript:history.back()" />
	  </div>
      </form>  
    </div>
  </div>
  
</div>
</center>
</body>
</html>