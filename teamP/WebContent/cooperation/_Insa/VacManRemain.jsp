<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>휴가잔여일수현황</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
				<div id="contents" style="width: 720px; margin: 0 auto">
					<div id="print_title">
						<ul>
							<li>
								<p class="bigtitle" style="display: inline; line-height: 24px;">휴가잔여일수현황</p>
							</li>
						</ul>
					</div>

					<br />

					<div class="container H_25px">
						<p class="float_left">회사명 : (주)WIT</p>
						<p class="float_right"></p>
					</div>



					<!--근태조회 리스트 시작-->
					<div id="print_list">
						<table class="p_list H_2px">
							<thead>
								<tr>
									<th><a href="#" onclick="fn_SortList('REST_DES');">휴가코드<img
											src="img/arrowBot.gif" id="img_rest" width="11" height="15" /></a></th>
									<th style="width: 120px;"><a href="#"
										onclick="fn_SortList('SITE_DES');">부서명<img
											src="img/arrowBot.gif" id="img_site" width="11" height="15" /></a></th>
									<th style="width: 100px;"><a href="#"
										onclick="fn_SortList('EMP_DES');">사원명<img
											src="img/arrowBot.gif" id="img_emp" width="11" height="15" /></a></th>
									<th style="width: 100px;"><a href="#"
										onclick="fn_SortList('REST_DAY');">휴가일수<img
											src="img/arrowBot.gif" id="img_rday" width="11" height="15" /></a></th>
									<th style="width: 100px;"><a href="#"
										onclick="fn_SortList('USING_DAY');">휴가사용일수<img
											src="img/arrowBot.gif" id="img_uday" width="11" height="15" /></a></th>
									<th style="width: 100px;"><a href="#"
										onclick="fn_SortList('REM_DAY');">휴가잔여일수<img
											src="img/arrowBot.gif" id="img_mday" width="11" height="15" /></a></th>
								</tr>
							</thead>
							<tbody>
							<tbody>

								<tr>
									<td id="rpt_ctl00_td_RestNm" class="left">2014년 연차</td>

									<td id="rpt_ctl00_td_SiteNm" class="left">경영지원팀</td>

									<td id="rpt_ctl00_td_EmpNm" class="left">백도경</td>

									<td id="rpt_ctl00_td_RestDay" class="right">25.0</td>

									<td id="rpt_ctl00_td_UsingDay" class="right"><a
										class='list_link'
										href="javascript:fnLink('2003-01', '백도경', '20000', '2014년 연차', '2014-01-01', '2014-12-31','0')">7.0</a></td>

									<td id="rpt_ctl00_td_RemnantDay" class="right">18.0</td>

								</tr>

								<tr>
									<td id="rpt_ctl01_td_RestNm" class="left">2014년 연차</td>

									<td id="rpt_ctl01_td_SiteNm" class="left">영업팀</td>

									<td id="rpt_ctl01_td_EmpNm" class="left">현빈</td>

									<td id="rpt_ctl01_td_RestDay" class="right">21.0</td>

									<td id="rpt_ctl01_td_UsingDay" class="right"><a
										class='list_link'
										href="javascript:fnLink('2003-02', '현빈', '20000', '2014년 연차', '2014-01-01', '2014-12-31','0')">2.0</a></td>

									<td id="rpt_ctl01_td_RemnantDay" class="right">19.0</td>

								</tr>

								<tr>
									<td id="rpt_ctl02_td_RestNm" class="left">2014년 연차</td>

									<td id="rpt_ctl02_td_SiteNm" class="left">경영지원팀</td>

									<td id="rpt_ctl02_td_EmpNm" class="left">주다해</td>

									<td id="rpt_ctl02_td_RestDay" class="right">23.0</td>

									<td id="rpt_ctl02_td_UsingDay" class="right"><a
										class='list_link'
										href="javascript:fnLink('2010-01', '주다해', '20000', '2014년 연차', '2014-01-01', '2014-12-31','0')">9.0</a></td>

									<td id="rpt_ctl02_td_RemnantDay" class="right">14.0</td>

								</tr>

								<tr>
									<td id="rpt_ctl03_td_RestNm" class="left">2014년 연차</td>

									<td id="rpt_ctl03_td_SiteNm" class="left">경영지원팀</td>

									<td id="rpt_ctl03_td_EmpNm" class="left">김수현</td>

									<td id="rpt_ctl03_td_RestDay" class="right">22.0</td>

									<td id="rpt_ctl03_td_UsingDay" class="right"><a
										class='list_link'
										href="javascript:fnLink('2011-03', '김수현', '20000', '2014년 연차', '2014-01-01', '2014-12-31','0')">12.0</a></td>

									<td id="rpt_ctl03_td_RemnantDay" class="right">10.0</td>

								</tr>

								<tr id="tdSum" class="p_graybgB">
									<td id="tdSum_title" colspan="3" class="center">합 계</td>
									<td id="tdSum_rest" class="right">91.0</td>
									<td id="tdSum_using" class="right">30.0</td>
									<td id="tdSum_remnant" class="right">61.0</td>
								</tr>

							</tbody>
						</table>
					</div>
					<!--//print_list-->
				</div>
			</div>
			<!--//idPrint-->

			<br /> <br /> <br /> <br />

		
		<!--//body-->

		<a id="lnkSort"
			href="javascript:__doPostBack(&#39;lnkSort&#39;,&#39;&#39;)"></a> <a
			id="lnkbutton"
			href="javascript:__doPostBack(&#39;lnkbutton&#39;,&#39;&#39;)"></a> <input
			type="hidden" name="hidSrchFlg" id="hidSrchFlg" /> <input
			type="hidden" name="hidSearchXml" id="hidSearchXml" /> <input
			type="hidden" name="hidSearchParam" id="hidSearchParam" /> <input
			name="hidParam" type="hidden" id="hidParam" /> <input
			name="hidSortCol" type="hidden" id="hidSortCol" value="REST_DES" />
		<input name="hidSortDir" type="hidden" id="hidSortDir" value="DESC" />
		<input name="hidCuurPage" type="hidden" id="hidCuurPage" /> <input
			name="hidBtnGubun" type="hidden" id="hidBtnGubun" />
	
	
</body>

<form id="frmDetail">
	<input type="hidden" name="hidSearchXml" id="SearchXml" value="" /> <input
		type="hidden" name="hidSortCol2" id="hidSortCol2" value="" /> <input
		type="hidden" name="hidSortDir2" id="hidSortDir2" value="" /> <input
		type="hidden" name="hidSessionKey" id="hidSessionKey" value="" />
</form>
<iframe name="ifrmExcel" id="ifrmExcel"
	style="width: 0px; height: 0px; display: none"></iframe>

</html>