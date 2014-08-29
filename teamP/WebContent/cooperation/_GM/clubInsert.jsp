<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="robots" content="noindex,nofollow">
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>

<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/base.css" />

<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/layout1.css" />

<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/table.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/menu.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/print.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/etc.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/setting.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/window.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/_GM/css/tax.css" />


<title>동호회 등록</title>


<meta name="viewport" content="width=device-width, initial-scale = 1">
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<script language="javascript" type="text/javascript">
$(document).ready(function() {
	var url='GMSport.jsp';
    $.get(url, function(data) {
    	responseText = data;
    	$('#sId').append(responseText);
    });
});
function sendController() {
	alert("submit");
	document.form.action="/teamP/clubInsert.gm";
	document.form.submit();
	
}
</script>
</head>
<body>

	<form method="get" action="" name="form" id="form" enctype="multipart/form-data">
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>GM 동호회 등록</strong>
				</div>
				<div class="title-rightarea">
					<span class="btn-setting" onclick="fnShowOption(); return false"></span>
					<!-- 옵션레이어 -->
					<ul class="option_box_new">
						<li><a onclick="EtcCodeClick();">추가항목등록</a></li>
					</ul>
				</div>
			</div>

			<div id="contents">
				<table summary="" class="entry H_15px" style="height:350px; font-size:16px;">
					<col width="20%" span="1" />
					<col width="20%" span="2" />
					<col width="20%" span="1" />
					<col width="30%" span="2" />
					<col width="" />
					<tr>
						<td rowspan="6" class="center white"><img id="imgEmpPhoto"
							src="img/trigger.jpg" style="height: 150px; width: 140px;" /></td>
						
						<th>동호회명</th>
						<td><input name="cName" type="text" value="Trigger"
							maxlength="50" id="txtEmpKname" class="default"
							style="width: 160px;" /></td>
						<th>종목</th>
						<td><select name="sId" id="sId">
						</select></td>
					</tr>
					<tr>
						<th>동호회 회장</th>
						<td><input name="cPresident" type="text" maxlength="50"
							value="고쌤" id="txtEmpHname" class="default"
							style="width: 160px;" /></td>
						<th>동호회 총무</th>
						<td><input name="cManager" type="text" maxlength="50"
							value="고쌤2" id="txtEmpEname" class="default"
							style="width: 160px;" /></td>
					</tr>
					
					<tr>
						<th>회장 전화</th>
						<td><input name="txtTelNo" type="text" value="010-3096-0955"
							maxlength="20" id="txtTelNo" class="default"
							onkeydown="jsOnlyNumberKey4(this);"
							style="width: 160px; ime-mode: disabled" /></td>
						<th>총무 전화</th>
						<td><input name="txtHpNo1" type="text" maxlength="20"
							value="010-1234-8714" id="txtHpNo1" class="default"
							onkeydown="jsOnlyNumberKey4(this);"
							style="width: 160px; ime-mode: disabled" /></td>
					</tr>
					<tr>
						<th>홈페이지/블로그</th>
						<td colspan="3"><input type="text" maxlength="80" name="cHomepage"
							value="http://www.naver.com" id="txtEmpEname" class="default"
							style="width: 250px;" /></td>
						<!--  클래스 이름 수정 필요함 아이디와 -->
					</tr>

					<tr>
						<th>주소</th>
						<td colspan="4"><a href="#" id="btnSearchPostNo"
							name="btnSearchPostNo" class="link-blue"
							onclick="fnSearchZipCode('txtPostNo1','txtPostNo2','txtJuso','txtJuso');">우편번호검색</a>
							<br/><br/>
							<input name="cPost" type="text"
							id="txtPostNo1" class="default" style="width: 240px;" /><br/><br/><input
							name="cAddr" type="text" id="txtPostNo2"
							class="default" style="width: 300px;" /></td>
					</tr>

					<tr>
						<th>엠블럼 <a href="javascript:;"
							onclick="alert('권장 사진 크기\n가로:140픽셀(3.7 Cm)\n높이:150픽셀(3.8 Cm)');"><img
								src="img/icon_q.jpg" width="14px"
								height="13px" alt="" /></a></th>
						<td colspan="4"><input name="file" type="file" id="file"
							class="graybox" size="70" style="height: 20px;" /></td>
					</tr>
				</table>
				<br/>
				<div style="text-align:center">
				<img src="img/bt_submit.jpg" onclick="sendController()"/>&nbsp;&nbsp;&nbsp;<img src="img/bt_cancle.jpg" style="cursor:pointer" onclick="form.reset(); return false;"/>
				</div>
				<br /> <br /> <br /> <br />
			</div>
			<!--//contents-->
		</div>
		<!--//wrap-->
	
</body>
</html>