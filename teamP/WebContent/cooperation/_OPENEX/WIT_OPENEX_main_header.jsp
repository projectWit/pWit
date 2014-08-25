<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT는 당신을 환영합니다!</title>
<!-- <link rel="stylesheet" type="text/css" href="../css/witCommon.css"> -->
<link rel="stylesheet" type="text/css" href="OPENEXcss/witCommon.css">
<link rel="stylesheet" type="text/css" href="OPENEXcss/WIT_OPENEX_section.css">
<style type="text/css">
</style>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/witCommon.js"></script>
</head>
<body id="ibm-com" class="v17">
	<div class="ibm-home-page" id="ibm-top" style="margin-top: 74px;">

		<!-- MASTHEAD_BEGIN -->
		<header id="ibm-masthead">
		<div id="ibm-mast-options">
			<div style="position: absolute;">scroll :</div>
			<div id="scroll" style="position: absolute; margin-left: 40px;"></div>
			<ul>
				<li id="ibm-geo"><a href="#">한국어</a></li>
				<li id="ibm-sso"><span>
						<p id="ibm-welcome-msg">환영합니다</p> <span style="display: inline;">
							<span class="ibm-greeting-hasp">[</span> <span> <span
								class="ibm-sso-link"><a href="#" class="ibm-sso-signin">WIT
										로그인</a></span> <span class="ibm-sso-link"> / <a href="#"
									class="ibm-sso-register">회원등록</a></span>
						</span> <span class="ibm-greeting-hasp">]</span>
					</span>
				</span></li>
			</ul>
		</div>
		<div id="ibm-universal-nav">
			<ul id="ibm-unav-links">
				<li id="ibm-home" class="" style="display: block;"><a
					href="../WIT_Main_index.jsp">WIT®</a></li>
			</ul>
			<ul>
				<li id="openex_logo_backhome"><a href="WIT_OPENEX_index.jsp"
					style="font-weight: bold; color: white; font-style: italic; margin-top: -3px; text-shadow: 1px 1px 1px #CCCCCC; font-size: 25px; left: 120px; position: relative;">OPENEX</a></li>
			</ul>
			<ul id="ibm-menu-links">
				<li onmouseover="slideRibbon(0)"><a
					href="WIT_OPENEX_setExam.jsp">문제 출제</a></li>
				<li onmouseover="slideRibbon(1)"><a href="WIT_OPENEX_list.jsp">문제
						풀이</a></li>
				<li onmouseover="slideRibbon(2)"><a
					href="WIT_OPENEX_ranking.jsp">랭킹</a></li>
				<li onmouseover="slideRibbon(3)"><a
					href="WIT_OPENEX_archive.jsp">아카이브</a></li>
			</ul>
		</div>
		<div id="ibm-search-module">
			<form id="ibm-search-form" action="#" method="get">
				<p>
					<label for="q"> </label> <input type="text" maxlength="100"
						value="" name="q" id="q"> <input type="hidden" value="17"
						name="v"> <input type="hidden" value="utf" name="en">
					<input type="hidden" value="en" name="lang"> <input
						type="hidden" value="us" name="cc"> <input type="submit"
						id="ibm-search" class="ibm-btn-search" value="Submit">
				</p>
			</form>
		</div>
		<!-- //ibm-search-module --> <!-- ibm-common-menu --> <!-- <div id="ibm-common-menu" style="display: none;height: 1px;overflow: hidden;"> -->
		<div id="ibm-common-menu"
			style="display: none; height: 292px; overflow: hidden;">
			<div class="ibm-container-body" id="ibmweb_ribbon_0"
				style="height: 292px;">
				<a class="ibm-ribbon-prev ibm-disabled" href="#" title="Previous"
					style="margin-top: 188px; display: none;">Previous</a>

				<div class="ibm-ribbon-pane" style="height: 300px;">
					<div class="ibm-ribbon-section" id="ibmweb_ribbon_2_scrollable"
						style="left: -980px;">

						<div class="ibm-columns" id="ibmweb_ribbonSlide_10">
							<h2 class="ibm-access" id="ibm-rib-head-2">출제</h2>
							<div class="ibm-columns" id="ibmweb_ribbonItemAbstract_10"
								style="padding-top: 10px;">
								<div class="ibm-col-6-1">

									<h3>
										<a href="#">사회과학</a>
									</h3>
									<ul style="margin-top: 10px; margin-left: 10px;">
										<li><a href="#">통계</a></li>
										<li><a href="#">사회</a></li>
										<li><a href="#">정치</a></li>
										<li><a href="#">행정</a></li>
										<li><a href="#">법</a></li>
										<li><a href="#">뉴스와 미디어</a></li>
										<li><a href="#">교육</a></li>
										<li><a href="#">국방 및 군사</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">경제</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">경제일반</a></li>
										<li><a href="#">기업</a></li>
										<li><a href="#">금융</a></li>
										<li><a href="#">재정</a></li>
										<li><a href="#">노동</a></li>
										<li><a href="#">산업</a></li>
										<li><a href="#">부동산</a></li>
										<li><a href="#">경영</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">자연과학</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">수학</a></li>
										<li><a href="#">물리학</a></li>
										<li><a href="#">화학</a></li>
										<li><a href="#">지구과학</a></li>
										<li><a href="#">생명과학</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">공학</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">건축공학 </a></li>
										<li><a href="#">토목건설공학</a></li>
										<li><a href="#">기계공학</a></li>
										<li><a href="#">항공우주공학</a></li>
										<li><a href="#">전기전자공학</a></li>
										<li><a href="#">금속화학공학</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">의학</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">의학 </a></li>
										<li><a href="#">한의학</a></li>
										<li><a href="#">약학</a></li>
										<li><a href="#">건강 및 보건위생</a></li>
										<li><a href="#">수의학</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">IT</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">IT 일반 </a></li>
										<li><a href="#">하드웨어</a></li>
										<li><a href="#">소프트웨어</a></li>
										<li><a href="#">통신 및 네트워크</a></li>
										<li><a href="#">인터넷</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">예술</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">문학</a></li>
										<li><a href="#">음악</a></li>
										<li><a href="#">미술</a></li>
										<li><a href="#">건축</a></li>
										<li><a href="#">사진</a></li>
										<li><a href="#">영화</a></li>
										<li><a href="#">연극</a></li>
										<li><a href="#">무용</a></li>
									</ul>
								</div>
								<div class="ibm-col-4-1 ibm-col-last">
									<h3>
										<a href="#">역사</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">아시아사 </a></li>
										<li><a href="#">유럽사</a></li>
										<li><a href="#">아프리카사</a></li>
										<li><a href="#">아메리카사</a></li>
										<li><a href="#">오세아니아사</a></li>
										<li><a href="#">서양사</a></li>
										<li><a href="#">역사일반</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="ibm-columns" id="ibmweb_ribbonSlide_10">
							<h2 class="ibm-access" id="ibm-rib-head-2">문제 풀이</h2>
							<div class="ibm-columns" id="ibmweb_ribbonItemAbstract_10"
								style="padding-top: 10px;">
								<div class="ibm-col-6-1">

									<h3>
										<a href="#">사회과학</a>
									</h3>
									<ul style="margin-top: 10px; margin-left: 10px;">
										<li><a href="#">통계</a></li>
										<li><a href="#">사회</a></li>
										<li><a href="#">정치</a></li>
										<li><a href="#">행정</a></li>
										<li><a href="#">법</a></li>
										<li><a href="#">뉴스와 미디어</a></li>
										<li><a href="#">교육</a></li>
										<li><a href="#">국방 및 군사</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">경제</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">경제일반</a></li>
										<li><a href="#">기업</a></li>
										<li><a href="#">금융</a></li>
										<li><a href="#">재정</a></li>
										<li><a href="#">노동</a></li>
										<li><a href="#">산업</a></li>
										<li><a href="#">부동산</a></li>
										<li><a href="#">경영</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">자연과학</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">수학</a></li>
										<li><a href="#">물리학</a></li>
										<li><a href="#">화학</a></li>
										<li><a href="#">지구과학</a></li>
										<li><a href="#">생명과학</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">공학</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">건축공학 </a></li>
										<li><a href="#">토목건설공학</a></li>
										<li><a href="#">기계공학</a></li>
										<li><a href="#">항공우주공학</a></li>
										<li><a href="#">전기전자공학</a></li>
										<li><a href="#">금속화학공학</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">의학</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">의학 </a></li>
										<li><a href="#">한의학</a></li>
										<li><a href="#">약학</a></li>
										<li><a href="#">건강 및 보건위생</a></li>
										<li><a href="#">수의학</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">IT</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">IT 일반 </a></li>
										<li><a href="#">하드웨어</a></li>
										<li><a href="#">소프트웨어</a></li>
										<li><a href="#">통신 및 네트워크</a></li>
										<li><a href="#">인터넷</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">예술</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">문학</a></li>
										<li><a href="#">음악</a></li>
										<li><a href="#">미술</a></li>
										<li><a href="#">건축</a></li>
										<li><a href="#">사진</a></li>
										<li><a href="#">영화</a></li>
										<li><a href="#">연극</a></li>
										<li><a href="#">무용</a></li>
									</ul>
								</div>
								<div class="ibm-col-4-1 ibm-col-last">
									<h3>
										<a href="#">역사</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">아시아사 </a></li>
										<li><a href="#">유럽사</a></li>
										<li><a href="#">아프리카사</a></li>
										<li><a href="#">아메리카사</a></li>
										<li><a href="#">오세아니아사</a></li>
										<li><a href="#">서양사</a></li>
										<li><a href="#">역사일반</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="ibm-columns" id="ibmweb_ribbonSlide_10">
							<h2 class="ibm-access" id="ibm-rib-head-2">랭킹 조회</h2>
							<div class="ibm-columns" id="ibmweb_ribbonItemAbstract_10"
								style="padding-top: 10px;">
								<div class="ibm-col-6-1">

									<h3>
										<a href="#">우수 출제자</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">주간 우수 출제자</a></li>
										<li><a href="#">월간 우수 출제자</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">우수 문제</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">주간 우수 문제</a></li>
										<li><a href="#">월간 우수 문제</a></li>
										<li><a href="#">자주 출제 되는 과목</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">고득점자</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">주간 고득점자</a></li>
										<li><a href="#">월간 고득점자</a></li>
										<li><a href="#">과목별 득점 현황</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="ibm-columns" id="ibmweb_ribbonSlide_10">
							<h2 class="ibm-access" id="ibm-rib-head-2">개인 아카이브</h2>
							<div class="ibm-columns" id="ibmweb_ribbonItemAbstract_10"
								style="padding-top: 10px;">
								<div class="ibm-col-6-1">

									<h3>
										<a href="#">출제</a>
									</h3>
									<ul style="margin-top: 10px; margin-left: 10px;">
										<li><a href="#">작성한 문제 조회</a></li>
										<li><a href="#">추천 순 문제 조회</a></li>
										<li><a href="#">참여 현황 조회</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">풀이</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">풀이한 문제 조회</a></li>
										<li><a href="#">성적순 조회</a></li>
										<li><a href="#">시간순 조회</a></li>
									</ul>
								</div>
								<div class="ibm-col-6-1">
									<h3>
										<a href="#">성적</a>
									</h3>
									<ul style="margin-top: 10px;">
										<li><a href="#">과목별 검토 조회</a></li>
										<li><a href="#">추천 결과 조회</a></li>
										<li><a href="#">경향 분석</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="ibm-mm-close">
			<span title="Close"></span>
		</div>
	</div>
	<!-- //ibm-common-menu -->
	</header>
	<!-- MASTHEAD_END -->
</body>
</html>