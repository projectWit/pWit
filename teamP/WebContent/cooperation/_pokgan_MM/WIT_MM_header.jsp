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

<!-- MASTHEAD_BEGIN -->
<header id="ibm-masthead"> <!-- ibm-mast-options --><jsp:include page="/cooperation/header_ibm-mast-options.jsp"></jsp:include>
	<!-- //ibm-mast-options --> <!-- ibm-universal-nav --> <!-- <div id="ibm-universal-nav" style="height: 30px;"> -->
	<div id="ibm-universal-nav">
		<ul id="ibm-unav-links">
			<!-- <li id="ibm-home" class="ibm-sm-logo" style="display: block; height: 30px;"><a href="#">IBM®</a></li> -->
			<li id="ibm-home" class="" style="display: block;"><a href="../WIT_Main_index.jsp">IBM®</a></li>
		</ul>
		<!-- <ul id="ibm-menu-links" class="ibm-access"> -->
		<ul id="ibm-menu-links">
			<li onmouseover="slideRibbon(0)"><a href="./WIT_MM_index.jsp">이폭간의 멋남먹방</a></li>
			<li onmouseover="slideRibbon(1)"><a href="./WIT_MM_place.jsp">맛있는곳</a></li>
			<li onmouseover="slideRibbon(2)"><a href="./WIT_MM_food.jsp">맛있는거</a></li>
			<li onmouseover="slideRibbon(3)"><a href="./WIT_MM_recipe.jsp">나의 레시피</a></li>
			<li onmouseover="slideRibbon(4)"><a href="./WIT_MM_board.jsp">시끌벅적</a></li>
			<li onmouseover="slideRibbon(5)"><a href="./WIT_MM_qna.jsp">묻고 답하기</a></li>
			<li onmouseover="slideRibbon(6)"><a href="./WIT_MM_event.jsp">쿠폰 & 이벤트</a></li>
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
	<div id="ibm-common-menu" style="display: block; height: 41px; overflow: hidden;">
		<div class="ibm-container-body" id="ibmweb_ribbon_0" style="height: 40px;">
			
		<!-- ****************************************************************************************** -->
			<div class="ibm-menu-subtabs ibm-is-hidden" style="display:block; opacity: 1; margin-top: 0px; margin-bottom: 0px;">							
				<ul id="subTab-1">
					<li class="subTab-1-0" style="display: block;"><a href="#">서울</a></li>
					<li class="subTab-1-1" style="display: block;"><a href="#">경기 & 인천</a></li>
					<li class="subTab-1-2" style="display: block;"><a href="#">강원 & 충청</a></li>
					<li class="subTab-1-3" style="display: block;"><a href="#">경상</a></li>
					<li class="subTab-1-4" style="display: block;"><a href="#">전라</a></li>
					<li class="subTab-1-5" style="display: block;"><a href="#">제주</a></li>
					<li class="subTab-1-6" style="display: block;"><a href="#">해외</a></li>
				</ul>
				
				<ul id="subTab-2" style="display: none;">
					<li class="subTab-2-0" style="display: block;"><a href="#">한식</a></li>
					<li class="subTab-2-1" style="display: block;"><a href="#">양식</a></li>
					<li class="subTab-2-2" style="display: block;"><a href="#">일식</a></li>
					<li class="subTab-2-3" style="display: block;"><a href="#">중식</a></li>
					<li class="subTab-2-4" style="display: block;"><a href="#">기타</a></li>
				</ul>
				
				<!-- <ul id="subTab-2" style="display: none;">
					<li class="subTab-2-0" style="display: block;"><a href="#">대차대조표</a></li>
					<li class="subTab-2-1" style="display: block;"><a href="#">손익계산서</a></li>
					<li class="subTab-2-2" style="display: block;"><a href="#">현금흐름표</a></li>
					<li class="subTab-2-3" style="display: block;"><a href="#">자본변동표</a></li>
					<li class="subTab-2-4" style="display: block;"><a href="#">이익 잉여금 처분계산서</a></li>
				</ul> -->
				
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