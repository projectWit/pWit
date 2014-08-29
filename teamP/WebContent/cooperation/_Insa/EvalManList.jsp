<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="mem.wit.Insa.EvalDAO"%>
<%@page import="mem.wit.Insa.EvalDTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>직원리스트</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="robots" content="noindex,nofollow">
<link type="text/css" rel="stylesheet" href="css/base.css" />
<link type="text/css" rel="stylesheet" href="css/layout.css" />
<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
</head>
<%
	EvalDAO dao = new EvalDAO();
	EvalDTO dto = new EvalDTO();
	List dtoL = dao.evalList();
%>
<script type="text/javascript">
	function valSend(gubun, no) {
		document.inLfrm.gubun.value = gubun;
		document.inLfrm.no.value = no;
		document.inLfrm.submit();
	}
</script>
<body id="tabAll">
	<div id="idPrint">
		<div id="contents" style="width: 720px; margin: 0 auto">
			<div id="print_title">
				<ul>
					<li>
						<p class="bigtitle" style="display: inline; line-height: 24px;">근무평가</p>
					</li>
				</ul>
			</div>

			<br />

			<div class="container H_25px">
				<p class="float_left">회사명 : (주)WIT</p>
				<p class="float_right"></p>
			</div>



			<!--근태조회 리스트 시작-->
			<div id="print_list">
				<table class="p_list H_2px">
					<thead>
						<tr>
							<th width="100px"><a href="#"
								onclick="fn_SortList('REST_DES');">사원번호<img
									src="img/arrowBot.gif" id="img_rest" width="11" height="15" /></a></th>
							<th style="width: 120px;"><a href="#"
								onclick="fn_SortList('SITE_DES');">작성날짜<img
									src="img/arrowBot.gif" id="img_site" width="11" height="15" /></a></th>
							<th style="width: 100px;"><a href="#"
								onclick="fn_SortList('EMP_DES');">사원명<img
									src="img/arrowBot.gif" id="img_emp" width="11" height="15" /></a></th>
							<th style="width: 100px;"><a href="#"
								onclick="fn_SortList('REST_DAY');">총점<img
									src="img/arrowBot.gif" id="img_rday" width="11" height="15" /></a></th>

						</tr>
					</thead>
					<%
						for (int i = 0; i < dtoL.size(); i++) {
							dto = (EvalDTO) dtoL.get(i);
					%>
					<tbody>
						<tr>
							<td id="rpt_ctl00_td_RestNm" class="center"><%=dto.getEvSeq()%></td>
							<td id="rpt_ctl00_td_RestDay" class="center"><%String str = dto.getEvDate(); String result = str.substring(0,10); out.print(result);%></td>
							<td id="rpt_ctl00_td_SiteNm" class="center"><%=dto.getEvId2()%></td>
							<td id="rpt_ctl00_td_EmpNm" class="center"><%=dto.getEvTotal()%></td>

						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</div>
			<!--//print_list-->
		</div>
	</div>
	<!--//idPrint-->

	<br />
	<br />
	<br />
	<br />


</body>


</html>