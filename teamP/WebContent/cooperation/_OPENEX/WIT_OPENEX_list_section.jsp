<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript" src="OPENEXscript/getTextColor.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts-3d.js"></script>
<script type="text/javascript" src="OPENEXscript/exporting.js"></script>
<script type="text/javascript" src="OPENEXscript/graphics.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
<script type="text/javascript">
	function listOpenBtn() {
		$("#openex_list").css('display', 'block');
		$("#listContainer").css('display', 'none');
		$("#openex_list").hidden();
		$("#openex_list").slideUp(100);
	}
	function graphOpenBtn() {
		$("#listContainer").css('display', 'block');
		$("#openex_list").css('display', 'none');
	}
</script>
</head>
<%
	int recSuPerPage = 10;
%>
<body>
	<form name="openex_list_board" action="WIT_OPENEX_list_section.jsp">
		<div id="list_selectBtn">
			<div id="list_selectBtn_listBtn" onclick="listOpenBtn()">
				<br>게시판 보기
			</div>
			<div id="list_selectBtn_graphBtn" onclick="graphOpenBtn()">
				<br>통계 보기
			</div>
		</div>
		<div id="openex_list">
			<table align="center" id="openex_list_table" border="0">
				<tr style="height: 25px;">
					<td colspan="12" id="openex_list_subject"><label> IT >
					</label> <label> 소프트웨어 ></label><label id="thirdCategory">사업</label></td>
				</tr>
				<tr class="listSelectBox">
					<td colspan="12"><select name="listSelectBox"
						onchange="changeListSelected()">
							<option>선택</option>
							<option value="10">10개씩 보기</option>
							<option value="20">20개씩 보기</option>
							<option value="50">50개씩 보기</option>
					</select></td>
				</tr>
				<tr id="openex_list_title">
					<td>no</td>
					<td style="width: 200px;">분야</td>
					<td style="width: 300px;">제목</td>
					<td>조회 수</td>
					<td>추천 수</td>
					<td>문항 수</td>
					<td>제한 시간</td>
					<td>참여자</td>
					<td>난이도</td>
					<td>정답률</td>
					<td>작성자</td>
					<td>작성 시간</td>
				</tr>
				<%
					for (int j = 1; j < recSuPerPage + 1; j++) {
				%>
				<tr id="openex_list_content">
					<td><%=j%></td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><label><a href="#">java</a></label></td>
					<td id="openex_list_content_title"><a href="#"><input
							type="button" class="CategoryImagesCss" id="CategoryImages"
							value="java"></a><a href="WIT_OPENEX_solve.jsp">자바 기초 문법
							문제입니다</a><span>[23]</span></td>
					<td>120</td>
					<td>12</td>
					<td>10문제</td>
					<td>10분</td>
					<td>32명</td>
					<td>초급</td>
					<td>75.4%</td>
					<td><a href="#">강성조</a></td>
					<td>4:56</td>
				</tr>
				<tr>
					<td colspan="12"><hr></td>
				</tr>
				<%
					}
				%>
			</table>
			<table align="center" border="0">
				<tr>
					<td>
						<%
							for (int i = 1; i < 10; i++) {
						%> <span><a href="#"><%=i%></a></span> <%
 	}
 %> <a href="#">[다음 10개]</a>
					</td>
				</tr>
			</table>
		</div>
		<div id="listContainer"></div>
		<img src="img/mainimg3.png"
			style="margin: auto; width: 100%; height: 70%; position: relative; top: 10px;">
	</form>
</body>
</html>