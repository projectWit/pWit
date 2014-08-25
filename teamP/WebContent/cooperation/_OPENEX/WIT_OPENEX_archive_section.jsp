<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts-3d.js"></script>
<script type="text/javascript" src="OPENEXscript/exporting.js"></script>
<script type="text/javascript" src="OPENEXscript/graphics.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<body>
	<div id="openex_archive">
		<div class="openex_archive_dv">
			<table class="openex_archive_record">
				<tr>
					<td class="openex_archive_record_title">ID</td>
					<td>Likerdo</td>
					<td rowspan="7"><img src="img/profile.png"
						style="height: 200px; width: 180px;"></td>
				</tr>
				<tr>
					<td class="openex_archive_record_title">이름</td>
					<td>조용근</td>

				</tr>
				<tr>
					<td class="openex_archive_record_title">주요 출제 분야</td>
					<td>IT 사회 경제</td>
				</tr>
				<tr>
					<td class="openex_archive_record_title">주요 학습 분야</td>
					<td>IT 자연과학 역사</td>
				</tr>
				<tr>
					<td class="openex_archive_record_title">출제 신뢰도</td>
					<td>87%</td>
				</tr>
				<tr>
					<td class="openex_archive_record_title">추천 랭킹</td>
					<td>상위 14.8%</td>
				</tr>
				<tr>
					<td class="openex_archive_record_title">등급</td>
					<td>우수 출제자, 신입 학생</td>
				</tr>
				<tr>
					<td colspan="3" rowspan="2" class="openex_archive_record_title">Likerdo
						님의 아카이브입니다</td>
				</tr>
			</table>

		</div>
		<div class="openex_archive_dv">
			<table class="openex_archive_record">
				<tr>
					<td colspan="4" id="graph_space" align="center"><img
						src="img/mainimg4.png" style="width: 100%; height: 99%"></td>
				</tr>
				<tr id="openex_archive_record_graphBtn" style="display: none;">
					<td><a href="#"><input type="button" value="성적 조회"
							onclick="graph1()" class="colorBtn"></a></td>
					<td><a href="#"><input type="button" value="통계"
							onclick="graph2()" class="colorBtn"></a></td>
					<td><a href="#"><input type="button" value="오답노트"
							onclick="record_search()" class="colorBtn"></a></td>
					<td><a href="WIT_OPENEX_solve.jsp"><input type="button"
							value="다시 풀기" class="colorBtn"></a></td>
				</tr>
			</table>
		</div>
		<div class="openex_archive_h3"></div>
		<div class="openex_archive_dv">
			<table class="openex_archive_record"">
				<tr>
					<td colspan="9">
						<div class="openex_archive_record_title">최근 출제 리스트</div>
					</td>
				</tr>
				<%
					for (int i = 5; i > 0; i--) {
				%>
				<tr id="openex_archive_setExam_list">
					<td><%=i%></td>
					<td><label><a href="#"> IT</a> > </label> <label><a
							href="#"> 소프트웨어</a></label></td>
					<td><img src="img/icon/java.png" style="width: 12%;"><a
						href="#" onclick="graphTr()">자바 기초 문법 문제입니다</a><span>[23]</span></td>
					<td>10문제</td>
					<td>10분</td>
					<td>32명</td>
					<td>초급</td>
					<td>75.4%</td>
					<td>4:56</td>
				</tr>
				<tr>
					<td colspan="10"><hr></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td colspan="10">
						<%
							for (int i = 1; i < 10; i++) {
						%> <span><a href="#"><%=i%></a></span> <%
 	}
 %> <a href="#">[다음 10개]</a>
					</td>
				</tr>
			</table>
		</div>
		<div class="openex_archive_dv">
			<table class="openex_archive_record">
				<tr>
					<td colspan="9">
						<div class="openex_archive_record_title">최근 풀이 성적 리스트</div>
					</td>
				</tr>
				<%
					for (int i = 5; i > 0; i--) {
				%>
				<tr id="openex_archive_solve_list">
					<td><%=i%></td>
					<td><label><a href="#"> 경제</a> > </label> <label><a
							href="#"> 일반</a></label></td>
					<td><img src="img/icon/economy.png" style="width: 12%;"><a
						href="#" onclick="graphTr()">경제 일반 중급 첫출제해봅니다</a><span>[23]</span></td>
					<td>30문제</td>
					<td>40분</td>
					<td>10명</td>
					<td>중급</td>
					<td>46.4%</td>
					<td>2014.02.12</td>
				</tr>
				<tr>
					<td colspan="10"><hr></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td colspan="10">
						<%
							for (int i = 1; i < 10; i++) {
						%> <span><a href="#"><%=i%></a></span> <%
 	}
 %> <a href="#">[다음 10개]</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<img src="img/mainimg3.png"
		style="margin: auto; width: 100%; height: 70%; position: relative; top: 10px;">
</body>
</html>