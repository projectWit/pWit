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
<link type="text/css" rel="stylesheet"
	href="/teamP/cooperation/css/jquery-ui-1.9.2.css">
<link type="text/css" rel="stylesheet"
	href="/teamP/cooperation/css/calendar.css">
</head>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<script type="text/javascript">
function insertDepartments() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertDepartments.jsp', '', features);
};	
	function insert_customers() {
		var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
		window.open('insertCustomers.jsp', '', features);
	};	
	function insertProjects() {
		var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
		window.open('insertProject.jsp', '', features);
	};	
</script>
<body>
	<div id="wrap" style="margin-left: 40px;">
		<div id="print_title">
			<table width="400" height="100" border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					<td align='center'>
						<table align="center">
							<tr>
								<td align='center' class='bigtitle'>부서목록</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="container H_38px" style="width: 400px;">
			<p class="float_right right">
				<a onclick="insertDepartments()">[입력]</a> [수정] [삭제]
			</p>
			
		</div>
		<div style="border-top: 1px solid #000; width: 400px;"></div>
		<div class="container H_38px" style="border-top: 1px solid #000; width: 400px;">
			<p class="float_left left">
				검색어 입력 : <input type="text" style="width: 80px; height: 20px; background-color: #F6F6F6;">
			</p>
			<input type="button" value="조회" class="float_right"
				style="width: 40px; height: 20px;">
		</div>

		<!-- ***** 프린트 시작 ***** -->
		<table width="400">
			<col width="100px" />
			<col width="100px" />
			<col width="100px" />
			<col width="100px" />
			<tbody>
			
				<tr>
					<th class="p_th">번호</th>
					<th class="p_th">부서코드</th>
					<th class="p_th">부서명</th>					
					<th class="p_th">적요</th>
				</tr>
				<%
				String str2[]={"10", "20", "30", "40", "50"};
				String str3[]={"총무부", "회계부", "관리부", "인사부", "영업부"};
				String str4[]={"총무", "회계", "관리", "인사", "영업"};
				for(int i=0; i<str2.length; i++){
				%>
				<tr>
					<td class="p_td"><%=i+1%></td>
					<td class="p_td right"><%=str2[i]%></td>
					<td class="p_td"><%=str3[i]%></td>
					<td class="p_td"><%=str4[i]%></td>
				</tr>
				<%}%>
			</tbody>
			<tr>
				<td colspan="4">
					<p align="center" style="margin-top: 40px;">
						<button type="button">입력</button>
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