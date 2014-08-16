<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>코드검색</title>
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
<script type="text/javascript">
	function Close() {
		window.close();
	};
</script>
</head>
<body>
	<form method="post" id="form1">

		<div id="wrap_pop">
			<table class="list H_0px fixed">
				<tr>
					<th>빠른 검색을 원한다면 해당항목 설정 후 검색 바랍니다.</th>
				</tr>
				<tr>
					<td class="gray_bg center">&nbsp; <input name="Name"
						type="text" id="Name" class="default" />&nbsp; <input
						type="submit" name="btnSearch" value="검색" id="btnSearch"
						class="btn_searchS" />
					</td>
				</tr>
			</table>
			<table class="list fixed H_15px">
				<thead>
					<tr>

						<th><a href="#" onclick="fn_SortList('ATTEND_CD');">근태코드<img
								id="img_num" src="img/arrowBot.gif" width="11" height="15" /></a></th>
						<th><a href="#" onclick="fn_SortList('ATTEND_DES')">근태코드명<img
								id="img_name" src="img/arrowBot.gif" width="11" height="15" /></a></th>
						<th style="display: none;">휴가코드</th>
					</tr>
				</thead>
				<tbody>

					<tr id="rpt_ctl00_trRpt">
						<td id="rpt_ctl00_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							onclick="fnChkCnt(this);" value="10000|2013년 연차" /></td>
						<td><a
							href="javascript:fnLink('10000|2013년 연차|0|10000|2013년 연차|0|2013-01-01|2013-12-31|1');"
							class="list_link">10000</a></td>
						<td><a
							href="javascript:fnLink('10000|2013년 연차|0|10000|2013년 연차|0|2013-01-01|2013-12-31|1');"
							class="list_link">2013년 연차</a></td>
						<td style="display: none;">0</td>
					</tr>

					<tr id="rpt_ctl01_trRpt">
						<td id="rpt_ctl01_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							onclick="fnChkCnt(this);" value="20000|2014년 연차" /></td>
						<td><a
							href="javascript:fnLink('20000|2014년 연차|0|20000|2014년 연차|0|2014-01-01|2014-12-31|1');"
							class="list_link">20000</a></td>
						<td><a
							href="javascript:fnLink('20000|2014년 연차|0|20000|2014년 연차|0|2014-01-01|2014-12-31|1');"
							class="list_link">2014년 연차</a></td>
						<td style="display: none;">0</td>
					</tr>

					<tr id="rpt_ctl02_trRpt">
						<td id="rpt_ctl02_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							onclick="fnChkCnt(this);" value="10002|경조사휴가" /></td>
						<td><a href="javascript:fnLink('10002|경조사휴가|1|||0|||1');"
							class="list_link">10002</a></td>
						<td><a href="javascript:fnLink('10002|경조사휴가|1|||0|||1');"
							class="list_link">경조사휴가</a></td>
						<td style="display: none;">1</td>
					</tr>

					<tr id="rpt_ctl03_trRpt">
						<td id="rpt_ctl03_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							onclick="fnChkCnt(this);" value="10003|시간외수당" /></td>
						<td><a href="javascript:fnLink('10003|시간외수당|1|||1|||1');"
							class="list_link">10003</a></td>
						<td><a href="javascript:fnLink('10003|시간외수당|1|||1|||1');"
							class="list_link">시간외근무</a></td>
						<td style="display: none;">1</td>
					</tr>

					<tr id="rpt_ctl04_trRpt">
						<td id="rpt_ctl04_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							onclick="fnChkCnt(this);" value="10001|예비군/민방위훈련" /></td>
						<td><a href="javascript:fnLink('10001|예비군/민방위훈련|1|||0|||1');"
							class="list_link">10001</a></td>
						<td><a href="javascript:fnLink('10001|예비군/민방위훈련|1|||0|||1');"
							class="list_link">예비군/민방위훈련</a></td>
						<td style="display: none;">1</td>
					</tr>
					
					<tr id="rpt_ctl05_trRpt">
						<td id="rpt_ctl05_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							 value="출근입력" /></td>
						<td><a href="#"
							class="list_link">0001</a></td>
						<td><a href="#"
							class="list_link">출근입력</a></td>
						<td style="display: none;">1</td>
					</tr>
					
					<tr id="rpt_ctl06_trRpt">
						<td id="rpt_ctl06_tdCbRowSel" style="display: none;"><input
							type="checkbox" id="cbRowSel" name="cbRowSel"
							 value="출장근무입력" /></td>
						<td><a href="#"
							class="list_link">0002</a></td>
						<td><a href="#"
							class="list_link">출장근무입력</a></td>
						<td style="display: none;">1</td>
					</tr>


				</tbody>
			</table>
			<span class="btn gray"><input type="button" id="btnClose"
				name="btnClose" value="닫기" onclick="Close()" /></span> <br /> <br /> <br />
			<br />

		</div>

	</form>

</body>

</html>
