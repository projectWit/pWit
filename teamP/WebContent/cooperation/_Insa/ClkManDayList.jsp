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
<title></title>
</head>
<body>



	<div id="wrap">
		<div class="new-title">
			<div class="title-leftarea">출/퇴근현황</div>
			<div class="title-rightarea"></div>

		</div>

		<!-- ***** 서치버튼 시작 **** -->
		<div class="print-search-fixed">


			<div class="print-search-con">
				<div class="new-title">
					<div class="title-leftarea">출/퇴근현황</div>
				</div>

				<form id="frmSearch" name="frmSearch" method="post"
					action="/ECMain/EGM/EGM017R.aspx?ec_req_sid=00HPIJ*Itya4">

					<div id="print_search">

						<!-- endof [search-form] -->
					</div>
					<input type="hidden" id="hidSearchXml" name="hidSearchXml" /> <input
						type="hidden" id="hidStatus" name="hidStatus" value="" /> <input
						type="hidden" id="hidAllGubun" name="hidAllGubun" value="0" />
				</form>



			</div>
		</div>


		<!-- ***** 서치버튼 끝 **** -->
		<!-- ***** 작업영역 시작 **** -->
		<!-- ***** 프린트 시작 ***** -->
		<div id="idPrint" class="P_45px">
			<div style="width: 720px;">
				<div id="print_title">
					<ul>
						<li>
							<table width='720px' border='0' cellspacing='0' cellpadding='0'>
								<tr>
									<td align='center'>
										<table>
											<tr>
												<td align='center' class='bigtitle'>출근시간현황</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</li>
					</ul>
				</div>
				<br />
				<p class="float_left">회사명 : (주)가장많이쓰는ERP</p>
				<p class="float_right">기준일자 : 2014/08/11</p>

				<table summary="" class="list">

					<col width="60px" />
					<col width="100px" />
					<col width="120px" />
					<col width="120px" />
					<col width="" />

					<thead>
						<tr>
							<th><a href="#" class="list_link">일자</a><img
								src="img/arrowBot.gif" border="0" /></th>
							<th><a href="#" class="list_link">사원명</a><img
								src="img/arrowBot.gif" border="0" /></th>

							<th><a href="#" class="list_link">출근시간</a><img
								src="img/arrowBot.gif" border="0" /></th>
							<th><a href="#" class="list_link">입력시간</a><img
								src="img/arrowBot.gif" border="0" /></th>

						</tr>
					</thead>
					<tbody>

						<tr>
							<td class="center">2014/08/04</td>
							<td>(주)이카운트</td>

							<td>2014/08/04 오전 9:00</td>
							<td>2014/07/29 오후 8:20</td>

						</tr>

						<tr>
							<td class="center">2014/08/07</td>
							<td>호날두</td>

							<td>2014/08/07 오후 4:38</td>
							<td>2014/08/08 오후 4:39</td>

						</tr>

						<tr>
							<td class="center">2014/08/08</td>
							<td>베일</td>

							<td>2014/08/08 오후 2:00</td>
							<td>2014/08/01 오후 2:04</td>

						</tr>

					</tbody>
				</table>
				<div id="print_last" style="width: 720px; margin-left: 0px;">
					<ul>
						<li>2014년 8월 11일 오전 1:30:20</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- ***** 프린트 끝 ***** -->
		<!-- if(dtMainData.Rows.Count <= 0)  -->
		<!-- ***** 작업영역 끝 **** -->

		<form id="frmDetail">
			<input type="hidden" name="hidSearchXml" id="SearchXml"
				value="<root><ddlSYear><![CDATA[2014]]></ddlSYear><ddlSMonth><![CDATA[08]]></ddlSMonth><txtSDay><![CDATA[01]]></txtSDay><ddlEYear><![CDATA[2014]]></ddlEYear><ddlEMonth><![CDATA[08]]></ddlEMonth><txtEDay><![CDATA[11]]></txtEDay><txtId><![CDATA[]]></txtId><txtName><![CDATA[]]></txtName><txtSiteCd><![CDATA[]]></txtSiteCd><txtSiteDes><![CDATA[]]></txtSiteDes><rbIoType1><![CDATA[1]]></rbIoType1><cbIoType1><![CDATA[Y]]></cbIoType1><cbIoType2><![CDATA[]]></cbIoType2><hidStatus><![CDATA[]]></hidStatus><hidAllGubun><![CDATA[0]]></hidAllGubun><M_Page><![CDATA[1]]></M_Page><M_SchFlag><![CDATA[Y]]></M_SchFlag><M_Status><![CDATA[]]></M_Status><M_AllGubun></M_AllGubun><M_TabFlag><![CDATA[N]]></M_TabFlag><M_SortAD></M_SortAD><M_Sort></M_Sort><M_BtnFlag></M_BtnFlag></root>" />
			<input type="hidden" name="hidData" id="hidData" />
		</form>
		<iframe name="ifrmExcel"
			style="width: 0px; height: 0px; display: none"></iframe>
	</div>
	<!-- wrap -->
</body>
</html>

