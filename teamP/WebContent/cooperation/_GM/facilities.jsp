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



<title>시설 등록</title>


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
	var url='GMPlace.jsp';
    $.get(url, function(data) {
    	responseText = data;
    	$('#pId').append(responseText);
    });
    
    var url2='GMTel.jsp';
    $.get(url2, function(data) {
    	responseText= data;
    	$('#telCode').append(responseText);
    });
});
function sendInsertFacil() {
	document.form.action="/teamP/facilities.gm";
	document.form.submit();
}

</script>
</head>
<body>

	<form method="get" action="" id="form" name="form" enctype="multipart/form-data">
	<input type="hidden" name="tel" />
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>GM 시설 등록</strong>
				</div>
				<div class="title-rightarea">
					<span class="btn-setting" onclick="fnShowOption(); return false"></span>
				
				</div>
			</div>

			<div id="contents">
				<table summary="" class="entry H_15px" style="height:350px; font-size:16px; text-indent: 15px; ">
					<col width="30%" span="1" />
					<col width="70%" span="2" />
					
					<col width="" />
					<tr>
						<th>시설명</th>
						<td><input name="fName" type="text" 
							maxlength="50" id="txtEmpKname" class="default"
							style="width: 160px;" /></td>
					</tr>
					
					<tr>
						<th>장소</th>

						<td><select name="pId" id="pId">
						</select></td>
					</tr>
					
					<tr>
						<th>대관요금</th>
						<td><input name="fPay" type="number"	maxlength="20" id="txtTelNo" class="default"
							onkeydown="jsOnlyNumberKey4(this);"
							style="width: 160px; ime-mode: disabled" /></td>
					</tr>
					<tr>
					<th>시설 연락처</th>
					<td> <select name="telCode" id="telCode">
					</select> - <input name="fTel1" type="number" maxlength="3"id="txtEmpEname" class="default" style="width: 50px;" /> - 
						<input name="fTel2" type="number" maxlength="3"	 id="txtEmpEname" class="default" style="width: 50px;" /></td>
					</tr>
					<tr>
						<th>시설 목적</th>
						<td><input type="text" maxlength="100" name="fObject"
							id="txtEmpEname" class="default"
							style="width: 350px;" /></td>
						
					</tr>

					<tr>
						<th>주소</th>
						<td style="padding-left:15px;"><a href="#" id="btnSearchPostNo"
							name="btnSearchPostNo" class="link-blue"
							onclick="fnSearchZipCode('txtPostNo1','txtPostNo2','txtJuso','txtJuso');">우편번호검색</a>
							<br/><br/>
							<input name="fAddr" type="text"
							id="txtPostNo1" class="default" style="width: 360px;" /><br/><br/></td>
					</tr>

				</table>
				<br/>
				<div style="text-align:center">
				<img src="img/bt_submit.jpg" style="cursor:pointer" onclick="sendInsertFacil()"/>&nbsp;&nbsp;&nbsp;<img src="img/bt_cancle.jpg" style="cursor:pointer" onclick="form.reset(); return false;"/>
				</div>
				<br /> <br /> <br /> <br />
			</div>
			<!--//contents-->
		</div>
		<!--//wrap-->
		</form>
	
</body>
</html>