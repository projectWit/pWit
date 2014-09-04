<%@page import="com.wit.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT는 당신을 환영합니다!</title>
<!--[if lt IE 9]>
<script src="dist/html5shiv.js"></script>
<![endif]-->

<link rel="stylesheet" type="text/css" href="/teamP/cooperation/css/witMemberHeader.css">
<style type="text/css">
</style>

<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/witMemberHeader.js"></script>
<script type="text/javascript">

</script>
</head>
<body  id="ibm-com" class="v17">
<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 33px;"> -->
<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 74px;"> -->
<div class="ibm-home-page" id="ibm-top" style="margin-top: 120px;">
<%
Member member = (Member) session.getAttribute("member");
boolean login = member == null ? false : true;
String href1 = "#";
String href2 = "#";
String href3 = "#";
String href4 = "#";
String href5 = "#";
String logfunc = "";
String name1 = "수강 강좌";
String name2 = "동호회";
String name3 = "질의 응답";
String name4 = "대관 신청";
String name5 = "마이페이지";
if (login) { // 로그인 관리자 때 
   if(member.getmId().equals("admin_gm") || member.getmId().equals("admin")) {
	   name1="회원 관리";
	   name2="동호회 관리";
	   name3="강좌 관리";
	   name4="시설 관리";
	   name5="대관 관리";
	   href1 = "WIT_GM_member.jsp";
	   href2 = "WIT_GM_club.jsp";
	   href3 = "WIT_GM_worker.jsp";
	   href4 = "WIT_GM_facilities.jsp";
	   href5 = "WIT_GM_rent.jsp";
   } else {
	   href1 = "Member_GM_Lecture.jsp";
	   href2 = "Member_GM_Club.jsp";
	   href3 = "Member_GM_Question.jsp";
	   href4 = "Member_GM_Rent.jsp";
	   href5 = "Member_GM_MyPage.jsp";
   }
} else {
	logfunc = "showLogin()";
}
%>
<!-- MASTHEAD_BEGIN -->
<header id="ibm-masthead"> 

<!-- ibm-mast-options --> 
	<jsp:include page="/cooperation/header_ibm-mast-options.jsp"></jsp:include>
<!-- //ibm-mast-options --> 
	
	<!-- ibm-universal-nav --> <!-- <div id="ibm-universal-nav" style="height: 30px;"> -->
	<div id="ibm-universal-nav">
		<ul id="ibm-unav-links">
			<!-- <li id="ibm-home" class="ibm-sm-logo" style="display: block; height: 30px;"><a href="#">IBM®</a></li> -->
			<li id="ibm-home" class="" style="display: b	lock;"><a href="/teamP/cooperation/WIT_Main_index.jsp">WIT®</a></li>
		</ul>
		<!-- <ul id="ibm-menu-links" class="ibm-access"> -->
		<ul id="ibm-menu-links">
			<li onmouseover="slideRibbon(-1)"><a  href="WIT_GM_index.jsp" style="font-weight: bold; color: white; font-style: italic; margin-top: -3px;text-shadow: 1px 1px 1px #CCCCCC;"><span style="font-size: xx-large;">G M</span></a></li>
			<li onmouseover="slideRibbon(1)"><a onclick="<%=logfunc%>" href="<%=href1%>"><%=name1 %></a></li>
			<li onmouseover="slideRibbon(2)"><a onclick="<%=logfunc%>" href="<%=href2%>"><%=name2 %></a></li>
			<li onmouseover="slideRibbon(3)"><a onclick="<%=logfunc%>" href="<%=href3%>"><%=name3 %></a></li>
			<li onmouseover="slideRibbon(4)"><a onclick="<%=logfunc%>" href="<%=href4%>"><%=name4 %></a></li>
			<li onmouseover="slideRibbon(5)"><a onclick="<%=logfunc%>" href="<%=href5%>"><%=name5 %></a></li>
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
</header>
<!-- MASTHEAD_END -->

</div>
	<jsp:include page="/cooperation/loginCommon.jsp"></jsp:include>
</body>
</html>