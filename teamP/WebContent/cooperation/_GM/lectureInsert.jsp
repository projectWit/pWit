<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#tableList {
	border: 1px solid;
	border-collapse: collapse;
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
<script type="text/javascript"	src="/teamP/cooperation/_GM/script/calendar_beans_v2.0.js"
	charset="utf-8"></script>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="teamP/cooperation/_GM/script/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var url = 'GMPlace.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#pId').append(responseText);
		});

		var url2 = 'GMSport.jsp';
		$.get(url2, function(data) {
			responseText = data;
			$('#sId').append(responseText);
		});
		var url3 = 'GMType.jsp';
		$.get(url3, function(data) {
			responseText = data;
			$('#tId').append(responseText);
		});
		var url4 = 'GMTime.jsp';
		$.get(url4, function(data) {
			responseText = data;
			$('#ptId').append(responseText);
		});
	});
function sendController() {
	document.form.action="/teamP/lectureInsert.gm";
	document.form.submit();
}
</script>

</head>
<body>
<form method="get" action="" name="form">
	<!-----------------------------------바디 시작---------------------------------------------------->
	<div id="sideRight" style="width: 750px">
		<h3>강좌 개설</h3>
		
		<br/>
		
		<table width="715px" align="center" id="tableList">
			<colgroup>
				<col class="cell01">
				<col class="cell04">
				<col>
			<tbody>
				<tr>
					<th><label for="lecName"><span
							class="login">강좌명</span></label></th>
					<td><input name="lecName" class="default"
						id="lecName" style="width: 300px; background-color: rgb(255, 255, 255);"
						type="text"></td>

				</tr>

				<tr>
					<th><label for="lecCont">강좌 내용</label></th>
					<td><textarea name="lecCont" id="lecCont" cols="60" rows="3"></textarea></td>

				</tr>

				<tr>
					<th><label for="lecCnt">수강회원수</label></th>
					<td><input type="number" id="lecCnt" name="lecCnt" /> 명</td>
				</tr>

				<tr>
					<th><label for="lecPay">수강비</label></th>
					<td><input type="number" id="lecPay" name="lecPay" /> 원</td>
				</tr>

				<tr>
					<th><label for="sId">종목</label></th>
					<td><select id="sId" name="sId" style="margin-left: 10px;"	>
					</select></td>
				</tr>

				<tr>
					<th><label for="pId">장소</label></th>
					<td><select id="pId" name="pId" style="margin-left: 10px;"></select></td>
				</tr>

				<tr>
					<th><label for="tId">대상</label></th>
					<td><select id="tId" name="tId" style="margin-left: 10px;"></select></td>
				</tr>
				<tr>
					<th><label for="ptId">수업 시간</label></th>
					<td><select id="ptId" name="ptId" style="margin-left: 10px;"></select></td>

				</tr>

				<tr>
					<th><label for="sSDay">개설일</label></th>
					<td>
					<input type="text" id="sSDay" name="sSDay" />
					</td>
				</tr>

				<tr>
					<th><label for="sEDay">종료일</label></th>
					<td><input type="text" id="sEDay" name="sEDay" />
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