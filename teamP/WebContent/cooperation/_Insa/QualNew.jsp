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

<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />
<script type="text/javascript">
	calendarIDs = [ 'DtGet','DtFinal','DtReset','DtOut']; // 달력이 추가될 태그의 id
	function Close(){
		window.close();
	}
</script>
<title>자격·면허관리등록</title>
</head>
<body>
	<form method="post" id="form">
		



		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">이인희</span>]님의 자격·면허관리등록
				</h1>
			</div>

			<div id="contents">
				<table summary="" class="entry H_10px">
					<col width="30%" />
					<col width="" />								
					<tr>
						<th>자격증 명칭</th>

						<td><input name="QualName" type="text" id="QualName"
							class = "default" style="width: 70%;"
							/></td>
					</tr>
					<tr>
						<th>자격·면허번호</th>
						<td><input name="txtLNo" type="text" maxlength="20"
							id="txtLNo" class="default" style="width: 70%;" /></td>
					</tr>
					<tr>
						<th>발행기관</th>
						<td><input name="txtLCompany" type="text" maxlength="30"
							id="txtLCompany" class="default" style="width: 70%;" /></td>
					</tr>
					<tr>
						<th>취득일자</th>
						<td><input name="DtGet" type="text" id="DtGet" size="12"
							maxlength="8" value="" class="default" /></td>
					</tr>
					<tr>
						<th>만기일자</th>
						<td><input name="DtFinal" type="text" id="DtFinal" size="12"
							maxlength="8" value="" class="default" /></td>
					</tr>
					<tr>
						<th>갱신일자</th>
						<td><input name="DtReset" type="text" id="DtReset" size="12"
							maxlength="8" value="" class="default" /></td>
					</tr>
					<tr>
						<th>말소일자</th>
						<td><input name="DtOut" type="text" id="DtOut" size="12"
							maxlength="8" value="" class="default" /></td>
					</tr>
					<tr>
						<th>말소사유</th>
						<td><input name="txtCDes" type="text" maxlength="30"
							id="txtCDes" class="default" style="width: 70%;" /></td>
					</tr>
				</table>
				<br /> <br /> <br /> <br /> <span class="btn blue"><input
					type="button" name="btnSave" id="btnSave" onclick="fnSave();"
					value="저장(F8)" /></span> <span class="btn gray"><input
					type="button" id="btnClose" name="btnClose" onclick="Close();"
					value="닫기" /></span>
				<p class="btn_right"></p>
			</div>
			<!--//contents-->
			
		</div>

	</form>

</body>
</html>