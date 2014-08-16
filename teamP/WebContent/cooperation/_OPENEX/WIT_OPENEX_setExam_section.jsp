<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="OPENEXscript/OPENEX.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		findInput();
	});
</script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<body>
	<section>
	<form>
		<div id="openex_setExam"
			style="width: 1126px; height: 620px; position: relative; top: 10px; left: 65px; float: left;">
			<div id="openex_setExam_classification" style="height: 40px;">
				<p id="1stCategory" name="1stCategory"
					style="font-weight: bold; text-align: center; border: 0;" />
				<br>
				<p id="2ndCategory" name="2ndCategory"
					style="font-weight: bold; text-align: center; border: 0;" />
			</div>
			<div id="openex_setExam_selectbox">
				<select onChange="change1stCategory(this);">
					<option>대분류 선택</option>
					<option>사회과학</option>
					<option>경제</option>
					<option>자연과학</option>
					<option>공학</option>
					<option>의학</option>
					<option>예술</option>
					<option>IT</option>
					<option>역사</option>
				</select> <select onChange="change2ndCategory(this);">
					<option>소분류 선택</option>
					<option>통계</option>
					<option>사회</option>
					<option>정치</option>
					<option>행정</option>
					<option>법</option>
					<option>뉴스와 미디어</option>
					<option>교육</option>
					<option>국방 및 군사</option>
				</select> <input type="text" placeholder="상세 분류 입력"> <select>
					<option>시간 선택</option>
					<%
						for (int i = 10; i <= 50; i++) {
					%>
					<option value="<%=i%>">
						<%=i%>분
					</option>
					<%
						}
					%>
				</select> <select id="openex_exCount" onchange="exCount(this)">
					<option>문제 수 선택</option>
					<%
						for (int i = 5; i <= 50; i++) {
					%>
					<option>
						<%=i%>문제
					</option>
					<%
						}
					%>
				</select> <select>
					<option>초급</option>
					<option>중급</option>
					<option>고급</option>
					<option>심화</option>
				</select>

			</div>
			<div id="openex_setExam_title">
				<input type="text" placeholder="문제 제목을 입력해주세요" style="width: 635px;">
			</div>
			<div id="openex_setExam_excountbox" style="float: left;">
				<div id="openex_setExam_excount" onmouseover="scrollUnhidden()"
					style="overflow: hidden;" onmouseout="scrollHidden()">상단 메뉴에서
					문제 수를 선택하세요</div>
				<table id="openex_setExam_excount_down"></table>
			</div>
			<div id="openex_setExam_content">
				<textarea rows="25" cols="100" placeholder="문제의 상세 내용을 기재해주세요"></textarea>
			</div>
			<div id="openex_setExam_radiobox"
				style="width: 1000px; height: 110px; left: 20px">
				<br>
				<table align="center" style="width: 850px;">
					<tr>
						<td>①</td>
						<td>②</td>
						<td>③</td>
						<td>④</td>
						<td>⑤</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="보기입력"></td>
						<td><input type="text" placeholder="보기입력"></td>
						<td><input type="text" placeholder="보기입력"></td>
						<td><input type="text" placeholder="보기입력"></td>
						<td><input type="text" placeholder="보기입력"></td>
					</tr>
					<tr>
						<td><input type="radio" name="radioSelect"></td>
						<td><input type="radio" name="radioSelect"></td>
						<td><input type="radio" name="radioSelect"></td>
						<td><input type="radio" name="radioSelect"></td>
						<td><input type="radio" name="radioSelect"></td>
					</tr>
					<tr align="center" id="openex_setExam_submit">
						<td colspan="5"><input type="button" value="출제"></td>
					</tr>
				</table>
			</div>
		</div>
		<img src="img/mainimg3.png"
			style="margin: auto; width: 100%; height: 70%; position: relative; top: 10px;">
	</form>
	</section>
</body>
</html>