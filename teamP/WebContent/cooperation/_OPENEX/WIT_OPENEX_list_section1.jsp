<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript" src="OPENEXscript/switchBoard.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts-3d.js"></script>
<script type="text/javascript" src="OPENEXscript/exporting.js"></script>
<script type="text/javascript" src="OPENEXscript/graphics.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<%
	int recSuPerPage = 10;
%>
<body>
	<form name="openex_list_board" action="WIT_OPENEX_list_section1.jsp">
		<div id="list_selectBtn">
			<div id="list_selectBtn_listBtn">
				<br>게시판 보기
			</div>
			<div id="list_selectBtn_graphBtn">
				<br>통계 보기
			</div>
		</div>
		<div id="openex_boardList">
			<table align="center">
				<tr>
					<td colspan="5" class="openex_archive_record_title">OPENEX
						SOLVE SYSTEM</td>
				</tr>
				<tr>
					<td class="boardMainMenuList">철학</td>
					<td class="boardMainMenuList">종교</td>
					<td class="boardMainMenuList">사회과학</td>
					<td class="boardMainMenuList">경제</td>
					<td class="boardMainMenuList">자연과학</td>
				</tr>
				<tr>
					<%
						for (int i = 1; i < 6; i++) {
					%>
					<td class="boardSubMenuList">
						<ul class="boardMenuList">
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
						</ul>
					</td>
					<%
						}
					%>
				</tr>
				<tr class="">
					<td class="boardMainMenuList">공학</td>
					<td class="boardMainMenuList">의학</td>
					<td class="boardMainMenuList">IT</td>
					<td class="boardMainMenuList">예술</td>
					<td class="boardMainMenuList">역사</td>
				</tr>
				<tr>
					<%
						for (int i = 1; i < 6; i++) {
					%>
					<td class="boardSubMenuList">
						<ul class="boardMenuList">
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
							<li><a href="WIT_OPENEX_list2.jsp">ㅁㅁㅁㅁ</a></li>
						</ul>
					</td>
					<%
						}
					%>
				</tr>
			</table>
		</div>
		<div id="listContainer"></div>
	</form>
</body>
</html>