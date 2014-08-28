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
<link rel="stylesheet" type="text/css" href="css/witMemberHeader.css">
<style type="text/css">

</style>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/witMemberHeader.js"></script>
<script type="text/javascript">
function insertSlips() {
	var features = "width=550px, height=630px, top=150, left=150, toolbar=no, scrollbars=no, resizable=no";
	window.open('insertSlips.jsp', '전표입력창', features);
}
function insert_customers() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertCustomers.jsp', '', features);
};	
function insert_accounts() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertAccounts.jsp', '', features);
};	
function insertProjects() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertProject.jsp', '', features);
};	
function insertDepartments() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertDepartments.jsp', '', features);
};	
function insertFixedAsset() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertFixedAsset.jsp', '', features);
};	
function insertCompany() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('insertCompany.jsp', '', features);
};	

</script>
</head>
<body  id="ibm-com" class="v17">
<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 33px;"> -->
<!-- <div class="ibm-home-page" id="ibm-top" style="margin-top: 74px;"> -->
<div class="ibm-home-page" id="ibm-top" style="margin-top: 120px;">

<!-- MASTHEAD_BEGIN -->
<header id="ibm-masthead"> <!-- ibm-mast-options --> <!-- <div id="ibm-mast-options" style="height: 4px;"> -->
	<div id="ibm-mast-options">
<div style="position: absolute;">scroll : </div><div id="scroll" style="position: absolute; margin-left: 40px;"></div>
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
	<!-- //ibm-mast-options --> <!-- ibm-universal-nav --> <!-- <div id="ibm-universal-nav" style="height: 30px;"> -->
	<div id="ibm-universal-nav">
		<ul id="ibm-unav-links">
			<!-- <li id="ibm-home" class="ibm-sm-logo" style="display: block; height: 30px;"><a href="#">IBM®</a></li> -->
			<li id="ibm-home" class="" style="display: block;"><a href="../WIT_Main_index.jsp">IBM®</a></li>
		</ul>
		<!-- <ul id="ibm-menu-links" class="ibm-access"> -->
		<ul id="ibm-menu-links">
			<li onmouseover="slideRibbon(0)"><a href="WIT_Accounting_index.jsp">회계관리</a></li>
			<li onmouseover="slideRibbon(0)"><a href="#">전표 관리</a></li>
			<li onmouseover="slideRibbon(1)"><a href="#">주요 장부</a></li>
			<li onmouseover="slideRibbon(2)"><a href="#">재무 제표</a></li>
			<li onmouseover="slideRibbon(3)"><a href="#">경영 자료</a></li>
			<li onmouseover="slideRibbon(4)"><a href="#">기본 정보</a></li>
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
				<ul id="subTab-0" style="display: none;">
					<li class="subTab-0-0" style="display: block;"><a href="#" onclick="insertSlips()">전표 관리</a></li>
					<li class="subTab-0-1" style="display: block;"><a href="#" onclick="insertProjects()">프로젝트 관리</a></li>					
					<li class="subTab-0-4" style="display: block;"><a href="#" onclick="insertFixedAsset()">고정 자산 관리</a></li>
				</ul>				
				<ul id="subTab-1" style="display: none;">
					<li class="subTab-1-0" style="display: block;"><a href="WIT_Accounting_journal.jsp">분개장</a></li>
					<li class="subTab-1-1" style="display: block;"><a href="WIT_Accounting_ledger.jsp">계정별 원장</a></li>
					<li class="subTab-1-1" style="display: block;"><a href="WIT_Accounting_customersLedger.jsp">거래처 원장</a></li>
					<li class="subTab-1-2" style="display: block;"><a href="WIT_Accounting_cashBook.jsp">현금출납장</a></li>
					<li class="subTab-1-3" style="display: block;"><a href="WIT_Accounting_psLedger.jsp">매입매출장</a></li>
					<li class="subTab-1-6" style="display: block;"><a href="WIT_Accounting_pLedger.jsp">매입집계표</a></li>
					<li class="subTab-1-7" style="display: block;"><a href="WIT_Accounting_sLedger.jsp">매출집계표</a></li>				
				</ul>				
				<ul id="subTab-2" style="display: none;">
					<li class="subTab-2-0" style="display: block;"><a href="WIT_Accounting_balanceSheet.jsp">대차대조표</a></li>
					<li class="subTab-2-1" style="display: block;"><a href="WIT_Accounting_incomeStatement.jsp">손익계산서</a></li>
					<li class="subTab-2-2" style="display: block;"><a href="WIT_Accounting_trialBalance.jsp">시산표</a></li>
					<li class="subTab-2-3" style="display: block;"><a href="WIT_Accounting_cashFlow.jsp">현금흐름표</a></li>
					<li class="subTab-2-4" style="display: block;"><a href="#">이익 잉여금 처분계산서</a></li>
					<li class="subTab-2-5" style="display: block;"><a href="WIT_Accounting_costSpecification.jsp">원가 명세서</a></li>
					
				</ul>				
				<ul id="subTab-3" style="display: none;">
					<li class="subTab-3-0" style="display: block;"><a href="WIT_Accounting_dFundsStatus.jsp">자금현황표</a></li>
					<li class="subTab-3-1" style="display: block;"><a href="WIT_Accounting_cashVary.jsp">자금증감내역</a></li>
					<li class="subTab-3-2" style="display: block;"><a href="WIT_Accounting_monthly_IS.jsp">월별손익분석</a></li>
					<li class="subTab-3-3" style="display: block;"><a href="WIT_Accounting_monthly_CA.jsp">월별원가분석</a></li>
					<li class="subTab-3-4" style="display: block;"><a href="WIT_Accounting_confirmationTerm.jsp">채권/채무회수기간표</a></li>
					<li class="subTab-3-5" style="display: block;"><a href="WIT_Accounting_confirmationBank.jsp">채권잔액분석표</a></li>
					<li class="subTab-3-6" style="display: block;"><a href="#">경영요약보고서</a></li>
				</ul>				
				<ul id="subTab-4" style="display: none;">
					<li class="subTab-4-0" style="display: block;"><a href="#" onclick="insertCompany()">회사등록</a></li>
					<li class="subTab-4-1" style="display: block;"><a href="#" onclick="insert_customers()">거래처등록</a></li>
					<li class="subTab-4-2" style="display: block;"><a href="#" onclick="insert_accounts()">계정등록</a></li>
					<li class="subTab-4-3" style="display: block;"><a href="#" onclick="insertDepartments()">부서등록</a></li>
					<li class="subTab-4-4" style="display: block;"><a href="#">데이터백업</a></li>
					<li class="subTab-4-5" style="display: block;"><a href="#">데이터복구</a></li>
					<li class="subTab-4-6" style="display: block;"><a href="#">환경설정</a></li>
				</ul>				
			</div>
		<!-- ****************************************************************************************** -->
		</div>
	</div>
	<!-- //ibm-common-menu --> 
</header>
<!-- MASTHEAD_END -->
</div>
</body>
</html>