<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />

<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />

<title>인사카드등록</title>

<script type="text/javascript">
	function Insert() {
		window.open("InsaInsert.jsp", "", "");
	}
</script>
</head>
<body>

	<form method="post" action="EPD001M.aspx?ec_req_sid=00HOCty8voui"
		id="form">

		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>사원리스트</strong>
				</div>

				<div class="title-rightarea">
					<span class="btn-setting" onclick="fnShowOption(); return false"></span>
					<!-- 옵션레이어 -->
					<ul class="option_box_new">

						<li><a onclick="fnPopUp('SMS');">SMS</a></li>

						<li><a onclick="fnPopUp('ErrorList');">번호오류리스트</a></li>

					</ul>
				</div>
			</div>

			<table summary="" class="list H_2px">
				<col width="11%" />
				<!--사번-->
				<col width="13%" />
				<!--성명-->
				<col width="13%" />
				<!--주민등록번호-->
				<col width="15%" />
				<!--부서-->
				<col width="9%" />
				<!--직급-->
				<col width="10%" />
				<!--입사일자-->
				<col width="14%" />
				<!--계좌번호-->
				<col width="" />
				<!--메일-->
				<col width="8%" />
				<!--프린트-->
				<thead>
					<tr>
						<th><a href="#" class="th">사번</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">성명</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th>주민등록번호</th>
						<th><a href="#" class="th">부 서</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">직 급</a><img src="img/arrowBot.gif"
							width="11px" height="15px" alt="" /></th>
						<th><a href="#" class="th">입사일자</a><img
							src="img/arrowBot.gif" width="11px" height="15px" alt="" /></th>
						<th>전화번호</th>
						<th>Email</th>
						<th>인쇄</th>
					</tr>
				</thead>
				<tbody>

					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>

					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00002</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">호날두</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>

					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00002</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">호날두</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00002</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">호날두</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00002</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">호날두</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00002</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">호날두</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00002</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">호날두</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>

					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray">인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								 class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								 class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray">인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
					<tr id="rpt_ctl00_trRow">
						<td><span id="rpt_ctl00_lblEmpCd"><a href="#"
								onclick="fnModify('00001');return false;"
								onmouseover="a('최종수정일자:2014-08-03 12:28:12.263 수정자:GUEST');return true;"
								onmouseout="b();" class="list_link">00001</a></span></td>
						<td><span id="rpt_ctl00_lblEmpKname">이숙이</span></td>
						<td class="center"><span id="rpt_ctl00_lblJuminNo">690929-2109126</span></td>
						<td><span id="rpt_ctl00_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl00_lblJobPosition">대리</span></td>
						<td class="center"><span id="rpt_ctl00_lblInDate">2012/03/03</span></td>
						<td><span id="rpt_ctl00_lblAcctNo">010-3096-0955</span></td>
						<td class="center"><span id="rpt_ctl00_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>


					<tr id="rpt_ctl01_trRow">
						<td><span id="rpt_ctl01_lblEmpCd"><a href="#"
								 class="list_link">2003-01</a></span></td>
						<td><span id="rpt_ctl01_lblEmpKname">백도경</span></td>
						<td class="center"><span id="rpt_ctl01_lblJuminNo">700121-2154871</span></td>
						<td><span id="rpt_ctl01_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl01_lblJobPosition">대표이사</span></td>
						<td class="center"><span id="rpt_ctl01_lblInDate">2003/04/06</span></td>
						<td><span id="rpt_ctl01_lblAcctNo">4964866451125</span></td>
						<td class="center"><span id="rpt_ctl01_lblEMail"><a
								href="mailto:244@ecounterp.co.kr"><img src="img/mail.gif"
									width="19px" height="9px" alt="" /></a></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" onclick="fnPrint('2003-01');">인쇄</a></td>
					</tr>


					<tr id="rpt_ctl02_trRow">
						<td><span id="rpt_ctl02_lblEmpCd"><a href="#"
								 class="list_link">2003-02</a></span></td>
						<td><span id="rpt_ctl02_lblEmpKname">현빈</span></td>
						<td class="center"><span id="rpt_ctl02_lblJuminNo">821111-1154878</span></td>
						<td><span id="rpt_ctl02_lblSiteDes">영업팀</span></td>
						<td><span id="rpt_ctl02_lblJobPosition">과장</span></td>
						<td class="center"><span id="rpt_ctl02_lblInDate">2011/03/26</span></td>
						<td><span id="rpt_ctl02_lblAcctNo">21587541245</span></td>
						<td class="center"><span id="rpt_ctl02_lblEMail"></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>


					<tr id="rpt_ctl03_trRow">
						<td><span id="rpt_ctl03_lblEmpCd"><a href="#"
								class="list_link">2010-01</a></span></td>
						<td><span id="rpt_ctl03_lblEmpKname">주다해</span></td>
						<td class="center"><span id="rpt_ctl03_lblJuminNo">801210-2087823</span></td>
						<td><span id="rpt_ctl03_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl03_lblJobPosition">부장</span></td>
						<td class="center"><span id="rpt_ctl03_lblInDate">2009/01/05</span></td>
						<td><span id="rpt_ctl03_lblAcctNo">101023223541</span></td>
						<td class="center"><span id="rpt_ctl03_lblEMail"><a
								href="mailto:askmail@ecounterp.com"><img src="img/mail.gif"
									width="19px" height="9px" alt="" /></a></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" onclick="fnPrint('2010-01');">인쇄</a></td>
					</tr>


					<tr id="rpt_ctl04_trRow">
						<td><span id="rpt_ctl04_lblEmpCd"><a href="#"
								class="list_link">2011-03</a></span></td>
						<td><span id="rpt_ctl04_lblEmpKname">김수현</span></td>
						<td class="center"><span id="rpt_ctl04_lblJuminNo">870000-1215478</span></td>
						<td><span id="rpt_ctl04_lblSiteDes">경영지원팀</span></td>
						<td><span id="rpt_ctl04_lblJobPosition">사원</span></td>
						<td class="center"><span id="rpt_ctl04_lblInDate">2010/06/26</span></td>
						<td><span id="rpt_ctl04_lblAcctNo">215478982125</span></td>
						<td class="center"><span id="rpt_ctl04_lblEMail"><a
								href="mailto:jjj@naver.com"><img src="img/mail.gif"
									width="19px" height="9px" alt="" /></a></span></td>
						<td class="center"><a href="#" id="btnPrint" name="btnPrint"
							class="link-gray" >인쇄</a></td>
					</tr>
				</tbody>
			</table>

			<div class="container H_5px">
				<span class="float_right">현재인원(명) : <span id="lblEmpCount">10</span>
				</span>
			</div>

			<br /> <br /> <br /> <br /> <span class="btn blue"><input
				type="button" id="btnNew" name="btnNew" onclick="Insert();"
				value="신규(F2)" /></span>
		</div>
</form>
</body>
</html>