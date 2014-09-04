<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@page import="mem.wit.Insa.InsaDTO"%>

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

<title>사원리스트</title>

<script type="text/javascript">
	function Insert() {
		window.open("InsaInsert.jsp", "", "");
	}
</script>
<%
	InsaDAO dao = new InsaDAO();
	InsaDTO dto = new InsaDTO();
	List dtoL = dao.insaSelList();
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
	<form name="inLfrm">
		<input type="hidden" name="gubun" /> <input type="hidden" name="no" />
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>사원리스트</strong>
				</div>

				<div class="title-rightarea">
					<span class="btn-setting" onclick="fnShowOption(); return false"></span>
					<!-- 옵션레이어 -->
					<ul class="option_box_new">

						<li><a onclick="fnPopUp('SMS');">SMS</a></li>

						<li><a onclick="fnPopUp('ErrorList');">번호오류리스트</a></li>

					</ul>
				</div>
			</div>

			<table summary="" class="list H_2px">
				<col width="11%" />
				<col width="13%" />
				<col width="15%" />
				<col width="9%" />
				<col width="12%" />
				<col width="14%" />
				<col width="" />
				<col width="8%" />

				<thead>
					<tr>
						<th><a href="#" class="th">사번</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">성명</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">부 서</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">직 급</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">입사일자</a><img
							src="img/arrowBot.gif" width="11px" height="15px" alt="" /></th>
						<th>전화번호</th>
						<th>Email</th>

					</tr>
				</thead>

				<tbody>
					<%
						for (int i = 0; i < dtoL.size(); i++) {
							dto = (InsaDTO) dtoL.get(i);
					%>

					<tr id="rpt_ctl00_trRow">
					
						<td><span id="eId"><a href="#" class="list_link"><%=dto.geteId()%></a></span></td>
						<td><span id="eKName"><%=dto.geteKName()%></span></td>
						<td><span id="eDepCd"><%=dto.getDepName()%></span></td>
						<td><span id="ePosCd"><%=dto.getPosName()%></span></td>
						<td class="center"><span id="eJoinDate"> <%
 	String str = dto.geteJoinDate();
 		String result = str.substring(0, 10);
 		out.print(result);
 %>
						</span></td>
						<td><span id="eTel"><%=dto.geteMobile()%></span></td>
						<td class="center"><span id="eEmail"><%=dto.geteEmail()%></span></td>

					</tr>
					<%
						}
					%>
				</tbody>

			</table>

			<div class="container H_5px">
				<span class="float_right">현재인원 : <%=dao.totalCnt()%> (명)
				</span>
			</div>

			<br /> <br /> <br /> <br />
		</div>
	</form>
</body>
</html>