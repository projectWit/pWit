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
	<div id="wrap">
		<div id="print_title">
			<table width='1024px' height="100" border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td align='center'>
						<table>
							<tr>
								<td align='center' class='bigtitle'>월별손익분석</td>
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
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<col width="74px" />
			<thead>
				<tr>
					<th class="p_th left" colspan="14">조회 기간 : 2014/08/20 ~
						2014/08/20</th>
				</tr>
				<tr>
					<th class="p_th">구분</th>
					<th class="p_th">합계</th>
					<th class="p_th">2014/01</th>					
					<th class="p_th">2014/02</th>
					<th class="p_th">2014/03</th>
					<th class="p_th">2014/04</th>
					<th class="p_th">2014/05</th>
					<th class="p_th">2014/06</th>
					<th class="p_th">2014/07</th>
					<th class="p_th">2014/08</th>
					<th class="p_th">2014/09</th>
					<th class="p_th">2014/10</th>
					<th class="p_th">2014/11</th>
					<th class="p_th">2014/12</th>
				</tr>
			</thead>
			<tbody>
			<%
			int sum = 0;
			for(int i=0; i<1; i++){
			sum+=18500;%>
				<tr>
					<td class="p_td" style="background-color: #F6F6F6;">매출(+)</td>
					<td class="p_td right" style="background-color: #F6F6F6;">800,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">100,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>					
				</tr>
				<tr>
					<td class="p_td">상품매출</td>
					<td class="p_td right">400,000</td>
					<td class="p_td right">50,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>					
				</tr>
				<tr>
					<td class="p_td">기타매출</td>
					<td class="p_td right">400,000</td>
					<td class="p_td right">50,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">25,000</td>					
				</tr>
				<tr>
					<td class="p_td" style="background-color: #F6F6F6;">원가(-)</td>
					<td class="p_td right" style="background-color: #F6F6F6;">400,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">50,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">25,000</td>				
				</tr>
				<tr>
					<td class="p_td">일반원가</td>
					<td class="p_td">200,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>				
				</tr>
				<tr>
					<td class="p_td">기타원가</td>
					<td class="p_td">200,000</td>
					<td class="p_td right">25,000</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>
					<td class="p_td right">12,500</td>				
				</tr>
				<tr>
					<td class="p_td">비용(-)</td>
					<td class="p_td right" style="background-color: #F6F6F6;">100,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">12,500</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>
					<td class="p_td right" style="background-color: #F6F6F6;">6,250</td>				
				</tr>
				<tr>
					<td class="p_td">순이익</td>
					<td class="p_td right" style="background-color: #F6F6F6;">300,000</td>
					<td class="p_td right" style="background-color: #F6F6F6;">37,500</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>
					<td class="p_td right" style="background-color: #F6F6F6;">18,750</td>				
				</tr>
				
				<%}%>
				<!-- <tr>
					<th class="p_th" colspan="4">누계</th>
					<th class="p_th" style="text-align: right;">800,000</th>
					<th class="p_th" style="text-align: right;">0</th>
					<th class="p_th" style="text-align: right;">800,000</th>
				</tr> -->
				<!-- for -->
			</tbody>
		</table>
		<!-- if(com_code = "")  -->
		<div class="container H_2px">
			<p class="float_right">2014년 8월 8일 오후 12:07:51</p>
		</div>
	</div>
	<!-- <div id="contents">-->

	<!-- <div id="idPrint">-->

	<!-- p_body -->
</body>
</html>