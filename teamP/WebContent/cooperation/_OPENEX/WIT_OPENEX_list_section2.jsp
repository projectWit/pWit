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
<script type="text/javascript" src="OPENEXscript/getTextColor.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<%
	int recSuPerPage = 10;
%>
<body>
	<form name="openex_list_board" action="WIT_OPENEX_list_section2.jsp">
		<div id="openex_list">
			<table align="center" id="openex_list_table" border="0">
				<tr style="height: 25px;">
					<td colspan="12" id="openex_list_subject"><label> IT >
					</label> <label> 소프트웨어 </label></td>
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
				<tr class="openex_list_content">
					<td>5</td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><a href="#"><label id="thirdCategory1">js</label></a></td>
					<td class="openex_list_content_title"><a href="#"><input
							type="button" class="CategoryImagesCss" id="CategoryImagesCss1"
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
					<td>22:56</td>
				</tr>
				<tr class="openex_list_content">
					<td>4</td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><a href="#"><label id="thirdCategory2">오라클</label></a></td>
					<td class="openex_list_content_title"><a href="#"><input
							type="button" class="CategoryImagesCss" id="CategoryImagesCss2"
							value="java"></a><a href="WIT_OPENEX_solve.jsp">오라클 베이직</a><span>[82]</span></td>
					<td>154</td>
					<td>40</td>
					<td>20문제</td>
					<td>40분</td>
					<td>51명</td>
					<td>초급</td>
					<td>32.2%</td>
					<td><a href="#">이준희</a></td>
					<td>20:22</td>
				</tr>
				<tr class="openex_list_content">
					<td>3</td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><a href="#"><label id="thirdCategory3">js</label></a></td>
					<td class="openex_list_content_title"><a href="#"><input
							type="button" class="CategoryImagesCss" id="CategoryImagesCss3"
							value="java"></a><a href="WIT_OPENEX_solve.jsp">자바스크립트 폭풍</a><span>[2]</span></td>
					<td>340</td>
					<td>1</td>
					<td>30문제</td>
					<td>20분</td>
					<td>4명</td>
					<td>중급</td>
					<td>23.1%</td>
					<td><a href="#">이행엽</a></td>
					<td>16:56</td>
				</tr>
				<tr class="openex_list_content">
					<td>2</td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><a href="#"><label id="thirdCategory4">jq</label></a></td>
					<td class="openex_list_content_title"><a href="#"><input
							type="button" class="CategoryImagesCss" id="CategoryImagesCss4"
							value="java"></a><a href="WIT_OPENEX_solve.jsp">제이쿼리 실전예제</a><span>[23]</span></td>
					<td>120</td>
					<td>102</td>
					<td>50문제</td>
					<td>40분</td>
					<td>74명</td>
					<td>초급</td>
					<td>75.4%</td>
					<td><a href="#">박은희</a></td>
					<td>16:54</td>
				</tr>
				<tr class="openex_list_content">
					<td>1</td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><a href="#"><label id="thirdCategory5">자바</label></a></td>
					<td class="openex_list_content_title"><a href="#"><input
							type="button" class="CategoryImagesCss" id="CategoryImagesCss5"
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

				<%-- 				<%
					for (int j = 1; j < recSuPerPage + 1; j++) {
				%>
				<tr class="openex_list_content">
					<td><%=j%></td>
					<td><label><a href="#">IT></a></label><label><a
							href="#">소프트웨어></a></label><label><a href="#">java</a></label></td>
					<td class="openex_list_content_title"><a href="#"><input
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
				%> --%>
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
	</form>
</body>
</html>