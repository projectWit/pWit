<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ page import="com.wit.member.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#tableList {
	border: 1px solid;
	border-collapse: collaps
	e;
	border-bottom-color: black;
	border-bottom-width: 2px;
	border-top-color: black;
	border-top-width: 2px;
	border-left-width: 0px;
	border-right-width: 0px;
}

#Pageing {
	margin: auto;
	margin-top: 15px;
	float: center;
	width: 715px;
	height: 20px;
	padding: 0;
	background: none;
	font-size: 12px;
	text-align: center;
}

.tdtitle {
	background-color: #dbdbdb;
}

input {
	margin-left: 10px;
	height: 17px;
	font-size: 12px;
	vertical-align: middle;
}

textarea {
	margin-left: 10px;
	font-size: 12px;
	margin-top: 5px;
	margin-bottom: 5px;
}

td {
	border-bottom: 1px solid #bdbdbd;
	height: 30px;
	font-size: 12px;
}

th {
	background-color: #F6F6F6;
	border-bottom: 1px solid #bdbdbd;
}

.list_btn {
	margin: auto;
	float: center;
	width: 715px;
	height: 47px;
	padding-top: 10px;
	text-align: center;
}

input.rightnone {
	margin-left: 10px;
	padding: 0 1px 1px 1px;
	height: 16px;
	border: 1px solid #808080;
	border-right: none;
	font-size: 12px;
	line-height: 1.5em;
	vertical-align: middle;
	background: #eff7fd;
}

img {
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: middle;
}
</style>
<script type="text/javascript"	src="/teamP/cooperation/_GM/script/calendar_beans_v2.0.js"	charset="utf-8"></script>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/_GM/script/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var url = 'GMSport.jsp';
	$.post(url, function(data) {
		responseText = data;
		$('#sId').append(responseText);
	});
});
function sendController() {
	document.clubInsFrm.action="clubInsertPro.jsp";
	document.clubInsFrm.submit();
}
function SearchId() {
	window.open("idcheck.jsp", "", "width = 600px, height = 400px");
}
function previewImage(targetObj, View_area) {
	var preview = document.getElementById(View_area); //div id
	var ua = window.navigator.userAgent;

  //ie일때(IE8 이하에서만 작동)
	if (ua.indexOf("MSIE") > -1) {
		targetObj.select();
		try {
			var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
			var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


			if (ie_preview_error) {
				preview.removeChild(ie_preview_error); //error가 있으면 delete
			}

			var img = document.getElementById(View_area); //이미지가 뿌려질 곳

			//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
			img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
		} catch (e) {
			if (!document.getElementById("ie_preview_error_" + View_area)) {
				var info = document.createElement("<p>");
				info.id = "ie_preview_error_" + View_area;
				info.innerHTML = e.name;
				preview.insertBefore(info, null);
			}
		}
  //ie가 아닐때(크롬, 사파리, FF)
	} else {
		var files = targetObj.files;
		for ( var i = 0; i < files.length; i++) {
			var file = files[i];
			var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
			if (!file.type.match(imageType))
				continue;
			var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
			if (prevImg) {
				preview.removeChild(prevImg);
			}
			var img = document.createElement("img"); 
			img.id = "prev_" + View_area;
			img.classList.add("obj");
			img.file = file;
			img.style.width = '200px'; 
			img.style.height = '200px';
			preview.appendChild(img);
			if (window.FileReader) { // FireFox, Chrome, Opera 확인.
				var reader = new FileReader();
				reader.onloadend = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result;
					};
				})(img);
				reader.readAsDataURL(file);
			} else { // safari is not supported FileReader
				//alert('not supported FileReader');
				if (!document.getElementById("sfr_preview_error_"
						+ View_area)) {
					var info = document.createElement("p");
					info.id = "sfr_preview_error_" + View_area;
					info.innerHTML = "not supported FileReader";
					preview.insertBefore(info, null);
				}
			}
		}
	}
}
//-->
</script>
</head>
<body>
<form method="post" action="" name="clubInsFrm" id="clubInsFrm" enctype="multipart/form-data" >
<%
Member member = (Member) session.getAttribute("member");
%>
	<!-----------------------------------바디 시작---------------------------------------------------->
	<div id="sideRight" style="width: 750px">
		<h3>동호회 등록</h3>
		
		<br/>
		
		<table width="715px" align="center" id="tableList">
			<colgroup>
				<col class="cell01">
				<col class="cell04">
				<col>
			<tbody>
				<tr>
					<td rowspan="6" id="View_area" name="View_area"></td>
					<th><label for="cName"><span
							class="login">동호회명</span></label></th>
					<td><input name="cName" class="default"
						id="cName" style="width: 150px; background-color: rgb(255, 255, 255);"
						type="text"></td>

				</tr>

				<tr>
					<th><label for="cPresident">회장</label></th>
					<td><input type="text" name="cPresident" id="cPresident" value="<%=member.getmName() %>" readonly="readonly"/></td>
				</tr>

				<tr>
					<th><label for="cManagerName">총무</label></th>
					<td><input type="hidden" id="cManager" name="cManager" /><input type="text" id="cManagerName" name="cManagerName" /> <img src="img/search_btn.gif" style="cursor:pointer;" onclick="SearchId()"/></td>
				</tr>
				
				<tr>
					<th><label for="sId">종목</label></th>
					<td><select id="sId" name="sId" style="margin-left: 10px;">
					</select></td>
				</tr>



				<tr>
					<th><label for="cHomepage">홈페이지 주소</label></th>
					<td>
					<input type="text" id="cHomepage" name="cHomepage"  style="width:350px;"/>
					</td>
				</tr>

				<tr>
					<th><label for="sEDay">앰블럼</label></th>
					<td><input name="cEmblem" type="file" id="cEmblem" class="graybox" size="70" style="height: 20px;" onchange="previewImage(this,'View_area')" />
					</td>
				</tr>





			</tbody>
		</table>
		<br />
		<hr />
		<br />

		<div style="text-align:center">
			<img src="img/bt_submit.jpg" onclick="sendController()" style="cursor:pointer"/>&nbsp;&nbsp;&nbsp;<img src="img/bt_cancle.jpg" style="cursor:pointer" onclick="form.reset(); return false;"/>
		</div>
	</div>
	<br/>
	<br/>	
	</form>
</body>

<script type="text/javascript">
	CalAddCss(); // !!제일 상단에 필수!!
	initCal({id : "sSDay",	type : "day",	today : "y",icon : "y"	});
	initCal({id : "sEDay",	type : "day",	today : "y",icon : "y"	});
</script>
<!-----------------------------------바디 끝---------------------------------------------------->

</html>