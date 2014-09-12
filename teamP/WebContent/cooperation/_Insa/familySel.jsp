<%@page import="java.util.List"%> 
<%@page import="com.wit.member.Employee"%>
<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@page import="mem.wit.Insa.FamDAO"%>
<%@page import="mem.wit.Insa.FamDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>



<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />

<title>가족사항 등록</title>


<script type="text/javascript">
	function Close() {
		window.close();
	}
</script>


<%
InsaDAO dao = new InsaDAO();
InsaDTO dto = new InsaDTO();
FamDAO daof = new FamDAO();
FamDTO dtof = new FamDTO();
Employee employee = (Employee) session.getAttribute("employee");
List dtoL = dao.insaSelect(employee.geteId());
List dtofL = daof.famSelect(employee.geteId());
dto = (InsaDTO) dtoL.get(0);
%>


</head>
<body>
	<form method="post" id="form1" action="FamPro.jsp">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname"><%=dto.geteKName()%></span>]님의 가족사항등록
				</h1>
			</div>

			<div id="contents">

				<table summary="" class="list_input">
					<col width="10%" />
					<col width="10%" />
					<col width="12%" />
					<col width="12%" />
					<col width="15%" />
					<col width="9%" />
					<col width="5%" />
					<col width="5%" />
					<thead>
						<tr>
							<th>주민등록번호</th>
							<th>성명</th>
							<th>관 계</th>
							<th>최종학력</th>
							<th>직 업</th>
							<th>회사명</th>
							<th>동거여부</th>
							<th>부양여부</th>
							<!-- <th>삭제</th>-->
						</tr>
					</thead>
					<tbody id="dvForm">
					<%
						for (int i = 0; i < dtofL.size(); i++) {
							dtof = (FamDTO) dtofL.get(i);
					%>
						<tr><td class='center'><%=dtof.getfJumin1()%>-<%=dtof.getfJumin2()%></td>
						<td class='center'><%=dtof.getfName()%></td>
						<td class='center'><%=dtof.getfRelation()%></td>
						<td class='center'><%=dtof.getfFinGrad()%></td>
						<td class='center'><%=dtof.getfJob()%></td>
						<td class='center'><%=dtof.getfCompany()%></td>
						<td class='center'><%=dtof.getFhtName()%></td> 
						<td class='center'><%=dtof.getFrtName()%></td>
						</tr>
					<%} %>
					</tbody>
				</table>
				<br /> <br /> <br /> <br />				
			</div>
		</div>		


		<div class="footerBG_pop">
					<span class="btn gray"><input
				type="button" name="btnClose" id="btnClose" value="닫기"
				onclick="Close()" /></span>
		</div>
	</form>
</body>
</html>