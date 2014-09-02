<%@page import="mem.wit.accounting.ACC_TotalSlip_journalDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mem.wit.accounting.ACC_TotalSlipDAO"%>
<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
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
	<div id="wrap">
		<div id="print_title">
			<table width="1000px" height="50" border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td align='center'>
						<table>
							<tr>
								<td align='center' class='bigtitle'>거래처원장</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="container H_38px" style="border-top: 1px solid #000;">
			<p class="float_left left">
				기간 : &nbsp; <input type="text"
					id="FromDt1" maxlength="8" size="8" name="FromDt"
					style="background-color: #F6F6F6; height: 20px;"
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
					<th colspan="6" class="p_th left">조회 기간 : 2014/08/20 ~
						2014/08/20</th>
				</tr>
				<%
				request.setCharacterEncoding("UTF-8");
				ApplicationContext context = new GenericXmlApplicationContext(
						"mem/wit/accounting/Accounting.xml");
				ACC_TotalSlipDAO dao = context.getBean("acc_TotalSlipDAO", ACC_TotalSlipDAO.class);
				ArrayList<ACC_TotalSlip_journalDTO> arr = (ArrayList<ACC_TotalSlip_journalDTO>) dao.getAll();
				double depTor=0, crediTor=0;
				System.out.println("테스트"+arr.size());
				/* String str[]={"세종글로벌", "다산", "글로벌", "대구존", "폰즈", "모아", "도비"}; */
					for (int i = 0; i < arr.size(); i++) {
				%>
				<tr>
					<th colspan="6" class="p_th"
						style="font-size: 18px; font-weight: bold;">
						[<%=arr.get(i).getTsj_cName()%>]</th>
				</tr>
				<tr>
					<th class="p_th">날자/전표번호</th>
					<th class="p_th">적요</th>
					<th class="p_th">계정</th>
					<th class="p_th">금액</th>
					<th class="p_th">계정</th>
					<th class="p_th">금액</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="p_td"><a onclick="slipsD()"><%=arr.get(i).getTsj_Code()%></a></td>
					<td class="p_td"><%=arr.get(i).getTsj_Contents()%></td>
					<td class="p_td"><%=arr.get(i).getTsj_aName1()%></td>
					<td class="p_td right"><%=arr.get(i).getTsj_Amounts()%></td>
					<td class="p_td"><%=arr.get(i).getTsj_aName2()%></td>
					<td class="p_td right"><%=arr.get(i).getTsj_Amounts()%></td>
				</tr>
				<tr>
					<th class="p_th" colspan="2">누계</th>
					<th class="p_th" colspan="2" style="text-align: right;">18,500</th>
					<th class="p_th" colspan="2" style="text-align: right;">18,500</th>
				</tr>
				<%
					}
				%>
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