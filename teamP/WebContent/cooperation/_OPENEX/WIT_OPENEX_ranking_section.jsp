<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<body>
	<div id="OPENEX_ranking">
		<div>
			<table style="background-color: white;">
				<tr>
					<td colspan="6"><p>
							명예의 전당 <select>
								<option>월간</option>
								<option>주간</option>
								<option>일간</option>
							</select>
						</p></td>
				</tr>

				<%
					for (int i = 1; i < 6; i++) {
				%>
				<tr>
					<td><img src="img/icon/<%=i%>.png"
						style="width: 65 px; height: 55px;"></td>
					<td>정답률 58%</td>
					<td colspan="4"><a href="#">자바 초급 시험 삼아 만들어 봤어요</a></td>
				</tr>
				<tr>
					<td>조회 402</td>
					<td>추천 102</td>
					<td>10문제</td>
					<td>10분</td>
					<td>초급</td>
					<td><a href="#">강성조</a></td>
				</tr>
				<tr>
					<td colspan="6"><hr></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
		<div>
			<table style="background-color: white;">
				<tr>
					<td colspan="6"><p>이 달의 우수 출제자</p></td>
				</tr>
				<tr>
					<td><img src="img/profile.png"
						style="width: 65 px; height: 55px;"></td>
					<td><a href="#">강성조</a></td>
					<td colspan="2"><a href="#">같이 공부하면서 배워봐요</a></td>
				</tr>
				<tr>
					<td>출제 수 85</td>
					<td>신뢰도 75%</td>
					<td>출제 추천 평가 87%</td>
					<td>우수 출제자, 신입 학생</td>
				</tr>
				<tr>
					<td colspan="6"><p>고득점 랭킹</p></td>
				</tr>
				<%
					for (int i = 1; i < 4; i++) {
				%>
				<tr>
					<td><img src="img/profile.png"
						style="width: 65 px; height: 55px;"></td>
					<td><a href="#">강성조</a></td>
					<td colspan="2"><a href="#">같이 공부하면서 배워봐요</a></td>
				</tr>
				<tr>
					<td>참여 수 24</td>
					<td>평균 점수94.7</td>
					<td>전월 랭킹 1위</td>
					<td>신입 출제자, 우수 학생</td>
				</tr>
				<tr>
				<tr>
					<td colspan="4"><hr></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>