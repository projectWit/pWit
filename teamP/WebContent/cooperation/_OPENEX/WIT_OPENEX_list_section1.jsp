<%@page import="java.util.ArrayList"%>
<%@page import="mem.wit.openex.OSubjecNametListDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<%
	int recSuPerPage = 10;
%>
<script type="text/javascript">
	$(function() {
		$('[id^=MD_NO]').click(function() {
			var MD_NO = this.id;
			$('#resultMD_NO').empty();
			$('#resultMD_NO').val((MD_NO).substr('5', '2'));
			location.href='WIT_OPENEX_list2.jsp?MD_NO='+$('#resultMD_NO').val();
		});
	});
</script>
<form name="openex_list_board" action="WIT_OPENEX_list2.jsp">
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
			<tr style="display: none">
				<td><input type="text" id="resultMD_NO" name="MD_NO"></td>
			</tr>
			<tr>
				<td class="boardMainMenuList">철학</td>
				<td class="boardMainMenuList">종교</td>
				<td class="boardMainMenuList">사회과학</td>
				<td class="boardMainMenuList">경제</td>
				<td class="boardMainMenuList">자연과학</td>
			</tr>
			<tr>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList1}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList2}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList3}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList4}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList5}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
			</tr>
			<tr class="">
				<td class="boardMainMenuList">공학</td>
				<td class="boardMainMenuList">의학</td>
				<td class="boardMainMenuList">IT</td>
				<td class="boardMainMenuList">예술</td>
				<td class="boardMainMenuList">역사</td>
			</tr>
			<tr>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList6}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList7}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList8}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList9}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
				<td class="boardSubMenuList">
					<ul class="boardMenuList">
						<c:forEach var="item" items="${subNameList10}">
							<li><input type="button" value="${item.MD_NAME}"
								id="MD_NO${item.MD_NO}"></li>
						</c:forEach>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<div id="listContainer"></div>
</form>
