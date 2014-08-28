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
		<div id="openex_setExam">
			<table align="center" border="0">
				<tr>
					<td colspan="5"><span>IT</span>> <span>소프트웨어</span>> <span>자바</span>
						<span>20분</span>/ <span>10문제</span>/ <span>초급</span><br> <span>[자바
							제어문]</span></td>
				</tr>
				<tr>
					<td>
						<div id="openex_setExam_excountbox">
							<div id="openex_setExam_excount"
								style="overflow: none; font-size: 13px;">
								<p style="height: 20px;">현재 총배점</p>
								<p style="border-bottom: 1px solid black; height: 20px;">0점</p>
								<%
									for (int i = 1; i < 11; i++) {
								%>
								<p><%=i%>번 문제<input type="checkbox" class="radioInputVLine">0점
								</p>
								<hr>
								<%
									}
								%>
								<input type="text" placeholder="배점" size="7"> <input type="button"
									value="입력" class="colorBtn2" style="width: 30%">
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
					<td colspan="5"><input type="button" value="임시 저장"
						class="colorBtn"></td>
				</tr>
			</table>
		</div>
	</form>
	</section>
</body>
</html>