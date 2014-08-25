<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>직원리스트</title>
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
						<p class="bigtitle" style="display: inline; line-height: 24px;">근무평가</p>
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
							<th width="100px"><a href="#"
								onclick="fn_SortList('REST_DES');">사원번호<img
									src="img/arrowBot.gif" id="img_rest" width="11" height="15" /></a></th>
							<th style="width: 120px;"><a href="#"
								onclick="fn_SortList('SITE_DES');">부서명<img
									src="img/arrowBot.gif" id="img_site" width="11" height="15" /></a></th>
							<th style="width: 100px;"><a href="#"
								onclick="fn_SortList('EMP_DES');">사원명<img
									src="img/arrowBot.gif" id="img_emp" width="11" height="15" /></a></th>
							<th style="width: 100px;"><a href="#"
								onclick="fn_SortList('REST_DAY');">총점<img
									src="img/arrowBot.gif" id="img_rday" width="11" height="15" /></a></th>

						</tr>
					</thead>
					<tbody>
					<tbody>

						<tr>
							<td id="rpt_ctl00_td_RestNm" class="left">10001</td>

							<td id="rpt_ctl00_td_SiteNm" class="left">경영지원팀</td>

							<td id="rpt_ctl00_td_EmpNm" class="left">백도경</td>

							<td id="rpt_ctl00_td_RestDay" class="right">25.0</td>

						</tr>

						<tr>
							<td id="rpt_ctl00_td_RestNm" class="left">10001</td>

							<td id="rpt_ctl00_td_SiteNm" class="left">경영지원팀</td>

							<td id="rpt_ctl00_td_EmpNm" class="left">백도경</td>

							<td id="rpt_ctl00_td_RestDay" class="right">25.0</td>

						</tr>
						<tr>
							<td id="rpt_ctl00_td_RestNm" class="left">10001</td>

							<td id="rpt_ctl00_td_SiteNm" class="left">경영지원팀</td>

							<td id="rpt_ctl00_td_EmpNm" class="left">백도경</td>

							<td id="rpt_ctl00_td_RestDay" class="right">25.0</td>

						</tr>

						<tr>
							<td id="rpt_ctl00_td_RestNm" class="left">10001</td>

							<td id="rpt_ctl00_td_SiteNm" class="left">경영지원팀</td>

							<td id="rpt_ctl00_td_EmpNm" class="left">백도경</td>

							<td id="rpt_ctl00_td_RestDay" class="right">25.0</td>

						</tr>


					</tbody>
				</table>
			</div>
			<!--//print_list-->
		</div>
	</div>
	<!--//idPrint-->

	<br />
	<br />
	<br />
	<br />


	<!--//body-->

	<a id="lnkSort"
		href="javascript:__doPostBack(&#39;lnkSort&#39;,&#39;&#39;)"></a>
	<a id="lnkbutton"
		href="javascript:__doPostBack(&#39;lnkbutton&#39;,&#39;&#39;)"></a>
	<input type="hidden" name="hidSrchFlg" id="hidSrchFlg" />
	<input type="hidden" name="hidSearchXml" id="hidSearchXml" />
	<input type="hidden" name="hidSearchParam" id="hidSearchParam" />
	<input name="hidParam" type="hidden" id="hidParam" />
	<input name="hidSortCol" type="hidden" id="hidSortCol" value="REST_DES" />
	<input name="hidSortDir" type="hidden" id="hidSortDir" value="DESC" />
	<input name="hidCuurPage" type="hidden" id="hidCuurPage" />
	<input name="hidBtnGubun" type="hidden" id="hidBtnGubun" />


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