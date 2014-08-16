<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta property="og:author" content="" />
<meta property="og:title" content="프로야구 경기 일정/결과" />
<meta property="og:description" content="" />
<meta property="og:regDate" content="" />
<meta property="og:image" content="" />
<meta property="og:type" content="article" />
<meta property="og:url" content="" />
<title>대관 일정표</title>
<link rel="stylesheet" href="css/sportsdb.min.css" />
<link rel="stylesheet" href="css/sportsdb.extra.min.css" />
</head>
<style>
#daumWrap {
	font-size:12px;
	font-family:'맑은 고딕';
}
</style>
<body>
<div id="daumWrap" class="sports_type2">
	<div id="daumContent" class="cont_schedule">
		<div id="cMain">
			<div id="mArticle" role="main">
				<div class="section_schedule kbo">
					<!-- 일정결과 박스 -->
					<h3 class="screen_out">대관 사용 현황</h3>

					<table class="tbl tbl_schedule" style="font-family: '맑은 고딕';">
						<caption class="screen_hide">일정결과표</caption>
						<colgroup>
							<col class="col1">
							<col class="col2">
							<col class="col3">
							<col class="col4">
							<col class="col5">
							<col class="col6">
							<col class="col7">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">날짜</th>
								<th class="tit_team" scope="col">대관 동호회</th>
								<th scope="col">시간</th>
								<th scope="col">종목</th>
								<th scope="col">금액</th>
								<th scope="col">시설</th>
								<th scope="col">비고</th>
							</tr>
						</thead>
						<tbody>
						<%
						for(int i=0;i<30;i++) {
						%>
							<tr class="bg_line ">
								<td class="time_date"><span class="num_time"><%=i+1 %></span>일<span
									class="txt_day"></span></td>
								<td class="cont_score"><a class='txt_home'
									href='#'>Trigger</a></td>
								<td class="cont_time">14:00</td>
								<td class="cont_cast"><a
										href="#">농구</a></td>
								<td class="cont_info">70000원</td>
								<td class="cont_area">폴리텍대학다목적실</td>
								<td class="cont_weather"></td>
							</tr>
						<%
							}
						%>

						</tbody>
					</table>

				</div>
				<!--// 일정표 -->



			</div>

		</div>
		<!--// mArticle -->

	</div>

</div>
</body>
</html>
