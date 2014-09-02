<%@page import="mem.wit.accounting.ACC_BankAccountDTO"%>
<%@page import="mem.wit.accounting.ACC_BankAccountDAO"%>
<%@page import="mem.wit.accounting.ACC_TaxDTO"%>
<%@page import="mem.wit.accounting.ACC_TaxDAO"%>
<%@page import="mem.wit.accounting.ACC_CustomersDTO"%>
<%@page import="mem.wit.accounting.ACC_CustomersDAO"%>
<%@page import="mem.wit.accounting.ACC_ProjectsDTO"%>
<%@page import="mem.wit.accounting.ACC_ProjectsDAO"%>
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
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/css/jquery-ui-1.9.2.css">
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/css/calendar.css">
</head>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<script type="text/javascript">
	calendarIDs = [ 'tsDate' ]; // 달력이 추가될 태그의 id
</script>
<body>
<form action="insertSlipsPro.jsp" method="post">
	<div id="wrap" style="margin-left: 40px; width: 400px;">
		<div id="print_title">
			<table width="400" height="100" border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					<td align='center'>
						<table align="center">
							<tr>
								<td align='center' class='bigtitle'>전표입력</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div style="border-top: 1px solid #000; width: 400px;"></div>
<% 
ApplicationContext a_context = new GenericXmlApplicationContext(
		"mem/wit/accounting/Accounting.xml");
ACC_AccountsDAO a_dao = a_context.getBean("acc_AccountsDAO",
		ACC_AccountsDAO.class);
ArrayList<ACC_AccountsDTO> a_arr = (ArrayList<ACC_AccountsDTO>) a_dao.getAll();

ApplicationContext p_context = new GenericXmlApplicationContext(
		"mem/wit/accounting/Accounting.xml");
ACC_ProjectsDAO p_dao = p_context.getBean("acc_ProjectsDAO",
		ACC_ProjectsDAO.class);
ArrayList<ACC_ProjectsDTO> p_arr = (ArrayList<ACC_ProjectsDTO>) p_dao.getAll();

ApplicationContext c_context = new GenericXmlApplicationContext(
		"mem/wit/accounting/Accounting.xml");
ACC_CustomersDAO c_dao = c_context.getBean("acc_CustomersDAO",
		ACC_CustomersDAO.class);
ArrayList<ACC_CustomersDTO> c_arr = (ArrayList<ACC_CustomersDTO>)c_dao.getAll();

ApplicationContext t_context = new GenericXmlApplicationContext(
		"mem/wit/accounting/Accounting.xml");
ACC_TaxDAO t_dao = t_context.getBean("acc_TaxDAO",
		ACC_TaxDAO.class);
ArrayList<ACC_TaxDTO> t_arr = (ArrayList<ACC_TaxDTO>)t_dao.getAll();

ApplicationContext ba_context = new GenericXmlApplicationContext(
		"mem/wit/accounting/Accounting.xml");
ACC_BankAccountDAO ba_dao = ba_context.getBean("acc_BankAccountDAO",
		ACC_BankAccountDAO.class);
ArrayList<ACC_BankAccountDTO> ba_arr = (ArrayList<ACC_BankAccountDTO>) ba_dao.getAll();
%>
		<!-- ***** 프린트 시작 ***** -->
		<table width="400">
			<col width="100px" />
			<col width="250px" />
			<tbody>
				<tr>
					<th class="p_th left">전표일자</th>
					<td class="p_td left"><input type="text" id="tsDate"
						maxlength="8" size="20" name="tsDate"
						style="background-color: #F6F6F6; height: 28px;" />
					</td>
				</tr>
				<tr>
					<th class="p_th left">전표유형</th>
					<td class="p_td left"><input type="text"  maxlength="8" size="20" 
						style="background-color: #F6F6F6; height: 28px;" name="ts_stCode"/>
					</td>
				</tr>
				<tr>
					<th class="p_th left">계정I</th>
					<td class="p_td left">
					<%for (int i=0; i<a_arr.size();i++){%>
					<input type="text" size="20" name="ts_aCode"
						style="background-color: #F6F6F6; height: 28px;" />
						<select><option>선택</option>						
						<option><%=a_arr.get(i).getaName()%></option><%}%></select>
					</td>
				</tr>
				<tr>
					<th class="p_th left">프로젝트</th>
					<td class="p_td left"><input type="text" size="20" name="ts_pCode"
						style="background-color: #F6F6F6; height: 28px;"/>
						<select><option>선택</option>
						<%for (int i=0; i<p_arr.size();i++){%>
						<option><%=p_arr.get(i).getpName()%></option><%}%></select>
					</td>
				</tr>
				<tr>
					<th class="p_th left">거래처</th>
					<td class="p_td left"><input type="text" size="20" name="ts_cCode"
						style="background-color: #F6F6F6; height: 28px;" />
						<select><option>선택</option>
						<%for (int i=0; i<c_arr.size();i++){%>
						<option><%=c_arr.get(i).getcName()%></option><%}%></select>
					</td>
				</tr>
				<tr>
					<th class="p_th left">금액</th>
					<td class="p_td left"><input type="number" size="20" name="tsAmounts"
						style="background-color: #F6F6F6; height: 28px;" /></td>
				</tr>
				<tr>
					<th class="p_th left">부가세유형</th>
					<td class="p_td left"><input type="text" size="20" name="ts_tCode"
						style="background-color: #F6F6F6; height: 28px;"  />
						<select><option>선택</option>
						<%for (int i=0; i<t_arr.size();i++){%>
						<option><%=t_arr.get(i).gettName()%></option><%}%></select>
					</td>
				</tr>
				<tr>
					<th class="p_th left">부가세</th>
					<td class="p_td left"><input type="number" size="20" name="tsTax"
						style="background-color: #F6F6F6; height: 28px;"
						 /></td>
				</tr>
				<tr>
					<th class="p_th left">계정II</th>
					<td class="p_td left"><input type="text" size="20" name="ts_saCode"
						style="background-color: #F6F6F6; height: 28px;"
						 onclick="Accounts_sSelect()" />
						<select><option>선택</option>
						<%for (int i=0; i<a_arr.size();i++){%>
						<option><%=a_arr.get(i).getaName()%></option><%}%></select></td>
				</tr>
				<tr>
					<th class="p_th left">적요</th>
					<td class="p_td left"><input type="text" size="42" name="tsContents"
						style="background-color: #F6F6F6; height: 28px;" /></td>
				</tr>
				<tr>
					<th class="p_th left">계좌코드</th>
					<td class="p_td left"><input type="text" size="20" name="ts_baCode"
						style="background-color: #F6F6F6; height: 28px;" />
						<select><option>선택</option>
						<%for (int i=0; i<ba_arr.size();i++){%>
						<option><%=ba_arr.get(i).getBaName()%></option><%}%></select>
					</td>
				</tr>
			</tbody>
			<tr>
				<td colspan="2">
					<p align="center" style="margin-top: 40px;">
						<button type="submit">전표입력</button>
						<button type="reset">다시쓰기</button>
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