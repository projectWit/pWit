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
<script type="text/javascript" src="OPENEXscript/OPENEX.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		findInput();
	});
</script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
<style type="text/css">
</style>
</head>
<body>
	<section>
	<form>
		<div id="openex_setExam"
			style="width: 100%; height: 100%; min-width: 1000px; min-height: 650px; position: relative; top: 25px; margin: 0 auto;' ">
			<table align="center" border="0">
				<tr>
					<td colspan="5"><span>대분류</span>> <span>중분류</span>> <span>소분류</span><br>
						<span>[시험 제목]</span> <span>[제한 시간]</span> <span>문항수</span>/ <span>난이도</span>
					</td>
				</tr>
				<tr>
					<td style="height: 400px">
						<div id="openex_setExam_excountbox">
							<div id="openex_setExam_excount" onmouseover="scrollUnhidden()"
								style="overflow: hidden;" onmouseout="scrollHidden()">문제 수
								노출
								<div>문항번호</div>
								<div>배점</div>
								</div>
						</div>
					</td>
					<td colspan="4"><div id="openex_setExam_content">
							<textarea rows="25" cols="100" placeholder="문제의 상세 내용을 기재해주세요"></textarea>
						</div></td>
				</tr>
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
					<td colspan="5"><input type="button" value="출제" class="colorBtn"></td>
				</tr>
			</table>
		</div>
		<img src="img/mainimg3.png"
			style="margin: auto; width: 100%; height: 70%; position: relative; top: 10px;">
	</form>
	</section>
</body>
</html>