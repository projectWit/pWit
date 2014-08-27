<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<link type="text/css" rel="stylesheet" href="css/2_base.css" />
<link type="text/css" rel="stylesheet" href="css/2_layout.css" />
<link type="text/css" rel="stylesheet" href="css/2_table.css" />
<link type="text/css" rel="stylesheet" href="css/2_menu.css" />
<link type="text/css" rel="stylesheet" href="css/2_rpt_print.css" />
<link type="text/css" rel="stylesheet" href="css/2_etc.css" />
<link type="text/css" rel="stylesheet" href="css/2_setting.css" />
<link type="text/css" rel="stylesheet" href="css/dhtmlwindow.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/css/jquery-ui-1.9.2.css">
<link type="text/css" rel="stylesheet" href="/teamP/cooperation/css/calendar.css">
</head>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<script type="text/javascript">
calendarIDs = [ 'FromDt' ]; // 달력이 추가될 태그의 id
function fixedAssetLists() {
	var features = "width=480px, height=550px, resizable=no, scrollbars=no, top=200, left=200, toolbar=no";
	window.open('fixedAssetLists.jsp', '', features);
};	
</script>
<body>
	<div id="wrap" style="margin-left: 40px;">
		<div id="print_title">
			<table width="400" height="100" border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					<td align='center'>
						<table align="center">
							<tr>
								<td align='center' class='bigtitle'>고정자산입력</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="container H_38px" style="width: 400px;">
			<p class="float_right right">
				<a onclick="fixedAssetLists()">[목록]</a>
			</p>			
		</div>
		<div style="border-top: 1px solid #000; width: 400px;"></div>

		<!-- ***** 프린트 시작 ***** -->
		<table width="400">
			<col width="100px" />
			<col width="250px" />
			<tbody>
				<tr>
					<th class="p_th left">고정자산</th>
					<td class="p_td left"><input type="text" maxlength="8" size="20" 
						style="background-color: #F6F6F6; height: 28px;" />
					</td>
				</tr>
				<tr>
					<th class="p_th left">고정자산일자</th>
					<td class="p_td left"> <input type="text"  maxlength="8" size="20"
						style="background-color: #F6F6F6; height: 28px;" id="FromDt" name="FromDt"/></td>
				</tr>
				<tr>
					<th class="p_th left">단가</th>
					<td class="p_td left"><input type="text" size="20"
						style="background-color: #F6F6F6; height: 28px;" /></td>
				</tr>
				<tr>
					<th class="p_th left">수량</th>
					<td class="p_td left">
					<input type="number" size="20"
						style="background-color: #F6F6F6; height: 28px;"/>
					</td>
				</tr>
				<tr>
					<th class="p_th left">상태</th>
					<td class="p_td left"><input type="text" size="20"
						style="background-color: #F6F6F6; height: 28px;" readonly="readonly" />
						<input type="button" value="조회" style="height: 25px;" /></td>
				</tr>
				<tr>
					<th class="p_th left">감가상각</th>
					<td class="p_td left"><input type="text" size="20"
						style="background-color: #F6F6F6; height: 28px;" readonly="readonly"/>
						<input type="button" value="조회" style="height: 25px;" /></td>
				</tr>
				<tr>
					<th class="p_th left">적요</th>
					<td class="p_td left"><input type="text" size="42"
						style="background-color: #F6F6F6; height: 28px;" /></td>
				</tr>
			</tbody>
			<tr>
				<td colspan="2">
					<p align="center" style="margin-top: 40px;">
						<button type="button">입력</button>
						<button type="reset">취소</button>
					</p>
				</td>
			</tr>
		</table>
		<!-- if(com_code = "")  -->
	</div>
	<!-- <div id="contents">-->
	<!-- <div id="idPrint">-->
	<!-- p_body -->
</body>
</html>