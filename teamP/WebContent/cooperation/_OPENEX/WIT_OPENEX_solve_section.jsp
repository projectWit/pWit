<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
</head>
<body>
	<div id="openex_solve">
		<div id="openex_solve_selectbox">
			<label> IT > </label> <label> 소프트웨어 > </label><label> 자바 </label>
		</div>
		<table align="center" border="0">
			<tr>
				<td colspan="2"><span>20분</span>/ <span>10문제</span>/ <span>초급</span><br>
					<span>[자바 제어문]</span></td>
			</tr>
			<tr>
				<td colspan="2"><div id="openex_solve_title">
						<input type="text" style="width: 500px;"
							value="다음은 구구단을 출력하는 프로그램이다 보기 중 [ ]에 들어 갈 것은?">
					</div></td>
			</tr>
			<tr>
				<td>
					<div id="openex_solve_excountbox">
						<div id="openex_solve_excount"
							style="overflow: none; font-size: 13px;">
							<%
								for (int i = 1; i < 11; i++) {
							%>
							<p><%=i%>번 문제
							</p>
							<hr>
							<%
								}
							%>
						</div>
					</div>
				</td>
				<td>
					<div id="openex_solve_content">
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
				</td>
			</tr>
		</table>
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
			<br>
			<div id="openex_solve_submit">
				<input type="button" value="임시저장" class="colorBtn">
			</div>
		</div>
	</div>
</body>
</html>