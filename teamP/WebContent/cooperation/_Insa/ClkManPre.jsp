<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>근태현황</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow">
<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
</head>

<body id="tabAll">

<div id="idPrint">
	<div id="contents" style="width: 720px; margin: 0 auto;">
		<div id="print_title">
			<ul>
				<li><p class="bigtitle"
						style="display: inline; line-height: 24px;">근태현황</p></li>
			</ul>
		</div>


		<br />
		<div class="container H_25px">
			<p class="float_left">회사명 : (주)가장많이쓰는ERP</p>
			<p class="float_right">2014/08/01 ~ 2014/08/07</p>
		</div>


		<!--근태조회 리스트 시작-->
		<div id="print_list">
			<table class="p_list H_2px">
				<!-- style="width:750px;"-->
				<caption>근태현황</caption>
				<thead>
					<tr>
						<th style="width: 84px;"><a href="#" class="th"
							onclick="fn_SortList('SLIP_DATE');">전표일자<img
								src="img/arrowBot.gif" id="img_trx" width="11" height="15" /></a></th>

						<th style="width: 80px;"><a href="#" class="th"
							onclick="fn_SortList('EMP_SITE');">부서명<img
								src="img/arrowBot.gif" id="img_site" width="11" height="15" /></a></th>

						<th style="width: 50px;"><a href="#" class="th"
							onclick="fn_SortList('JOB_DES');">직급<img
								src="img/arrowBot.gif" id="img_sitenm" width="11" height="15" /></a></th>

						<th style="width: 70px;"><a href="#" class="th"
							onclick="fn_SortList('EMP_CD');">사원번호<img
								src="img/arrowBot.gif" id="img_empcd" width="11" height="15" /></a></th>

						<th style="width: 60px;"><a href="#" class="th"
							onclick="fn_SortList('EMP_DES');">사원명<img
								src="img/arrowBot.gif" id="img_empnm" width="11" height="15" /></a></th>

						<th style="width: 70px;"><a href="#" class="th"
							onclick="fn_SortList('ATTEND_DES');">근태종류<img
								src="img/arrowBot.gif" id="img_attnm" width="11" height="15" /></a></th>

						<th style="width: 40px;"><a href="#" class="th"
							onclick="fn_SortList('USING_DAY');">근태<img
								src="img/arrowBot.gif" id="img_uday" width="11" height="15" /></a></th>

						<th style="width: 130px;"><a href="#" class="th"
							onclick="fn_SortList('FROM_DATE');">근태기간<img
								src="img/arrowBot.gif" id="img_date" width="11" height="15" /></a></th>

						<th><a href="#" class="th" onclick="fn_SortList('REMARK');">적요<img
								src="img/arrowBot.gif" id="img_remark" width="11" height="15" /></a></th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td id="rpt_ctl00_td_TrxDate" class="left"><a href='#'
							class='list_link'>2014/08/07-2</a></td>

						<td id="rpt_ctl00_td_SiteNm" class="left">경영지원팀</td>

						<td id="rpt_ctl00_td_JobNm" class="left">사원</td>

						<td id="rpt_ctl00_td_EmpCd" class="left">2011-03</td>

						<td id="rpt_ctl00_td_EmpNm" class="left">김수현</td>

						<td id="rpt_ctl00_td_AttendNm" class="left">시간외수당</td>

						<td id="rpt_ctl00_td_UsingDay" class="right">10.0</td>

						<td id="rpt_ctl00_td_FromDate" class="left">2014/08/07 ~
							2014/08/07</td>

						<td id="rpt_ctl00_td_Remark" class="left">DDD</td>

					</tr>

					<tr>
						<td id="rpt_ctl01_td_TrxDate" class="left"><a href='#'
							class='list_link'>2014/08/07-1</a></td>

						<td id="rpt_ctl01_td_SiteNm" class="left">영업팀</td>

						<td id="rpt_ctl01_td_JobNm" class="left">과장</td>

						<td id="rpt_ctl01_td_EmpCd" class="left">2003-02</td>

						<td id="rpt_ctl01_td_EmpNm" class="left">현빈</td>

						<td id="rpt_ctl01_td_AttendNm" class="left">예비군/민방위훈련</td>

						<td id="rpt_ctl01_td_UsingDay" class="right">10.0</td>

						<td id="rpt_ctl01_td_FromDate" class="left">2014/08/11 ~
							2014/08/20</td>

						<td id="rpt_ctl01_td_Remark" class="left">예비군 연차 10일 사용 (4년치
							예비군)</td>

					</tr>

					<tr>
						<td id="rpt_ctl02_td_TrxDate" class="left"><a href='#'
							class='list_link'>2014/08/05-1</a></td>

						<td id="rpt_ctl02_td_SiteNm" class="left">경영지원팀</td>

						<td id="rpt_ctl02_td_JobNm" class="left">사원</td>

						<td id="rpt_ctl02_td_EmpCd" class="left">2011-03</td>

						<td id="rpt_ctl02_td_EmpNm" class="left">김수현</td>

						<td id="rpt_ctl02_td_AttendNm" class="left">2014년 연차</td>

						<td id="rpt_ctl02_td_UsingDay" class="right">6.0</td>

						<td id="rpt_ctl02_td_FromDate" class="left">2014/08/05 ~
							2014/08/12</td>

						<td id="rpt_ctl02_td_Remark" class="left"></td>

					</tr>

					<tr>
						<td id="rpt_ctl03_td_TrxDate" class="left"><a href='#'
							class='list_link'>2014/08/03-1</a></td>

						<td id="rpt_ctl03_td_SiteNm" class="left">경영지원팀</td>

						<td id="rpt_ctl03_td_JobNm" class="left">부장</td>

						<td id="rpt_ctl03_td_EmpCd" class="left">2010-01</td>

						<td id="rpt_ctl03_td_EmpNm" class="left">주다해</td>

						<td id="rpt_ctl03_td_AttendNm" class="left">2014년 연차</td>

						<td id="rpt_ctl03_td_UsingDay" class="right">1.0</td>

						<td id="rpt_ctl03_td_FromDate" class="left">2014/08/05 ~
							2014/08/05</td>

						<td id="rpt_ctl03_td_Remark" class="left">연차 1회 사용</td>

					</tr>

					<tr>
						<td id="rpt_ctl04_td_TrxDate" class="left"><a href='#'
							class='list_link'>2014/08/02-1</a></td>

						<td id="rpt_ctl04_td_SiteNm" class="left">경영지원팀</td>

						<td id="rpt_ctl04_td_JobNm" class="left">대표이사</td>

						<td id="rpt_ctl04_td_EmpCd" class="left">2003-01</td>

						<td id="rpt_ctl04_td_EmpNm" class="left">백도경</td>

						<td id="rpt_ctl04_td_AttendNm" class="left">2014년 연차</td>

						<td id="rpt_ctl04_td_UsingDay" class="right">3.0</td>

						<td id="rpt_ctl04_td_FromDate" class="left">2014/08/02 ~
							2014/08/04</td>

						<td id="rpt_ctl04_td_Remark" class="left">여름휴가</td>

					</tr>

					<tr>
						<td id="rpt_ctl05_td_TrxDate" class="left"><a href='#'
							class='list_link'>2014/08/01-1</a></td>

						<td id="rpt_ctl05_td_SiteNm" class="left">경영지원팀</td>

						<td id="rpt_ctl05_td_JobNm" class="left">사원</td>

						<td id="rpt_ctl05_td_EmpCd" class="left">2011-03</td>

						<td id="rpt_ctl05_td_EmpNm" class="left">김수현</td>

						<td id="rpt_ctl05_td_AttendNm" class="left">2014년 연차</td>

						<td id="rpt_ctl05_td_UsingDay" class="right">1.0</td>

						<td id="rpt_ctl05_td_FromDate" class="left">2014/08/01 ~
							2014/08/01</td>

						<td id="rpt_ctl05_td_Remark" class="left">연차 1일 사용</td>

					</tr>

					<tr id="tdSum" class="p_graybgB">
						<td id="tdSum_title" colspan="6" class="center">합 계</td>
						<td id="tdSum_using" class="right">31.0</td>
						<td class="center"></td>
						<td class="center"></td>
					</tr>


				</tbody>
			</table>
		</div>
		<!--//print_list-->
	</div>
</div>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</body>

<iframe name="ifrmExcel" id="ifrmExcel"
	style="width: 0px; height: 0px; display: none"></iframe>

</html>
