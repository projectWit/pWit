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
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/SetExam.js"></script>
</head>
<body>
	<form action="WIT_OPENEX_setExam2.jsp">
		<div ID="OPENEX_setEam_menuContainer">
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
							<div id="mainMenu0" class="mainMenu">철학</div>
						</td>
						<td>
							<div id="mainMenu1" class="mainMenu">종교</div>
						</td>
						<td>
							<div id="mainMenu2" class="mainMenu">사회과학</div>
						</td>
						<td>
							<div id="mainMenu3" class="mainMenu">경제</div>
						</td>
						<td>
							<div id="mainMenu4" class="mainMenu">자연과학</div>
						</td>
					</tr>
					<tr>
						<td>
							<div id="mainMenu5" class="mainMenu">공학</div>
						</td>
						<td>
							<div id="mainMenu6" class="mainMenu">의학</div>
						</td>
						<td>
							<div id="mainMenu7" class="mainMenu">IT</div>
						</td>
						<td>
							<div id="mainMenu8" class="mainMenu">예술</div>
						</td>
						<td>
							<div id="mainMenu9" class="mainMenu">역사</div>
						</td>
					</tr>
				</table>
				<table align="center">
					<tr>
						<td>
							<div id="subMenu00" class="subMenu">철학일반</div>
							<div id="subMenu01" class="subMenu">철학체계</div>
							<div id="subMenu02" class="subMenu">동양철학</div>
							<div id="subMenu03" class="subMenu">서양철학</div>
							<div id="subMenu04" class="subMenu">논리학</div>
							<div id="subMenu05" class="subMenu">윤리학</div>
							<div id="subMenu10" class="subMenu">종교일반</div>
							<div id="subMenu11" class="subMenu">비교종교</div>
							<div id="subMenu12" class="subMenu">불교</div>
							<div id="subMenu13" class="subMenu">그리스도교</div>
							<div id="subMenu14" class="subMenu">이슬람교</div>
							<div id="subMenu15" class="subMenu">힌두교</div>
							<div id="subMenu16" class="subMenu">기타 종교</div>
							<div id="subMenu20" class="subMenu">사회과학일반</div>
							<div id="subMenu21" class="subMenu">통계</div>
							<div id="subMenu22" class="subMenu">사회</div>
							<div id="subMenu23" class="subMenu">정치</div>
							<div id="subMenu24" class="subMenu">행정</div>
							<div id="subMenu25" class="subMenu">법</div>
							<div id="subMenu26" class="subMenu">교육</div>
							<div id="subMenu27" class="subMenu">국방 및 군사</div>
							<div id="subMenu28" class="subMenu">뉴스와 미디어</div>
							<div id="subMenu30" class="subMenu">경제일반</div>
							<div id="subMenu31" class="subMenu">기업</div>
							<div id="subMenu32" class="subMenu">금융</div>
							<div id="subMenu33" class="subMenu">재정</div>
							<div id="subMenu34" class="subMenu">노동</div>
							<div id="subMenu35" class="subMenu">국제경제</div>
							<div id="subMenu36" class="subMenu">산업</div>
							<div id="subMenu37" class="subMenu">전통사회경제</div>
							<div id="subMenu38" class="subMenu">각국의 경제</div>
							<div id="subMenu39" class="subMenu">부동산</div>
							<div id="subMenu39_1" class="subMenu">경영</div>
							<div id="subMenu40" class="subMenu">수학</div>
							<div id="subMenu41" class="subMenu">물리학</div>
							<div id="subMenu42" class="subMenu">화학</div>
							<div id="subMenu43" class="subMenu">지구과학</div>
							<div id="subMenu44" class="subMenu">생명과학</div>
							<div id="subMenu50" class="subMenu">건축공학</div>
							<div id="subMenu51" class="subMenu">토목건설공학</div>
							<div id="subMenu52" class="subMenu">기계공학</div>
							<div id="subMenu53" class="subMenu">자동차공학</div>
							<div id="subMenu54" class="subMenu">항공우주공학</div>
							<div id="subMenu55" class="subMenu">전기공학</div>
							<div id="subMenu56" class="subMenu">전자공학</div>
							<div id="subMenu57" class="subMenu">금속재료공학</div>
							<div id="subMenu58" class="subMenu">화학공학</div>
							<div id="subMenu59" class="subMenu">원자력공학</div>
							<div id="subMenu59_1" class="subMenu">환경공학</div>
							<div id="subMenu59_2" class="subMenu">조선해양공학</div>
							<div id="subMenu59_3" class="subMenu">무기 및 병기공학</div>
							<div id="subMenu59_4" class="subMenu">산업공학</div>
							<div id="subMenu60" class="subMenu">의학일반</div>
							<div id="subMenu61" class="subMenu">한의학</div>
							<div id="subMenu62" class="subMenu">수의학</div>
							<div id="subMenu63" class="subMenu">약학</div>
							<div id="subMenu64" class="subMenu">건강 및 보건위생</div>
							<div id="subMenu70" class="subMenu">IT일반</div>
							<div id="subMenu71" class="subMenu">하드웨어</div>
							<div id="subMenu72" class="subMenu">소프트웨어</div>
							<div id="subMenu73" class="subMenu">통신 및 네트워크</div>
							<div id="subMenu74" class="subMenu">인터넷</div>
							<div id="subMenu80" class="subMenu">문학</div>
							<div id="subMenu81" class="subMenu">음악</div>
							<div id="subMenu82" class="subMenu">건축</div>
							<div id="subMenu83" class="subMenu">사진</div>
							<div id="subMenu84" class="subMenu">영화</div>
							<div id="subMenu85" class="subMenu">연극</div>
							<div id="subMenu86" class="subMenu">무용</div>
							<div id="subMenu87" class="subMenu">현대예술</div>
							<div id="subMenu88" class="subMenu">대중연예</div>
							<div id="subMenu89" class="subMenu">각국의 문화예술</div>
							<div id="subMenu90" class="subMenu">역사일반</div>
							<div id="subMenu91" class="subMenu">아시아사</div>
							<div id="subMenu92" class="subMenu">유럽사</div>
							<div id="subMenu93" class="subMenu">아프리카사</div>
							<div id="subMenu94" class="subMenu">아메리카사</div>
							<div id="subMenu95" class="subMenu">오세아니아사</div>
							<div id="subMenu96" class="subMenu">서양사</div>
							<div id="subMenu97" class="subMenu">동양사</div>
						</td>
					</tr>
				</table>
				<table align="center" border="0">
					<tr>
						<td>
							<div id="openex_setExam_selectbox" style="text-align: center;">
								<span id="sel1stCategory" style="width: 150px;"></span> <span
									id="sel2ndCategory" style="width: 150px;"></span> <br><br> <input
									type="text" placeholder="소분류 입력"> <input type="text"
									placeholder="시험 제목을 입력해 주세요" style="width: 250px;"> <br> <br> <select>
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