<%@page import="com.wit.member.Employee"%>
<%@page import="com.wit.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT는 당신을 환영합니다!</title>
<!--[if lt IE 9]>
<script src="dist/html5shiv.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="../css/witMemberHeader.css">
<style type="text/css">
</style>
<%
Member member = (Member) session.getAttribute("member");
Employee employee = (Employee) session.getAttribute("employee");
//boolean login = member == null ? false : true;
boolean login = employee == null ? false : true;

String href1 = "#";
String href2 = "#";
String href3 = "#";
String href4 = "#";
String href5 = "#";
String logfunc = "";
String name1 = "인사 관리";
String name2 = "근태 관리";
String name3 = "커뮤니티";
String name4 = "증명서서식";
if (login) { // 로그인 관리자 때 
   if(employee.geteId().equals("99999")) {
	   name1="인사 관리";
	   name2="근태 관리";
	   name3="커뮤니티 관리";
	   name4="증명서서식 관리";	
	   href1 = "InsaLeftMan.jsp";
	   href2 = "ClockLeftMan.jsp";
	   href3 = "BoaLeftMan.jsp";
	   href4 = "DocLeftManPre.jsp";
	  
   } else {
	   href1 = "InsaLeft.jsp";
	   href2 = "ClockLeft.jsp";
	   href3 = "BoardLeft.jsp";
	   href4 = "DocLeft.jsp";
   }
} else {
	logfunc = "showLogin()";
}

%>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/witMemberHeader.js"></script>
<!-- 절대경로
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/_alphaStudy/myScript/stuCommon.js"></script> -->
</head>
<body id="ibm-com" class="v17">
	<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 33px;"> -->
	<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 74px;"> -->
	<div class="ibm-home-page" id="ibm-top" style="margin-top: 120px;">

		<!-- MASTHEAD_BEGIN -->
		<header id="ibm-masthead"> 
		
<!-- ibm-mast-options --> <!-- <div id="ibm-mast-options" style="height: 4px;"> -->
		<jsp:include page="/cooperation/header_ibm-mast-options.jsp"></jsp:include>
<!-- //ibm-mast-options --> 

<!-- ibm-universal-nav --> <!-- <div id="ibm-universal-nav" style="height: 30px;"> -->
		<div id="ibm-universal-nav">
			<ul id="ibm-unav-links">
				<!-- <li id="ibm-home" class="ibm-sm-logo" style="display: block; height: 30px;"><a href="#">IBM®</a></li> -->
				<li id="ibm-home" class="" style="display: block;"><a
					href="../WIT_Main_index.jsp">IBM®</a></li>
			</ul>
			<!-- <ul id="ibm-menu-links" class="ibm-access"> -->
			<ul id="ibm-menu-links">
				<li onmouseover="slideRibbon(-1)"><a href="WIT_Insa_index.jsp"
					style="font-weight: bold; color: white; font-style: italic; margin-top: -3px; text-shadow: 1px 1px 1px #CCCCCC;"><span
						style="font-size: xx-large;">Human</span></a></li>
				<li onmouseover="slideRibbon(0)"><a onclick="<%=logfunc%>" href="<%=href1%>"><%=name1 %></a></li>
				<li onmouseover="slideRibbon(1)"><a onclick="<%=logfunc%>" href="<%=href2%>"><%=name2 %></a></li>
				<li onmouseover="slideRibbon(2)"><a onclick="<%=logfunc%>" href="<%=href3%>"><%=name3 %></a></li>
				<li onmouseover="slideRibbon(3)"><a onclick="<%=logfunc%>" href="<%=href4%>"><%=name4 %></a></li>
			</ul>
		</div>
		<!-- //ibm-universal-nav --> <!-- ibm-search-module --> <!-- <div id="ibm-search-module" class="ibm-access"> -->
		<div id="ibm-search-module">
			<form id="ibm-search-form" action="#" method="get">
				<p>
					<label for="q"> <!-- <span class="ibm-access">Search</span> -->
					</label> <input type="text" maxlength="100" value="" name="q" id="q">
					<input type="hidden" value="17" name="v"> <input
						type="hidden" value="utf" name="en"> <input type="hidden"
						value="en" name="lang"> <input type="hidden" value="us"
						name="cc"> <input type="submit" id="ibm-search"
						class="ibm-btn-search" value="Submit">
				</p>
			</form>
		</div>
		<!-- //ibm-search-module --> <!-- ibm-common-menu --> <!-- <div id="ibm-common-menu" style="display: none;height: 1px;overflow: hidden;"> -->
		<div id="ibm-common-menu"
			style="display: block; height: 41px; overflow: hidden;">
			<div class="ibm-container-body" id="ibmweb_ribbon_0"
				style="height: 40px;">

				<!-- ****************************************************************************************** -->
				<div class="ibm-menu-subtabs ibm-is-hidden"
					style="display: block; opacity: 1; margin-top: 0px; margin-bottom: 0px;">

					<ul id="subTab-0" style="display: none;">
						<li class="subTab-0-0" style="display: block;"><a href="InsaLeft.jsp">인사기록표
								조회</a></li>
						<li class="subTab-0-1" style="display: block;"><a href="InsaLeftUpd.jsp">개인정보수정</a></li>
					</ul>

					<ul id="subTab-1" style="display: none;">
						<li class="subTab-1-0" style="display: block;"><a href="ClockLeft.jsp">일일근태작성</a></li>
						<li class="subTab-1-1" style="display: block;"><a href="ClkLeftMon.jsp">월별근태조회</a></li>
						<li class="subTab-1-2" style="display: block;"><a href="ClockLeftVac.jsp">연월차등록</a></li>
						<li class="subTab-1-3" style="display: block;"><a href= "ClockLeftEval.jsp">근무평가</a></li>
					</ul>

					<ul id="subTab-2" style="display: none;">
						<li class="subTab-2-0" style="display: block;"><a href="BoardLeft.jsp">공지사항</a></li>
						<li class="subTab-2-1" style="display: block;"><a href="BoardLeft.jsp">자유게시판</a></li>
						<li class="subTab-2-2" style="display: block;"><a href="BoardLeftFAQ.jsp">FAQ</a></li>
					</ul>

					<ul id="subTab-3" style="display: none;">
						<li class="subTab-3-0" style="display: block;"><a href="DocLeft.jsp">재직증명서</a></li>
						<li class="subTab-3-1" style="display: block;"><a href="DocLeftCar.jsp">경력증명서</a></li>
						<li class="subTab-3-2" style="display: block;"><a href="DocLeftTrip.jsp">출장증명서</a></li>
						<li class="subTab-3-3" style="display: block;"><a href="DocLeftOut.jsp">퇴직증명서</a></li>
					</ul>

				</div>
				<!-- ****************************************************************************************** -->

			</div>
		</div>
		<!-- //ibm-common-menu --> </header>
		<!-- MASTHEAD_END -->

	</div>
	<jsp:include page="/cooperation/loginCommon.jsp"></jsp:include>
</body>

</html>