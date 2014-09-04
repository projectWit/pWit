<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="robots" content="noindex,nofollow">


<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />


<title>신상명세서</title>
<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />
<script type="text/javascript">
	calendarIDs = [ 'DtBirth', 'DtWedding' ]; // 달력이 추가될 태그의 id
	function Close() {
		window.close();
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		var url = 'ArmyCd.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#army_type').append(responseText);
		});
	});

	$(document).ready(function() {
		var url = 'SolCd.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#Sol_type').append(responseText);
		});
	});

	$(document).ready(function() {
		var url = 'ClsCd.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#class_type').append(responseText);
		});
	});
	
	$(document).ready(function() {
		var url = 'BthType.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#BthType').append(responseText);
		});
	});
	
	$(document).ready(function() {
		var url = 'AbleType.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#AbleType').append(responseText);
		});
	});
	
	$(document).ready(function() {
		var url = 'MryType.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#MryType').append(responseText);
		});
	});
	
	$(document).ready(function() {
		var url = 'BhType.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#BhType').append(responseText);
		});
	});
</script>
</head>
<body>

	<form method="post" id="form1" action="PerPro.jsp">

		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">호날두</span>]님의 신상명세서
				</h1>
			</div>

			<div id="contents">
				<div class="nav_tabfix">
					<ul>
						<li class="nav_tab_fixon">신상명세서</li>
					</ul>
				</div>
				<table summary="" class="entry">
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="" />
					<tr>
						<th>세대주 성명</th>
						<td><input name="hName" type="text" maxlength="50" id="hName"
							class="default" size="20" style="width: 60%;" /></td>
						<th>세대주와의 관계</th>
						<td><input name="hRelate" type="text" maxlength="6"
							id="hRelate" class="default" size="20" style="width: 60%;" /></td>
					</tr>

					<tr>
						<th>본 적</th>
						<td colspan="3"><input name="hHome" type="text"
							maxlength="80" id="hHome" class="default" size="80"
							style="width: 88%;" /></td>
					</tr>
					<tr>
						<th>주민등록상 주소</th>
						<td colspan="3"><a href="#" id="" class="link-blue">우편번호검색</a>&nbsp;
							<input name="doc_post1" type="text" id="doc_post1"
							class="default" style="width: 40px;" onBlur="BlurColor(this);"
							size="3" maxlength="3" /> - <input name="doc_post2" type="text"
							id="doc_post2" class="default" style="width: 40px;"
							onBlur="BlurColor(this);" size="3" maxlength="3" />&nbsp;&nbsp;
							<input name="doc_addr" type="text" maxlength="80" id="doc_addr"
							class="default" size="55" style="width: 56%;" /></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td colspan="3" id = "BthType"><input name="hBth" type="text" id="DtBirth"
							size="12" maxlength="8" value="" class="default"></td>
					</tr>
					<tr>
						<th>결혼유무</th>
						<td id = "MryType"></td>
						<th>결혼기념일</th>
						<td><input name="hMryDate" type="text" id="DtWedding"
							size="12" maxlength="8" value="" class="default"></td>
					</tr>
					<tr>
						<th>장애구분</th>
						<td colspan="3" id = "AbleType"></td>
					</tr>
				</table>

				<div class="nav_tabfix">
					<ul>
						<li class="nav_tab_fixon">보훈사항</li>
					</ul>
				</div>
				<table summary="" class="entry">
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="" />
					<tr>
						<th>보훈자구분</th>
						<td id = "BhType"></td>
						<th>보훈자와의 관계</th>
						<td><input name="merit_rel" type="text" maxlength="4"
							id="merit_rel" class="default" style="width: 50%;" /></td>
					</tr>
				</table>

				<div class="nav_tabfix">
					<ul>
						<li class="nav_tab_fixon">병역사항</li>
					</ul>
				</div>
				<table summary="" class="entry">
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="" />


					<tr>
						<th>병역구분</th>
						<td><select id="army_type" style="width: 130px;">

						</select></td>
						<th>군 별</th>
						<td>
						<td><select id="Sol_type" style="width: 130px;">

						</select></td>
					</tr>
					<tr>
						<th>미필사유</th>
						<td><input name="military_des" type="text" maxlength="30"
							id="military_des" class="default" style="width: 50%;" /></td>

						<th>계 급</th>
						<td>
						<td><select id="class_type" style="width: 130px;">

						</select></td>
					</tr>
				</table>
				<br /> <br /> <br /> <br />

			</div>
			<!--//contents-->
			<div class="footerBG_pop">
				<span class="btn blue"><input type="submit" name="btnSave"
					id="btnSave" value="저장(F8)" /></span> <span class="btn gray"><input
					type="button" name="btnClose" id="btnClose" value="닫기"
					onclick="Close()" /></span>
				<p class="btn_right"></p>
			</div>
			<!--//footerBG-->
		</div>
		<!--//wrap-->

		<a id="lnkSave"
			href="javascript:__doPostBack(&#39;lnkSave&#39;,&#39;&#39;)"></a> <input
			type="hidden" name="hidEmpCd" id="hidEmpCd" value="00001" /> <input
			type="hidden" name="hidEmpKname" id="hidEmpKname" value="이숙이" /> <input
			name="hidbirth" type="hidden" id="hidbirth" /> <input name="hidwed"
			type="hidden" id="hidwed" /> <input name="hidhandi" type="hidden"
			id="hidhandi" /> <input name="hidmerit" type="hidden" id="hidmerit" />
		<input name="hidmili" type="hidden" id="hidmili" />

	</form>
</body>
</html>