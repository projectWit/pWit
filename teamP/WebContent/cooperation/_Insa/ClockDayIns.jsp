<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>근태등록</title>
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
<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />
<script type="text/javascript">
	calendarIDs = [ 'FromDt' ]; // 달력이 추가될 태그의 id
	function PopUpClkCd(){
		window.open("ClkCd.jsp","","width = 500px, height = 300px");
	}
</script>
</head>

<body>
	<form method="post" id="form1">
		
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">일일근태작성</div>
			</div>
			<!--입력테이블 시작-->
			<div id="contents">
				<table class="entry fixed" cellpadding="0" cellspacing="0"
					summary="처리결과">
					<colgroup>
						<col style="width: 120px" />
						<col style="width: 300px" />
						<col style= />
					</colgroup>
					<tbody>
						<tr>
							<th>일자
							<td><input name="FromDt" type="text" id="FromDt" size="12"
								maxlength="8" value="" class="default"></td>

							<td id="tdTrxDate_Lbl" class="cell_right" style="display: none;">
								<span id="lblTrxDate"></span> <span id="lblTrxDate2"></span>
							</td>

							<td class="info" style="width: 280px;"></td>
						</tr>
						<tr>
							<th>사원명
							<td id="tdEmp_Txt" style=""><input name="txtEMP_CODE"
								type="text" id="txtEMP_CODE" class="rightnone" value = "0001"
								style="width: 66px;" /><a href="#"><img src="img/Find.gif"
									width="22px" height="19px" alt="검색" id="btnEmp" /></a> <input
								name="Name" type="text" readonly="readonly"
								id="Name" value = "호날두"class="grayleft" style="width: 90px;" /></td>

							<td id="tdEmp_Lbl" class="cell_right" style="display: none;">
								<span id="lblEMP_CODE" style="display: none;"></span> <span
								id="lblEMP_NAME"></span>
							</td>

							<td class="info"></td>
						</tr>
						<tr>
							<th>근태코드
							<td class="cell_right"><input name="ClkCd"
								type="text" id="ClkCd" class="rightnone"
								style="width: 66px;" /><a href="#"
								><img src="img/Find.gif"onclick="PopUpClkCd();return false;"
									width="22px" height="19px" alt="검색" id="btnATTEND" /></a> <input
								name="CodeName" type="text" readonly="readonly"
								id="CodeName" class="grayleft" style="width: 90px;" /></td>
							<td class="info"></td>
						</tr>
						<tr>
							<th>근태<span id="lblUnit">(일/시간)</span>
							<td><input name="txtUsingDay" type="text" id="txtUsingDay"
								class="default" style="width: 100px; text-align: right;" /> <a
								href="#" id="btnUsingDay" name="btnUsingDay"
								onclick="fnDetailInput();" class="link-blue">일별등록</a> <input
								name="hidUsingDay" type="hidden" id="hidUsingDay" /></td>
							<td class="info"><div>소수점 1자리까지 입력가능합니다.</div>
								<div>일자별 근태(일/시간)가 다른 경우 일자별등록 버튼을 이용 일자별 근태(일/시간)를 등록합니다.</div></td>
						</tr>
						<tr>
							<th>적요
							<td><textarea name="Remark" id="Remark"
									rows="5" Style="width: 280px;"></textarea></td>
							<td class="info"><div>적요는 200자 이내로 입력 바랍니다.</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<p class="btn_left">
				<span id="lblSave" class="btn blue"> <input name="btnSave"
					type="button" id="btnSave" class="btn_blue_right" value="저장(F8)" />
				</span>

			</p>
			<p class="btn_right"></p>
			<!--입력테이블 끝-->
			<hr />
			<br /> <br />
			

		</div>	</form>
	
</body>
</html>