<%@page import="com.wit.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT는 당신을 환영합니다!</title>
<link rel="stylesheet" type="text/css"
	href="/teamP/cooperation/_OPENEX/OPENEXcss/witMemberHeader.css">
<style type="text/css">
</style>

<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/script/witMemberHeader.js"></script>
<%
	Member member = (Member) session.getAttribute("member");
	boolean login = member == null ? false : true;
	String href1 = "#";
	String href2 = "#";
	String href3 = "#";
	String href4 = "#";
	String logfunc = "";
	if (login) { // 로그인 상태일 때
		href1 = "WIT_OPENEX_setExam.jsp";
		href2 = "WIT_OPENEX_list.jsp";
		href3 = "WIT_OPENEX_ranking.jsp";
		href4 = "WIT_OPENEX_archive.jsp";
	} else { // 로그인 상태가 아닐 때
		logfunc = "showLogin()";
	}
%>
</head>
<body id="ibm-com" class="v17">
	<div class="ibm-home-page" id="ibm-top" style="margin-top: 120px;">

		<!-- MASTHEAD_BEGIN -->
		<header id="ibm-masthead"> <!-- ibm-mast-options --> <jsp:include
			page="/cooperation/header_ibm-mast-options.jsp"></jsp:include> <!-- //ibm-mast-options -->
		<div id="ibm-universal-nav" class="ibm-universal-nav">
			<ul id="ibm-unav-links">
				<li id="ibm-home" class="" style="display: block;"><a
					href="/teamP/cooperation/WIT_Main_index.jsp">WIT®</a></li>
			</ul>
			<ul id="ibm-menu-links">
				<li id="openex_logo_backhome"><a href="WIT_OPENEX_index.jsp"
					style="font-weight: bold; color: white; font-style: italic; margin-top: -3px; text-shadow: 1px 1px 1px #CCCCCC; font-size: 25px; position: relative;">OPENEX</a></li>
				<li onclick="<%=logfunc%>"><a href="<%=href1%>"
					id="OPENEX_headerMenu1"> 문제 출제</a></li>
				<li onclick="<%=logfunc%>"><a href="<%=href2%>"
					id="OPENEX_headerMenu2"> 문제 풀이</a></li>
				<li onclick="<%=logfunc%>"><a href="<%=href3%>"
					id="OPENEX_headerMenu3"> 랭킹</a></li>
				<li onclick="<%=logfunc%>"><a href="<%=href4%>"
					id="OPENEX_headerMenu4"> 아카이브</a></li>
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