<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<body>
	<div id="openex_setExam"
		style="width: 1200px; height: 570px; position: relative; top: 10px; left: 25px; float: left;">
		<div id="openex_setExam_classification">
			IT (java)<label> 8분 20초 경과</label> <label> [10문제] </label> <label>
				[초급] </label>
		</div>
		<div id="openex_setExam_selectbox">
			<label> IT > </label> <label> 소프트웨어 > </label><label> java </label>
		</div>
		<div id="openex_solve_title">
			<input type="text" style="width: 535px;"
				value="다음은 구구단을 출력하는 프로그램이다 보기 중 [ ]에 들어 갈 것은?">
		</div>
		<div id="openex_setExam_excount">
			<a href="#">01번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">02번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">03번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">04번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">05번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">06번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">07번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">08번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">09번 문제</a>
			<hr style="width: 120px; color: gray;">
			<a href="#">10번 문제</a>
		</div>
		<div id="openex_setExam_content">
			<textarea rows="25" cols="100">
			
			
			
			
			
			
			int i,j;
			for (i = 1 ; i < 10 ; i++)
			{
				for (j = 2; j < 10 ; j++ )
				{	System.out.print(j+" x "+i+" = "+([ ])+"\t");
			}
				System.out.println();
			}

			</textarea>
		</div>
		<div id="openex_solve_radiobox">
			<table align="center" style="position: relative; left: 40px;">
				<tr>
					<td>① <input type="text" value="j*i "></td>
					<td>② <input type="text" value="i*i  "></td>
					<td>③ <input type="text" value="j*ij"></td>
					<td>④ <input type="text" value="i+j"></td>
					<td>⑤ <input type="text" value="i,j "></td>
				</tr>
				<tr align="left">
					<td><input type="radio" name="radioSelect"></td>
					<td><input type="radio" name="radioSelect"></td>
					<td><input type="radio" name="radioSelect"></td>
					<td><input type="radio" name="radioSelect"></td>
					<td><input type="radio" name="radioSelect"></td>
				</tr>
			</table>
		</div>
		<div id="openex_setExam_submit">
			<input type="button" value="제출">
		</div>
	</div>
	<img src="img/mainimg3.png"
		style="margin: auto; width: 100%; height: 70%; position: relative; top: 10px;">
</body>
</html>