<%@page import="com.wit.Href"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.wit.member.Power"%>
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
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/css/jquery-ui-1.9.2.css">

<script type="text/javascript" src="/teamP/cooperation/script/witMemberHeader.js"></script>

<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_alphaStudy/css/stuCommon.css">
<script type="text/javascript" src="/teamP/cooperation/_alphaStudy/script/stuCommon.js"></script>

<script type="text/javascript" src="/teamP/cooperation/script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/css/calendar.css">
<script type="text/javascript" src="/teamP/cooperation/script/focusInput.js"></script>
<script type="text/javascript">

</script>
</head>


<body  id="ibm-com" class="v17">
<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 33px;"> -->
<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 74px;"> -->
<div class="ibm-home-page" id="ibm-top" style="margin-top: 120px;">

<!-- MASTHEAD_BEGIN -->
<header id="ibm-masthead"> 

<!-- ibm-mast-options --> 
	<%-- <jsp:include page="/cooperation/header_ibm-mast-options.jsp"></jsp:include> --%>
	<%@ include file="/cooperation/header_ibm-mast-options.jsp" %>
<!-- //ibm-mast-options --> 

<%
 List<Href> hrefList = new ArrayList<Href>();

 if (login) { // 로그인 상태일 때
 	if (powerStudy>0) { // 알파스터디의 관리자라면
 		hrefList.add(new Href("/teamP/cooperation/_alphaStudy/@Study_stuSearch.jsp","학생 관리"));
 		hrefList.add(new Href("/teamP/cooperation/_alphaStudy/@Study_learnProgSearch.jsp","학습 관리"));
 		hrefList.add(new Href("#","출결 관리"));
 		hrefList.add(new Href("#","수납/회계"));
 		hrefList.add(new Href("#","자재 관리"));
 		hrefList.add(new Href("/teamP/study/lecture/create","강의 관리"));
 		hrefList.add(new Href("#","직원 관리"));
 		hrefList.add(new Href("/teamP/cooperation/_alphaStudy/@Study_mngCodes.jsp","코드 관리"));
 	} else { // 알파스터디의 관리자가 아니라면
 		hrefList.add(new Href("#","α Study 소개"));
 		hrefList.add(new Href("#","강사 소개"));
 		hrefList.add(new Href("/teamP/study/user/lecture","강좌 보기"));
 		hrefList.add(new Href("#","공지 사항"));
 		hrefList.add(new Href("#","시험 일정"));
 		hrefList.add(new Href("#","Q & A"));
 		hrefList.add(new Href("/teamP/study/user/account","내 정보"));
 	}
 } else { // 로그인 상태가 아닐 때
	hrefList.add(new Href("#","α Study 소개"));
	hrefList.add(new Href("#","강사 소개"));
	hrefList.add(new Href("/teamP/study/user/lecture","강좌 보기"));
	hrefList.add(new Href("#","공지 사항"));
	hrefList.add(new Href("#","시험 일정"));
	hrefList.add(new Href("javascript:showLogin()","Q & A"));
	hrefList.add(new Href("javascript:showLogin()","내 정보"));
 }
 %>

<!-- ibm-universal-nav --> 
<!-- <div id="ibm-universal-nav" style="height: 30px;"> -->
	<div id="ibm-universal-nav" class="ibm-universal-nav">
		<ul id="ibm-unav-links">
			<!-- <li id="ibm-home" class="ibm-sm-logo" style="display: block; height: 30px;"><a href="#">IBM®</a></li> -->
			<li id="ibm-home" class="" style="display: block;"><a href="/teamP/cooperation/WIT_Main_index.jsp" title="홈으로">IBM®</a></li>
		</ul>
		<!-- <ul id="ibm-menu-links" class="ibm-access"> -->
		<ul></ul>
		<ul id="ibm-menu-links">
			<li onmouseover="slideRibbon(-1)"><a href="/teamP/study/index" style="font-weight: bold; color: white; font-style: italic; margin-top: -3px;text-shadow: 1px 1px 1px #CCCCCC;"><span style="font-size: xx-large;">α</span> STUDY</a></li>
			<!-- <li onmouseover="slideRibbon(0)"><a href="/teamP/cooperation/_alphaStudy/@Study_stuSearch.jsp">학생 관리</a></li>
			<li onmouseover="slideRibbon(1)"><a href="/teamP/cooperation/_alphaStudy/@Study_learnProgSearch.jsp">학습 관리</a></li>
			<li onmouseover="slideRibbon(2)"><a href="#">출결 관리</a></li>
			<li onmouseover="slideRibbon(3)"><a href="#">수납/회계</a></li>
			<li onmouseover="slideRibbon(4)"><a href="#">자재 관리</a></li>
			<li onmouseover="slideRibbon(5)"><a href="/teamP/study/lecture/create">강의 관리</a></li>
			<li onmouseover="slideRibbon(6)"><a href="#">직원 관리</a></li>
			<li onmouseover="slideRibbon(7)"><a href="/teamP/cooperation/_alphaStudy/@Study_mngCodes.jsp">코드 관리</a></li> -->
<%
	for (int i=0; i<hrefList.size(); i++) {
	Href href = hrefList.get(i);
%>
			<li onmouseover="slideRibbon(<%=i %>)"><a href="<%=href.getUrl() %>"><%=href.getMenu() %></a></li>
<%
		}
%>
		</ul>
	</div>
<!-- //ibm-universal-nav --> 

<!-- ibm-search-module --> 
<!-- <div id="ibm-search-module" class="ibm-access"> -->
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
<!-- //ibm-search-module --> 

<!-- ibm-common-menu --> 
<!-- <div id="ibm-common-menu" style="display: none;height: 1px;overflow: hidden;"> -->
	<div id="ibm-common-menu" style="display: block; height: 41px; overflow: hidden;">
		<div class="ibm-container-body" id="ibmweb_ribbon_0">
			
		<!-- ****************************************************************************************** -->
			<div class="ibm-menu-subtabs ibm-is-hidden" style="display:block; opacity: 1; margin-top: 0px; margin-bottom: 0px;">
			
				<ul id="subTab-0" style="display: none;">
					<li class="subTab-0-0" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_stuSearch.jsp">학생 관리</a></li>
					<li class="subTab-0-1" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_stuRegister.jsp">학생 등록</a></li>
					<li class="subTab-0-2" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_stuClsRegister.jsp">수강 등록</a></li>
					<li class="subTab-0-3" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_stuClsList.jsp">수강 등록 현황</a></li>
					<li class="subTab-0-4" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_stuTestRegister.jsp">성적 입력</a></li>
					<li class="subTab-0-5" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_stuTestSearch.jsp">성적 조회</a></li>
				</ul>
				
				<ul id="subTab-1" style="display: none;">
					<!-- <li class="subTab-1-0" style="display: block;"><a href="@Study_learnProgRegister.jsp">진도 입력</a></li> -->
					<li class="subTab-1-1" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_learnProgSearch.jsp">진도 현황</a></li>
					<li class="subTab-1-2" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_learnSuppRegister.jsp">보강 개설</a></li>
					<li class="subTab-1-3" style="display: block;"><a href="/teamP/cooperation/_alphaStudy/@Study_learnSuppSearch.jsp">보강 현황</a></li>
					<li class="subTab-1-4" style="display: block;"><a href="#">과제 관리</a></li>
					<li class="subTab-1-4" style="display: block;"><a href="#">과제 현황</a></li>
				</ul>
				
				<ul id="subTab-2" style="display: none;">
					<li class="subTab-2-0" style="display: block;"><a href="#">일별 출결 관리</a></li>
					<li class="subTab-2-1" style="display: block;"><a href="#">학생 별 출석부</a></li>
					<li class="subTab-2-2" style="display: block;"><a href="#">직원 별 출석부</a></li>
				</ul>
				
				<ul id="subTab-3" style="display: none;">
					<li class="subTab-3-0" style="display: block;"><a href="#">월 수업료 수납</a></li>
					<li class="subTab-3-1" style="display: block;"><a href="#">기타 수납</a></li>
					<li class="subTab-3-2" style="display: block;"><a href="#">환불 입력</a></li>
					<li class="subTab-3-3" style="display: block;"><a href="#">수납/환불 현황</a></li>
					<li class="subTab-3-4" style="display: block;"><a href="#">수강료 연체 현황</a></li>
				</ul>
				
				<ul id="subTab-4" style="display: none;">
					<li class="subTab-4-0" style="display: block;"><a href="#">입/출고 관리</a></li>
					<li class="subTab-4-1" style="display: block;"><a href="#">입/출고 현황</a></li>
					<li class="subTab-4-2" style="display: block;"><a href="#">교재 신청</a></li>
					<li class="subTab-4-3" style="display: block;"><a href="#">교재 신청 현황</a></li>
				</ul>
				
				<ul id="subTab-5" style="display: none;">
					<li class="subTab-5-0" style="display: block;"><a href="/teamP/study/lecture/create">강의 개설</a></li>
					<li class="subTab-5-1" style="display: block;"><a href="/teamP/study/lecture/search">강의 관리</a></li>
					<li class="subTab-5-2" style="display: block;"><a href="/teamP/study/lecture/register">강의 스케줄 등록</a></li>
					<li class="subTab-5-3" style="display: block;"><a href="/teamP/study/lecture/regSearch">강의 스케줄 관리</a></li>
				</ul>
				
				<ul id="subTab-6" style="display: none;">
					<li class="subTab-6-0" style="display: block;"><a href="#">직원 조회</a></li>
					<li class="subTab-6-1" style="display: block;"><a href="#">직원 등록</a></li>
					<li class="subTab-6-2" style="display: block;"><a href="#">직원 카드</a></li>
					<li class="subTab-6-3" style="display: block;"><a href="#">직원 능력 평가</a></li>
				</ul>
				
			</div>
		<!-- ****************************************************************************************** -->

		</div>
	</div>
	<!-- //ibm-common-menu --> 
</header>
<!-- MASTHEAD_END -->

</div>

	<jsp:include page="/cooperation/loginCommon.jsp"></jsp:include>
<!-- <DIV id=dijit_DialogUnderlay_0 class=dijitDialogUnderlayWrapper style="LEFT: 0px; Z-INDEX: 949; DISPLAY: none; TOP: 0px" widgetId="dijit_DialogUnderlay_0">
<DIV id=dijit_Dialog_2_underlay class="dijitDialogUnderlay _underlay" style="HEIGHT: 454px; WIDTH: 1244px" dojoAttachPoint="node"></DIV><IFRAME id="iframe0" role=presentation tabIndex=-1 style='HEIGHT: 100%; WIDTH: 100%; POSITION: absolute; LEFT: 0px; FILTER: Alpha(Opacity="0"); Z-INDEX: -1; TOP: 0px' src="//www.ibm.com/common/js/dojo/1.6/dojo/resources/blank.html"></IFRAME></DIV>

<DIV role=dialog id=dijit_Dialog_0 title="" class=dijitDialog style="POSITION: absolute; LEFT: 422px; FILTER: progid:DXImageTransform.Microsoft.Alpha(Opacity=0); Z-INDEX: 950; TOP: 60px; display: none;" aria-labelledby=dijit_Dialog_0_title widgetId="dijit_Dialog_0">
<DIV class=dijitDialogTitleBar dojoAttachPoint="titleBar"><SPAN id=dijit_Dialog_0_title class=dijitDialogTitle dojoAttachPoint="titleNode"></SPAN><SPAN role=button tabIndex=-1 title=Cancel class=dijitDialogCloseIcon dojoAttachPoint="closeButtonNode" dojoAttachEvent="ondijitclick: onCancel"><SPAN title=Cancel class=closeText dojoAttachPoint="closeText">x</SPAN> </SPAN></DIV>
<DIV class=dijitDialogPaneContent style="HEIGHT: auto; WIDTH: auto" dojoAttachPoint="containerNode">
<DIV id=ibmweb_external_signin_0 style="HEIGHT: 333px" dojoAttachPoint="signinContainerNode" widgetId="ibmweb_external_signin_0"><IFRAME id="iframe1" class=minDimensions style="HEIGHT: 333px; WIDTH: 400px" src="/teamP/cooperation/loginContent.jsp"></IFRAME></DIV></DIV></DIV>
 -->
</body>
</html>