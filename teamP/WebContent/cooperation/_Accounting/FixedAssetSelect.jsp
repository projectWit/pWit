<%@page import="mem.wit.accounting.ACC_FixedAssetsDTO"%>
<%@page import="mem.wit.accounting.ACC_FixedAssetsDAO"%>
<%@page import="mem.wit.accounting.ACC_AccountsDTO"%>
<%@page import="mem.wit.accounting.ACC_AccountsDAO"%>
<%@page
	import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="java.util.ArrayList"%>
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
<form action="">
		<div id="wrap">
			<div id="print_title">
				<table width="1000px" height="50" border='0' cellspacing='0'
					cellpadding='0'>
					<tr>
						<td align='center'>
							<table>
								<tr>
									<td align='center' class='bigtitle'>고정자산현황</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<%
				ApplicationContext context = new GenericXmlApplicationContext(
						"mem/wit/accounting/Accounting.xml");
				ACC_FixedAssetsDAO dao = context.getBean("acc_FixedAssetsDAO",
						ACC_FixedAssetsDAO.class);
				
				ArrayList<ACC_FixedAssetsDTO> arr = (ArrayList<ACC_FixedAssetsDTO>) dao.getAll();
				%>
			<div class="container H_38px" style="border-top: 1px solid #000;">
				<p class="float_left left">
					기간 : &nbsp; <input type="text" id="FromDt1" maxlength="8" size="8"
						name="FromDt" style="background-color: #F6F6F6; height: 20px;"
						"> ~ <input type="text" id="FromDt2"
						maxlength="8" size="8" name="FromDt"
						style="background-color: #F6F6F6; height: 20px;"
						>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
				<col width="50px" />
				<col width="150px" />
				<col width="150px" />
				<col width="150px" />
				<col width="150px" />
				<col width="200px" />
				<thead>
					<tr>
						<th class="p_th">자산번호</th>
						<th class="p_th">자산명</th>
						<th class="p_th">취득일자</th>
						<th class="p_th">취득금액</th>
						<th class="p_th">취득수량</th>
						<th class="p_th">취득적요</th>
					</tr>
				</thead>
				<tbody>
					<%
								for (int i = 0; i < arr.size(); i++) {
					%>
					<tr>
						<td class="p_td"><%=arr.get(i).getfCode()%></td>
						<td class="p_td"><%=arr.get(i).getfName()%></td>
						<td class="p_td"><%=arr.get(i).getfDate()%></td>
						<td class="p_td"><%=arr.get(i).getfAmounts()%></td>
						<td class="p_td"><%=arr.get(i).getfQuantity()%></td>
						<td class="p_td"><%=arr.get(i).getfContents()%></td>
					</tr>
					<%
						}
					%>
					<!-- for -->
				</tbody>
			</table>
			<!-- if(com_code = "")  -->
			<div class="container H_2px">
				<p class="float_right">2014년 8월 29일 오후 12:07:51</p>
			</div>
		</div>
		<!-- <div id="contents">-->

		<!-- <div id="idPrint">-->

		<!-- p_body -->
</form>
</body>
</html>