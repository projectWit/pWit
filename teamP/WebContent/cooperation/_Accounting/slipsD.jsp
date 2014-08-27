<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<link type="text/css" rel="stylesheet" href="css/2_base.css" />
<link type="text/css" rel="stylesheet" href="css/2_layout.css" />
<link type="text/css" rel="stylesheet" href="css/2_table.css" />
<link type="text/css" rel="stylesheet" href="css/2_menu.css" />
<link type="text/css" rel="stylesheet" href="css/2_rpt_print.css" />
<link type="text/css" rel="stylesheet" href="css/2_etc.css" />
<link type="text/css" rel="stylesheet" href="css/2_setting.css" />
<link type="text/css" rel="stylesheet" href="css/dhtmlwindow.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/css/jquery-ui-1.9.2.css">
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/css/calendar.css">
</head>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<script type="text/javascript">
	calendarIDs = [ 'FromDt' ]; // 달력이 추가될 태그의 id
	function insertSlips_accounts() {
		var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
		window.open('insertSlips_accounts.jsp', '', features);
	};	
	function projectLists() {
		var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
		window.open('projectLists.jsp', '', features);
	};	
	function slipsD() {
		var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
		window.open('slipsD.jsp', '', features);
	};
	
</script>
<body>
	<div id="wrap" style="margin-left: 40px; width: 600px;">
		<div id="print_title">
			<table width="600" height="100" border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					<td align='center'>
						<table align="center">
							<tr>
								<td align='center' class='bigtitle'>전&nbsp;&nbsp;&nbsp;표</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div style="border-top: 1px solid #000; width: 600px;"></div>

		<!-- ***** 프린트 시작 ***** -->
		<table width="600">
			<col width="100px" />
			<col width="200px" />
			<col width="100px" />
			<col width="200px" />
			<tbody>
				<tr>
					<th class="p_th left">전표코드</th>
					<td class="p_td left"></td>
					<th class="p_th left">전표일자</th>
					<td class="p_td left"></td>
				</tr>
				<tr>
					<th class="p_th left">유형코드</th>
					<td class="p_td left"></td>
					<th class="p_th left">계정</th>
					<td class="p_td left"></td>
				</tr>
				<tr>
					<th class="p_th left">프로젝트코드</th>
					<td class="p_td left"></td>
					<th class="p_th left">거래처코드</th>
					<td class="p_td left"></td>
				</tr>
				<tr>
					<th class="p_th left">금액</th>
					<td class="p_td left"></td>
					<th class="p_th left">계좌코드</th>
					<td class="p_td left"></td>
				</tr>
				<tr>
					<th class="p_th left">세금유형</th>
					<td class="p_td left"></td>
					<th class="p_th left">부가세</th>
					<td class="p_td left"></td>
				</tr>
				<tr>
					<th class="p_th left">작성자</th>
					<td class="p_td left"></td>
					<th class="p_th left">전표적요</th>
					<td class="p_td left"></td>
				</tr>
				<tr>
					<th class="p_th left">회사정보</th>
					<td class="p_td left"></td>
					<th class="p_th left">작성일자</th>
					<td class="p_td left"></td>
				</tr>
			</tbody>
			<tr>
				<td colspan="4">
					<p align="center" style="margin-top: 40px;">
						<button type="button">확인</button>&nbsp;&nbsp;
						<button type="reset">취소</button>
					</p>
				</td>
			</tr>
		</table>
		<!-- if(com_code = "")  -->
	</div>
	<!-- <div id="contents">-->
	<!-- <div id="idPrint">-->
	<!-- p_body -->
</body>
</html>