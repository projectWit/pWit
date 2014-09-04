<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="OPENEXscript/SetExam.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
	<form action="/teamP/WIT_OPENEX_setExam_section4.op">
		<div ID="OPENEX_setExam_menuContainer">
			<div id="menuContaner">
				<table align="center">
					<tr>
						<td colspan="5"><div class="headMenu">
								<div id="OPENEX_LogoMenu">
									<br>OPENEX SET EXAM SYSTEM
								</div>
							</div></td>
					</tr>
					<tr>
						<c:forEach var="item" items="${mjSubNameList}" end="4"
							varStatus="status">
							<td>
								<div id="mainMenu${status.index}" class="mainMenu"
									name="${item.MJ_NO}">${item.MJ_NAME}</div>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="item" items="${mjSubNameList}" begin="5" end="10"
							varStatus="status">
							<td>
								<div id="mainMenu${status.index}" class="mainMenu"
									name="${item.MJ_NO}">${item.MJ_NAME}</div>
							</td>
						</c:forEach>
					</tr>
				</table>
				<table align="center">
					<tr>
						<td><c:forEach var="item" items="${mdSubNameList}"
								varStatus="status">
								<div id="subMenu${item.MJ_NO-1}${status.index}" class="subMenu"
									name="${item.MD_NO}">${item.MD_NAME}</div>
							</c:forEach></td>
					</tr>
				</table>
				<table align="center" border="0">
					<tr>
						<td>
							<div id="openex_setExam_selectbox" style="text-align: center;">
								<input type="hidden" id="sel1stCategoryHd" name="MJ_NO">
								<input type="hidden" id="sel2ndCategoryHd" name="MD_NO">

								<table>
									<tr>
										<td colspan="2"><span id="sel1stCategory"
											style="width: 150px;"></span><span id="sel2ndCategory"
											style="width: 150px;"></span></td>
									</tr>
									<tr>
										<td><input type="text" placeholder="소분류 입력" required
											name="EX_MNNAME"></td>
										<td><input type="text" placeholder="시험 제목을 입력해 주세요."
											style="width: 250px;" required name="EX_TITLE"></td>
									</tr>
									<tr>
										<td colspan="2"><textarea cols="65" rows="3" required
												placeholder="시험에 관한 간략한 설명을 입력해주세요." name="EX_EXPLAIN"></textarea></td>
									</tr>
									<tr>
										<td colspan="2"><input type="text" style="width: 100%"
											placeholder="추천강좌를 입력해주세요. 응시자에게 제공됩니다.(링크 혹은 제목)" required
											name="EX_RECOMMENDLECTURE"></td>
									</tr>
									<tr>
										<td colspan="2"><input type="text" style="width: 100%"
											placeholder="참고자료를 입력해주세요. 응시자에게 제공됩니다. (링크 혹은 제목)" required
											name="EX_REFERENCE"></td>
									</tr>
								</table>
								<select name="EXTIMELIMIT">
									<%
										for (int i = 10; i <= 50; i++) {
									%>
									<option value="<%=i%>">
										<%=i%>분
									</option>
									<%
										}
									%>
								</select> <select id="openex_exCount" onchange="exCount(this)"
									name="EX_QUESTIONSCOUNT">
									<%
										for (int i = 5; i <= 50; i++) {
									%>
									<option value="<%=i%>">
										<%=i%>문항
									</option>
									<%
										}
									%>
								</select> <select name="DIF_NO">
									<option value="1">초급</option>
									<option value="2">중급</option>
									<option value="3">고급</option>
									<option value="4">심화</option>
								</select><br> <br> <input type="submit" value="출제 시작"
									class="colorBtn">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
</html>