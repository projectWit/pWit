<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="css/2_base.css" />
<link type="text/css" rel="stylesheet" href="css/2_layout.css" />
<link type="text/css" rel="stylesheet" href="css/2_table.css" />
<link type="text/css" rel="stylesheet" href="css/2_menu.css" />
<link type="text/css" rel="stylesheet" href="css/2_rpt_print.css" />
<link type="text/css" rel="stylesheet" href="css/2_etc.css" />
<link type="text/css" rel="stylesheet" href="css/2_setting.css" />
<link type="text/css" rel="stylesheet" href="css/dhtmlwindow.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
</head>
<body id="cm_search">
	<div id="wrap"></div>
	<form id="frmSearch" name="frmSearch" method="get" action="">
		<div class="new-title">
			<div class="title-leftarea">현금흐름</div>
			<div class="title-rightarea">
				<!-- 옵션 -->
				<span class="btn-setting" onclick=""></span>
				<!-- 옵션레이어 -->
				<ul class="option_box_new">
					<li><a onclick="">계정설정</a></li>
				</ul>
			</div>
		</div>
		<!-- end of title -->
		<!-- end of title -->
		<div>
			<table class="search_t fixed">
				<tr>
					<th>조회기간선택</th>
					<td><span id="ECDateTime_CM_S"> <select name="ddlSYear"
							id="ddlSYear" onkeypress="">
								<option value="2015">2015</option>
								<option selected="selected" value="2014">2014</option>
								<option value="2013">2013</option>
						</select><select name="ddlSMonth" id="ddlSMonth" onkeypress="">
								<option value="01">1월</option>
								<option value="02">2월</option>
								<option value="03">3월</option>
								<option value="04">4월</option>
								<option value="05">5월</option>
								<option value="06">6월</option>
								<option value="07">7월</option>
								<option selected="selected" value="08">8월</option>
								<option value="09">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
						</select><input name="txtSDay" type="text" id="txtSDay" value="05"
							maxlength="2" class="default" onblur="" onkeypress="" onfocus=""
							style="width: 20px;" size="2" /> <img
							src='images/WebResource.gif' id='btnCallCal_ECDateTime_CM_S'
							name='btnCallCal_ECDateTime_CM_S' style="cursor: pointer;"
							onclick='' />
					</span> <span id="spDate1"> <img src="images/icon_to.gif"
							width="12px" height="18px" /> <span id="ECDateTime_CM_E">
								<select name="ddlEYear" id="ddlEYear" onkeypress="">
									<option value="2015">2015</option>
									<option selected="selected" value="2014">2014</option>
									<option value="2013">2013</option>
							</select><select name="ddlEMonth" id="ddlEMonth" onkeypress="">
									<option value="01">1월</option>
									<option value="02">2월</option>
									<option value="03">3월</option>
									<option value="04">4월</option>
									<option value="05">5월</option>
									<option value="06">6월</option>
									<option value="07">7월</option>
									<option selected="selected" value="08">8월</option>
									<option value="09">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
							</select><input name="txtEDay" type="text" id="txtEDay" value="05"
								maxlength="2" class="default" onblur="" onkeypress="" onfocus=""
								style="width: 20px;" size="2" /> <img
								src='images/WebResource.gif' id=''
								name='' style="cursor: pointer;"
								onclick='' />
						</span>
					</span></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<th>부서</th>
					<td><input type="text" name="txtSiteCd" id="txtSiteCd" class="rightnone"
						size="10" style="width: 66px;"><a href="#" onclick=""> <img
								src="images/Icon_zoom.gif" width="22px" height="19px" alt="검색" /></a><input
							type="text" name="" id="" size="15" value=""
							class="grayleft" style="width: 90px;" readonly="readonly"></td>
				</tr>
				<!--// 부서계층그룹 처리 시작 -->
				<tr>
					<th>부서계층그룹</th>
					<td><input type="text" name="txtTreeSiteCd" id="txtTreeSiteCd"
						class="rightnone" value="" style="width: 66px;" /><a href="#"
						onclick=""> <img src="images/Icon_zoom.gif" width="22px"
							height="19px" alt="검색" /></a><input type="text" name="txtTreeSiteNm"
						id="txtTreeSiteNm" class="grayleft" value="" style="width: 90px;"
						readonly /> <input type="checkbox" name="cbSubTreeSite"
						id="cbSubTreeSite" value="1"  /> 하위그룹포함검색
					</td>
				</tr>
				<!-- 부서계층그룹 처리 종료 //-->
				<tr>
					<th>프로젝트</th>
					<td><a href="#"><input type="text" name="txtPjtCd" class="rightnone" value="" style="width: 66px;" /><a
							href="#" onclick=""> <img src="images/Icon_zoom.gif" class=rightnone
							width="22px" height="19px" alt="검색" /></a><input type="text"
							name="txtPjtDes" id="txtPjtDes" class="grayleft" readonly
							value="" style="width: 90px;" /></td>
				</tr>
				<tr>
					<th>구분</th>
					<td><input type="radio" name="rbSumGubun" id="rbSumGubun"
						onkeypress="" value="1"
						onclick="" checked>전일비교 <input
						type="radio" name="rbSumGubun"
						onkeypress="" value="2"
						onclick="">전주비교 <input type="radio"
						name="rbSumGubun"
						onkeypress="" value="3"
						onclick="">전월비교 <input type="radio"
						name="rbSumGubun"
						onkeypress="" value="4"
						onclick=""/>전년비교</td>
				</tr>
				<!-- har start -->
				<!-- har end -->
				<tr>
					<th>기타</th>
					<td><input type="checkbox" name="cbRptConfirm"
						onkeypress=""
						id="cbRptConfirm" value="1" style="border-style: none;"
						onkeypress="" />결재방표시<input
						type="checkbox" name="cbDayFlag"
						onkeypress=""
						id="cbDayFlag" disabled="disabled" value="1" />전기자료말일 <input
						type="hidden" name="cbEctaxGbFlag" id="cbEctaxGbFlag" value="" />
					</td>
				</tr>

				<tr>
					<th>간편검색</th>
					<td><input type="button" name="btnToDay" id="btnToDay"
						onclick=""
						class="btn_blueS" value="금일" />&nbsp;<input type="button"
						name="btnYesterDay" id="btnYesterDay"
						onclick="fnSimpleSearch('2014,08,04','2014,08,04')"
						class="btn_blueS" value="전일" />&nbsp;<input type="button"
						name="btnWeek " id="btnWeek"
						onclick=""
						class="btn_blueS" value="금주" />&nbsp;<input type="button"
						name="btnLastWeek" id="btnLastWeek"
						onclick=""
						class="btn_blueS" value="전주" />&nbsp;<input type="button"
						name="btnMonth" id="btnMonth"
						onclick=""
						class="btn_blueS" value="금월" />&nbsp;<input type="button"
						name="btnLastMonth" id="btnLastMonth"
						onclick=""
						class="btn_blueS" value="전월" />&nbsp;<input type="button"
						name="btnSeason" id="btnSeason"
						onclick=""
						class="btn_blueS" value="이번기수" />&nbsp;<input type="button"
						name="btnLastSeason" id="btnLastSeason"
						onclick=""
						class="btn_blueS" value="직전기수" />&nbsp;<input type="button"
						name="btnEndDay" id="btnEndDay"
						onclick="" class="btn_blueS"
						value="종료일" /></td>
				</tr>
			</table>
			<!--  endof 검색조건  -->
		</div>
		<!-- endof [search-form] -->
		<div class="search-button" style="text-align: center;">
			<p>
				<label class="btn blue" style="display: none;"><input
					name="btnSearchToday" type="button" id="btnSearchToday"
					onclick="" style="display: none;" onclick=""
					value="금월검색" /></label> <label class="btn blue"><input
					name="btnSearch" onclick="" type="button"
					id="btnSearch" value="검색(F8)" /></label>
				<span id="spBank" name="spBank"
					style="float: right; margin: 5px 5px 0 0; padding: 0 0 1px 5px;"><select
					id="selBank" name="selBank" onchange=""
					style="display: none; background: #EEEAD4; color: 8b0000;"></select></span>
			</p>
		</div>
		<!-- endof [search_btnpart] 검색버튼 -->
	</form>
</body>
</html>
