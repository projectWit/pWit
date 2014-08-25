<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>코드검색</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />


<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
<script type="text/javascript">
	function Close() {
		window.close();
	};

	function fnLink(no, str) {
		window.opener.form1.ClkCd.value = no;
		window.opener.form1.CodeName.value = str;
		window.close();
	};
</script>
</head>
<body>
	<form method="post" id="form1">

		<div id="wrap_pop">
			<table class="list H_0px fixed">
				<tr>
					<th>빠른 검색을 원한다면 해당항목 설정 후 검색 바랍니다.</th>
				</tr>
				<tr>
					<td class="gray_bg center">&nbsp; <input name="Name"
						type="text" id="Name" class="default" />&nbsp; <input
						type="submit" name="btnSearch" value="검색" id="btnSearch"
						class="btn_searchS" />
					</td>
				</tr>
			</table>
			<table class="list fixed H_15px">
				<thead>
					<tr>

						<th><a href="#">근태코드<img id="img_num"
								src="img/arrowBot.gif" width="11" height="15" /></a></th>
						<th><a href="#">근태코드명<img id="img_name"
								src="img/arrowBot.gif" width="11" height="15" /></a></th>
						<th style="display: none;">휴가코드</th>
					</tr>
				</thead>
				<tbody>
				<tr id="rpt_ctl00_trRpt">						
						<td><a onclick="fnLink('01','출근입력')" class="list_link">01</a></td>
						<td><a onclick="fnLink('01','출근입력')" class="list_link">출근입력</a></td>
					</tr>
					
					<tr id="rpt_ctl01_trRpt">						
						<td><a onclick="fnLink('02','퇴근입력')" class="list_link">02</a></td>
						<td><a onclick="fnLink('02','퇴근입력')" class="list_link">퇴근입력</a></td>
					</tr>

					<tr id="rpt_ctl02_trRpt">						
						<td><a onclick="fnLink('03','출장근무')" class="list_link">03</a></td>
						<td><a onclick="fnLink('03','출장근무')" class="list_link">출장근무</a></td>
					</tr>
					<tr id="rpt_ctl03_trRpt">
						<td><a onclick="fnLink('04','시간외근무')" class="list_link">04</a></td>
						<td><a onclick="fnLink('04','시간와근무')" class="list_link">시간외근무</a></td>
					</tr>

				</tbody>
			</table>
			<span class="btn gray"><input type="button" id="btnClose"
				name="btnClose" value="닫기" onclick="Close()" /></span> <br /> <br /> <br />
			<br />

		</div>

	</form>

</body>

</html>
