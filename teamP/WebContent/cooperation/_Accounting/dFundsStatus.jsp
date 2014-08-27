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
			<table width="1000px" height="50" border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td align='center'>
						<table>
							<tr>
								<td align='center' class='bigtitle'>자금현황표</td>
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
			<col width="150px" />
			<col width="150px" />
			<col width="150px" />
			<col width="150px" />
			<col width="150px" />
			<col width="150px" />
			<col width="150px" />
			<thead>
				<tr>
					<th class="p_th left" colspan="7">조회 기간 : 2014/08/20 ~
						2014/08/20</th>
				</tr>
				<tr>
					<th class="p_th">전일시제</th>
					<th class="p_th">수입</th>
					<th class="p_th">지출</th>
					<th class="p_th">금일시제</th>
					<th class="p_th">현금</th>
					<th class="p_th">수표</th>
					<th class="p_th">합계</th>
				</tr>
			</thead>
			<tbody>
			<%
			double sum1 = 250000;
			double sum2 = 97000;
			double sum3 = 58000;
			double sum4 = 0;
			double sum5 = 109000;
			double sum6 = 180000;
			double sum7 = 0;
			
			for(int i=0; i<5; i++){
			sum1+=250000;sum2+=97000;sum3+=58000;sum4=sum1+sum2-sum3;sum5+=109000;
			sum6+=180000;sum7=sum5+sum6;
			%>
				<tr>
					<td class="p_td">250,000</td>
					<td class="p_td">97,000</td>
					<td class="p_td">58,000</td>
					<td class="p_td right">289,000</td>
					<td class="p_td right">109,000</td>
					<td class="p_td right">180,000</td>
					<td class="p_td right">289,000</td>
				</tr>
				<%}%>
				<tr>
					<th class="p_th" colspan="7">누계</th>
				</tr>
				<tr>
					<td class="p_td"><%=sum1%></td>
					<td class="p_td"><%=sum2%></td>
					<td class="p_td"><%=sum3%></td>
					<td class="p_td right"><%=sum4%></td>
					<td class="p_td right"><%=sum5%></td>
					<td class="p_td right"><%=sum6%></td>
					<td class="p_td right"><%=sum7%></td>
				</tr>
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