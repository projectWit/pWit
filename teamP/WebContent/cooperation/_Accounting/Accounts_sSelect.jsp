<%@page import="mem.wit.accounting.ACC_AccountsDTO"%>
<%@page import="java.util.ArrayList"%> 
<%@page import="mem.wit.accounting.ACC_AccountsDAO"%>
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
	calendarIDs = [ 'FromDt' ]; // 달력이 추가될 태그의 id
	function AccountsInsert() {
		var features = "width=500px, height=500px, resizable=yes, scrollbars=no, top=500, left=400, toolbar=yes";
		window.open('AccountsInsert.jsp', '', features);
	}	
</script>
<body onload="saccountsList.aSearch.select()">
<form method="post" id="saccountsList">
	<div id="wrap" style="margin-left: 40px;">
		<div id="print_title">
			<table width="400" height="100" border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					<td align='center'>
						<table align="center">
							<tr>
								<td align='center' class='bigtitle'>계정선택</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div style="border-top: 1px solid #000; width: 400px;"></div>
		<div class="container H_38px" style="width: 400px;">
			<p class="float_right right">
				<a onclick="AccountsInsert()">[입력]</a>[수정][삭제]
			</p>
			
		</div>
<% 
ApplicationContext context = new GenericXmlApplicationContext(
		"mem/wit/accounting/Accounting.xml");
ACC_AccountsDAO dao = context.getBean("acc_AccountsDAO",
		ACC_AccountsDAO.class);

ArrayList<ACC_AccountsDTO> arr = (ArrayList<ACC_AccountsDTO>) dao.getAll();
%>
		<!-- ***** 프린트 시작 ***** -->
		<table width="400">
			<col width="80px" />
			<col width="120px" />
			<col width="200px" />
			<tbody>				
				<tr>
					<th class="p_th left" style="font-weight: bold;">계정선택</th>
					<td class="p_td left" colspan="2">
					<input type="text" size="20" id="aSearch"
						style="background-color: #F6F6F6; height:25px;" />
						<input type="button" value="조회하기" style="height: 25px;" /></td>
				</tr>
				<tr>
				<th class="p_th">계정코드</th>
				<th class="p_th">계정</th>
				<th class="p_th">계정개요</th>
				</tr>
				<%
				/* String[] str1= {"매입", "매출", "외상매입", "외상매출", "미수금", "자산", "부채", "자본", "미지급금", "비용"}; */
				for(int i=0; i<arr.size(); i++){
				%>
				<tr>
				<td class="p_td">2014/08/25-<%=arr.get(i).getaCode()%></td>
				<td class="p_td"><%=arr.get(i).getaName()%></td>
				<td class="p_td"><%=arr.get(i).getaContents()%></td>
				</tr>
				<%}%>
			</tbody>
			<tr>
				<td colspan="3">
					<p align="center" style="margin-top: 40px;">
						<button type="button">선택하기</button>
						<button type="reset">다시선택</button>
					</p>
				</td>
			</tr>
		</table>
		<!-- if(com_code = "")  -->
	</div>
	<!-- <div id="contents">-->
	<!-- <div id="idPrint">-->
	<!-- p_body -->
	</form>
</body>
</html>