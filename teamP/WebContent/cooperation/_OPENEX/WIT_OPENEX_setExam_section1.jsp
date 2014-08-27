<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript"	src="OPENEXscript/SetExam.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
	<form action="WIT_OPENEX_setExam2.jsp">
		<div ID="OPENEX_setExam_menuContainer">
			<div id="menuContaner">
				<table align="center">
					<tr>
						<td colspan="5"><div class="headMenu">
								<div id="OPENEX_LogoMenu">
									<br>OPENEX SET EXAM SYSTEM
								</div>
							</div></td>
					<tr>
					<tr>
						<td>
							<div id="mainMenu0" class="mainMenu"><br>철학</div>
						</td>
						<td>
							<div id="mainMenu1" class="mainMenu"><br>종교</div>
						</td>
						<td>
							<div id="mainMenu2" class="mainMenu"><br>사회과학</div>
						</td>
						<td>
							<div id="mainMenu3" class="mainMenu"><br>경제</div>
						</td>
						<td>
							<div id="mainMenu4" class="mainMenu"><br>자연과학</div>
						</td>
					</tr>
					<tr>
						<td>
							<div id="mainMenu5" class="mainMenu"><br>공학</div>
						</td>
						<td>
							<div id="mainMenu6" class="mainMenu"><br>의학</div>
						</td>
						<td>
							<div id="mainMenu7" class="mainMenu"><br>IT</div>
						</td>
						<td>
							<div id="mainMenu8" class="mainMenu"><br>예술</div>
						</td>
						<td>
							<div id="mainMenu9" class="mainMenu"><br>역사</div>
						</td>
					</tr>
				</table>
				<table align="center">
					<tr>
						<td>
							<div id="subMenu00" class="subMenu"><br>철학일반</div>
							<div id="subMenu01" class="subMenu"><br>철학체계</div>
							<div id="subMenu02" class="subMenu"><br>동양철학</div>
							<div id="subMenu03" class="subMenu"><br>서양철학</div>
							<div id="subMenu04" class="subMenu"><br>논리학</div>
							<div id="subMenu05" class="subMenu"><br>윤리학</div>
							<div id="subMenu10" class="subMenu"><br>종교일반</div>
							<div id="subMenu11" class="subMenu"><br>비교종교</div>
							<div id="subMenu12" class="subMenu"><br>불교</div>
							<div id="subMenu13" class="subMenu"><br>그리스도교</div>
							<div id="subMenu14" class="subMenu"><br>이슬람교</div>
							<div id="subMenu15" class="subMenu"><br>힌두교</div>
							<div id="subMenu16" class="subMenu"><br>기타 종교</div>
							<div id="subMenu20" class="subMenu"><br>사회과학일반</div>
							<div id="subMenu21" class="subMenu"><br>통계</div>
							<div id="subMenu22" class="subMenu"><br>사회</div>
							<div id="subMenu23" class="subMenu"><br>정치</div>
							<div id="subMenu24" class="subMenu"><br>행정</div>
							<div id="subMenu25" class="subMenu"><br>법</div>
							<div id="subMenu26" class="subMenu"><br>교육</div>
							<div id="subMenu27" class="subMenu"><br>국방 및 군사</div>
							<div id="subMenu28" class="subMenu"><br>뉴스와 미디어</div>
							<div id="subMenu30" class="subMenu"><br>경제일반</div>
							<div id="subMenu31" class="subMenu"><br>기업</div>
							<div id="subMenu32" class="subMenu"><br>금융</div>
							<div id="subMenu33" class="subMenu"><br>재정</div>
							<div id="subMenu34" class="subMenu"><br>노동</div>
							<div id="subMenu35" class="subMenu"><br>국제경제</div>
							<div id="subMenu36" class="subMenu"><br>산업</div>
							<div id="subMenu37" class="subMenu"><br>전통사회경제</div>
							<div id="subMenu38" class="subMenu"><br>각국의 경제</div>
							<div id="subMenu39" class="subMenu"><br>부동산</div>
							<div id="subMenu39_1" class="subMenu"><br>경영</div>
							<div id="subMenu40" class="subMenu"><br>수학</div>
							<div id="subMenu41" class="subMenu"><br>물리학</div>
							<div id="subMenu42" class="subMenu"><br>화학</div>
							<div id="subMenu43" class="subMenu"><br>지구과학</div>
							<div id="subMenu44" class="subMenu"><br>생명과학</div>
							<div id="subMenu50" class="subMenu"><br>건축공학</div>
							<div id="subMenu51" class="subMenu"><br>토목건설공학</div>
							<div id="subMenu52" class="subMenu"><br>기계공학</div>
							<div id="subMenu53" class="subMenu"><br>자동차공학</div>
							<div id="subMenu54" class="subMenu"><br>항공우주공학</div>
							<div id="subMenu55" class="subMenu"><br>전기공학</div>
							<div id="subMenu56" class="subMenu"><br>전자공학</div>
							<div id="subMenu57" class="subMenu"><br>금속재료공학</div>
							<div id="subMenu58" class="subMenu"><br>화학공학</div>
							<div id="subMenu59" class="subMenu"><br>원자력공학</div>
							<div id="subMenu59_1" class="subMenu"><br>환경공학</div>
							<div id="subMenu59_2" class="subMenu"><br>조선해양공학</div>
							<div id="subMenu59_3" class="subMenu"><br>무기 및 병기공학</div>
							<div id="subMenu59_4" class="subMenu"><br>산업공학</div>
							<div id="subMenu60" class="subMenu"><br>의학일반</div>
							<div id="subMenu61" class="subMenu"><br>한의학</div>
							<div id="subMenu62" class="subMenu"><br>수의학</div>
							<div id="subMenu63" class="subMenu"><br>약학</div>
							<div id="subMenu64" class="subMenu"><br>건강 및 보건위생</div>
							<div id="subMenu70" class="subMenu"><br>IT일반</div>
							<div id="subMenu71" class="subMenu"><br>하드웨어</div>
							<div id="subMenu72" class="subMenu"><br>소프트웨어</div>
							<div id="subMenu73" class="subMenu"><br>통신 및 네트워크</div>
							<div id="subMenu74" class="subMenu"><br>인터넷</div>
							<div id="subMenu80" class="subMenu"><br>문학</div>
							<div id="subMenu81" class="subMenu"><br>음악</div>
							<div id="subMenu82" class="subMenu"><br>건축</div>
							<div id="subMenu83" class="subMenu"><br>사진</div>
							<div id="subMenu84" class="subMenu"><br>영화</div>
							<div id="subMenu85" class="subMenu"><br>연극</div>
							<div id="subMenu86" class="subMenu"><br>무용</div>
							<div id="subMenu87" class="subMenu"><br>현대예술</div>
							<div id="subMenu88" class="subMenu"><br>대중연예</div>
							<div id="subMenu89" class="subMenu"><br>각국의 문화예술</div>
							<div id="subMenu90" class="subMenu"><br>역사일반</div>
							<div id="subMenu91" class="subMenu"><br>아시아사</div>
							<div id="subMenu92" class="subMenu"><br>유럽사</div>
							<div id="subMenu93" class="subMenu"><br>아프리카사</div>
							<div id="subMenu94" class="subMenu"><br>아메리카사</div>
							<div id="subMenu95" class="subMenu"><br>오세아니아사</div>
							<div id="subMenu96" class="subMenu"><br>서양사</div>
							<div id="subMenu97" class="subMenu"><br>동양사</div>
						</td>
					</tr>
				</table>
				<table align="center" border="0">
					<tr>
						<td>
							<div id="openex_setExam_selectbox" style="text-align: center;">
								<span id="sel1stCategory" style="width: 150px;"></span> <span
									id="sel2ndCategory" style="width: 150px;"></span> <br>
								<br> <input type="text" placeholder="소분류 입력"> <input
									type="text" placeholder="시험 제목을 입력해 주세요" style="width: 250px;">
								<br> <br> <select>
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
									<option>난이도 선택</option>
									<option>초급</option>
									<option>중급</option>
									<option>고급</option>
									<option>심화</option>
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