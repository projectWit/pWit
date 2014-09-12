<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@page import="mem.wit.Insa.SchDAO"%>
<%@page import="mem.wit.Insa.SchDTO"%>
<%@page import="java.util.List"%> 
<%@page import="com.wit.member.Employee"%>
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

<title>학력사항등록</title>

<script type="text/javascript">
	function Close() {
		window.close();
	}
	
	
</script>
<%
InsaDAO dao = new InsaDAO();
InsaDTO dto = new InsaDTO();
SchDAO daos = new SchDAO();
SchDTO dtos= new SchDTO();
Employee employee = (Employee) session.getAttribute("employee");
List dtoL = dao.insaSelect(employee.geteId());
List dtosL = daos.schSelect(employee.geteId());
dto = (InsaDTO) dtoL.get(0);
%>
</head>
<body>
	<form method="post" id="frm">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname"><%=dto.geteKName() %></span>]님의 학력사항등록
				</h1>
			</div>

			<div id="contents">
				<div class="help_boxpop H_10px">
					<ul class="bg_gray">
						<li><img src="img/arrowBox.gif" width="13px" height="12px"
							alt="" /> 학력사항을 등록합니다. 일자는 yyyy-mm-dd 형식으로 입력합니다. (예. 2007-08-05)</li>
					</ul>
				</div>
				<!--//help_boxpop-->				

				<table id="tbInputList" summary="" class="list_input">
					<col width="3%" />
					<col width="14%" />
					<col width="13%" />
					<col width="10%" />
					<col width="10%" />
					<col width="8%" />
					<col width="12%" />
					<col width="10%" />
					<col width="10%" />
					<col width="" />
					<thead>
						<tr>
							
							<th>학력</th>
							<th>학교명</th>
							<th>입학일자</th>
							<th>졸업일자</th>
							<th>주야구분</th>
							<th>전공명</th>
							<th>소재지</th>
							<th>기 타</th>
							<th>졸업구분</th>
						</tr>
					</thead>
					<tbody id="SchForm">
<%
						for (int i = 0; i < dtosL.size(); i++) {
							dtos = (SchDTO) dtosL.get(i);
					%>
						<tr><td class='center'><%=dtos.getSchname()%></td>
						<td class='center'><%=dtos.getsSchName()%></td>
						<td class='center'><%=dtos.getsJoinDate()%></td>
						<td class='center'><%=dtos.getsGradDate()%></td>
						<td class='center'><%=dtos.getDnname()%></td>
						<td class='center'><%=dtos.getsMajor()%></td>
						<td class='center'><%=dtos.getLocname()%></td>
						<td class='center'><%=dtos.getsEtc()%></td>
						<td class='center'><%=dtos.getGradname()%></td>
						</tr>
					<%} %>
					</tbody>
				</table>
				
				<br />
				<br /> <br /> <br />			
			</div>
			<!--//contents-->
		</div>
		<div class="footerBG_pop">
				<span
					class="btn gray"><input type="button" name="btnClose"
					id="btnClose" value="닫기" onclick = "Close()" /></span>
		</div>
	</form>
</body>
</html>