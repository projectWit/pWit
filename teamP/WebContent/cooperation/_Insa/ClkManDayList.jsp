<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import = "java.util.Date" %> 
<%@page import="mem.wit.Insa.ClkDAO"%>
<%@page import="mem.wit.Insa.ClkDTO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
<title></title>
<%
	ClkDAO dao = new ClkDAO();
	ClkDTO dto = new ClkDTO();
	List dtoL = dao.clkMDList();
	System.out.println(dtoL.size());
%>
<script type="text/javascript">
	function valSend(gubun, no) {
		document.inLfrm.gubun.value = gubun;
		document.inLfrm.no.value = no;
		document.inLfrm.submit();
	}
</script>
</head>
<body>
	<div id="wrap">
		<div class="new-title">
			<div class="title-leftarea">출/퇴근현황</div>
			<div class="title-rightarea"></div>

		</div>

		<!-- ***** 서치버튼 시작 **** -->
		<div class="print-search-fixed">
			<div class="print-search-con">
				<div class="new-title">
					<div class="title-leftarea">출/퇴근현황</div>
				</div>
			</div>
		</div>
		<form>
			<div id="idPrint" class="P_45px">
				<div style="width: 720px;">
					<div id="print_title">
						<ul>
							<li>
								<table width='720px' border='0' cellspacing='0' cellpadding='0'>
									<tr>
										<td align='center'>
											<table>
												<tr>
													<td align='center' class='bigtitle'>출근시간현황</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</li>
						</ul>
					</div>
					<br />
					<p class="float_left">회사명 : (주)WIT</p>
					<p class="float_right">기준일자 : 2014/08/29</p>

					<table summary="" class="list">

						<col width="60px" />
						<col width="100px" />
						<col width="120px" />
						<col width="120px" />
						<col width="" />

						<thead>

							<tr>
								<th><a href="#" class="list_link">일자</a><img
									src="img/arrowBot.gif" border="0" /></th>
								<th><a href="#" class="list_link">사원명</a><img
									src="img/arrowBot.gif" border="0" /></th>

								<th><a href="#" class="list_link">출근시간</a><img
									src="img/arrowBot.gif" border="0" /></th>
							</tr>
						</thead>
						<%
							for (int i = 0; i < dtoL.size(); i++) {
								dto = (ClkDTO) dtoL.get(i);
						%>
						<tbody>
							<tr>
								<td class="center"><%String str = dto.getcDate(); String result = str.substring(0,10); out.print(result);%></td>
								<td><%=dto.geteId()%></td>
								<td><%=dto.getcTime()%></td>
							</tr>
						</tbody>
						<%
							}
						%>
					</table>
					<div id="print_last" style="width: 720px; margin-left: 0px;">
						<ul>
						<% Date now = new Date(); %>
							<li>현재시간 : <%=now %></li>
						</ul>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

