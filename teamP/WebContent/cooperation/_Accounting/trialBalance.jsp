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
	calendarIDs = [ 'FromDt1', 'FromDt2' ]; // 달력이 추가될 태그의 id
</script>
<body>
	<div id="wrap" style="margin:auto;">
		<div id="print_title">
			<table width="1000px" height="50" border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td align='center'>
						<table>
							<tr>
								<td align='center' class='bigtitle'>시산표</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="container H_38px" style="border-top: 1px solid #000;">
			<p class="float_left left">
				기간 : &nbsp; <input type="text" id="FromDt1" maxlength="8" size="8"
					name="FromDt" style="background-color: #F6F6F6;height: 20px;"
					readonly="readonly"> ~ <input type="text" id="FromDt2"
					maxlength="8" size="8" name="FromDt"
					style="background-color: #F6F6F6;height:20px;" readonly="readonly">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				프로젝트 : &nbsp; <select name="projects">
					<option>선택</option>
					<option>일반</option>
					<option>특별</option>
					<option>연구</option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 부서 : &nbsp; <select name="projects">
					<option>선택</option>
					<option>회계부</option>
					<option>영업부</option>
					<option>사업부</option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				검색어 입력 : <input type="text" style="width: 80px; height: 20px; background-color: #F6F6F6;">
			</p>
			<input type="button" value="조회" class="float_right"
				style="width: 40px; height: 20px;">
		</div>

		<!-- ***** 프린트 시작 ***** -->
		<table class="p_table" summary="">
			<col width="350px" />
			<col width="350px" />
			<col width="350px" />
			<thead>
				<tr>
					<th class="p_th left" colspan="3">조회 기간 : 2014/08/20 ~
						2014/08/20</th>
				</tr>
				<tr>
					<th class="p_th">계정</th>
					<th class="p_th">차변</th>
					<th class="p_th">대변</th>
				</tr>
			</thead>
			<tbody>
			<%for(int i=0; i<1; i++){%>
				<tr>
					<td class="p_td">현금</td>
					<td class="p_td right">\16,900</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
					<tr>
					<td class="p_td">매출채권</td>
					<td class="p_td right">40,800</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">소모품</td>
					<td class="p_td right">3,500</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">선급보험료</td>
					<td class="p_td right">2,400</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">헬스기구</td>
					<td class="p_td right">20,000</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">건물</td>
					<td class="p_td right">65,000</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">토지</td>
					<td class="p_td right">90,000</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">매입채무</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td right">\13,700</td>
				</tr>
				<tr>
					<td class="p_td">미지급금</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td right">\12,000</td>
				</tr>
				
				<tr>
					<td class="p_td">차입금</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td right">7,500</td>
				</tr>
				<tr>
					<td class="p_td">자본금</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td right">30,000</td>
				</tr>
				<tr>
					<td class="p_td">이익잉여금</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td right">100</td>
				</tr>
				<tr>
					<td class="p_td">용역매출</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td right">232,400</td>
				</tr>
				<tr>
					<td class="p_td">급료</td>
					<td class="p_td right">55,000</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<tr>
					<td class="p_td">전기료</td>
					<td class="p_td right">2,100</td>
					<td class="p_td right">&nbsp;</td>
				</tr>
				<%}%>
				<tr>
					<th class="p_th">합계</th>
					<th class="p_th right">\295,700</th>
					<th class="p_th right">\295,700</th>
				</tr>
				<!-- for -->
			</tbody>
		</table>
		<!-- if(com_code = "")  -->
		<div class="container H_2px">
			<p class="float_right">2014년 8월 27일 오전 12:07:51</p>
		</div>
	</div>
	<!-- <div id="contents">-->

	<!-- <div id="idPrint">-->

	<!-- p_body -->
</body>
</html>