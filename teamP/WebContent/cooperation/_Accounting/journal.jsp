<%@page import="mem.wit.accounting.ACC_TotalSlipDTO"%>
<%@page import="java.util.ArrayList"%> 
<%@page import="mem.wit.accounting.ACC_TotalSlipDAO"%>
<%@page
	import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
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
	function slipsD() {
		var features = "width=680px, height=450px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
		window.open('slipsD.jsp', '', features);
	};
</script>
<body>
<form method="post">
	<div id="wrap">
		<div id="print_title">
			<table width="1000px" height="50" border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					<td align='center'>
						<table>
							<tr>
								<td align='center' class='bigtitle'>분 개 장</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="container H_38px" style="border-top: 1px solid #000;">
			<p class="float_left left">
				기간 : &nbsp; <input type="text" id="FromDt1" maxlength="8" size="8"
					name="FromDt" style="background-color: #F6F6F6; height: 20px;"
					readonly="readonly"> ~ <input type="text" id="FromDt2"
					maxlength="8" size="8" name="FromDt"
					style="background-color: #F6F6F6; height: 20px;"
					readonly="readonly">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				프로젝트 : &nbsp; <select name="projects">
					<option>선택</option>
					<option>일반</option>
					<option>특별</option>
					<option>연구</option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 부서 : &nbsp; <select
					name="projects">
					<option>선택</option>
					<option>회계부</option>
					<option>영업부</option>
					<option>사업부</option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 검색어 입력 : <input type="text"
					style="width: 80px; height: 20px; background-color: #F6F6F6;">
			</p>
			<input type="button" value="조회" class="float_right"
				style="width: 40px; height: 20px;">
		</div>
		<%
		request.setCharacterEncoding("UTF-8");
			ApplicationContext context = new GenericXmlApplicationContext(
					"mem/wit/accounting/Accounting.xml");
			ACC_TotalSlipDAO dao = context.getBean("acc_TotalSlipDAO",
					ACC_TotalSlipDAO.class);
			ArrayList<ACC_TotalSlipDTO> arr = (ArrayList<ACC_TotalSlipDTO>) dao
					.getAll();
			double depTor=0, crediTor=0;
		%>
		<!-- ***** 프린트 시작 ***** -->
		<table class="p_table" summary="">
			<col width="185px" />
			<col width="185px" />
			<col width="185px" />
			<col width="185px" />
			<col width="185px" />
			<col width="185px" />
			<thead>
				<tr>
					<th class="p_th left" colspan="2">조회 기간 : 2014/08/20 ~
						2014/08/20</th>
					<th class="p_th" colspan="2">차변</th>
					<th class="p_th" colspan="2">대변</th>
				</tr>
				<tr>
					<th class="p_th">전표번호</th>
					<th class="p_th">적요</th>
					<th class="p_th">계정</th>
					<th class="p_th">금액</th>
					<th class="p_th">계정</th>
					<th class="p_th">금액</th>

				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < arr.size(); i++) {
				%>
				<tr>
					<td class="p_td"><a onclick="slipsD()"><%=arr.get(i).getTsCode()%></a></td>
					<td class="p_td"><%=arr.get(i).getTsContents()%></td>
					<td class="p_td"><%=arr.get(i).getaName()%></td>
					<td class="p_td right"><%=arr.get(i).getTsAmounts()%></td>
					<td class="p_td"><%=arr.get(i).getaName()%></td>
					<td class="p_td right"><%=arr.get(i).getTsAmounts()*0.9%></td>
				</tr>
				<tr>
					<td class="p_td">&nbsp;</td>
					<td class="p_td">&nbsp;</td>
					<td class="p_td">&nbsp;</td>
					<td class="p_td right">&nbsp;</td>
					<td class="p_td">부가세예수금</td>
					<td class="p_td right"><%=arr.get(i).getTsTax()%></td>
				</tr>
				<%
				depTor += arr.get(i).getTsAmounts();
				crediTor +=(arr.get(i).getTsAmounts()*0.9+arr.get(i).getTsTax());
					}
				
				%>
				<tr>
					<th class="p_th" colspan="2">누계</th>
					<th class="p_th" colspan="2" style="text-align: right;"><%=depTor%></th>
					<th class="p_th" colspan="2" style="text-align: right;"><%=crediTor%></th>
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
	</form>
</body>
</html>