<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head >
<title>연월차등록</title>
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
<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />
<script type="text/javascript">
	calendarIDs = [ 'FromDt','ToDt' ]; // 달력이 추가될 태그의 id
	function Close(){
		window.close();
	}
	function PopUpVacCd(){
		window.open("VacCd.jsp", "","width = 500px, height = 300px");		
	}	

	$(document).ready(function() {
		var url = 'MobileCd.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#vMobile').append(responseText);
		});
	});

</script>

</head>
<body id="all-list">
	<form method="post" action = "VacInsPro.jsp" name = "vacfrm">
		
		<div id="wrap_pop">
			<div class="new-title">
				<div class="title-leftarea">연월차등록</div>
			</div>

			<div id="contents">
				<table class="entry fixed">
					<col style="width: 130px" />
					<col />
					<tbody>
						<tr>
								<th>휴카코드</th>
								<td><input type="text" name="VacCd" id="VacCd"
									class="rightnone" size="10" maxlength="30" /><a href="#"><img
										src="img/Find.gif" width="22px" height="19px" alt="검색" onclick = "PopUpVacCd()"/></a> <input
									type="text" name="Vac" id="Vac" size="15"
									value="" class="grayleft" style="width: 90px;"
									readonly="readonly" /></td>
							</tr>
						
						<tr>
							<th>기간</th>
							<td><input name="FromDt" type="text" id="FromDt" size="12"
								maxlength="8" value="" class="default" > ~ <input name="ToDt" type="text" id="ToDt" size="12"
								maxlength="8" value="" class="default" ></td>
						</tr>
						
						<tr>
							<th>연락처</th>
						<td><select id = "vMobile">
								
						</select> - <input type="tel" name = "vMobile" class="default" size=5 maxlength="4" required>
							- <input type="tel" name = "vMobile" class="default" size=5 maxlength="4" required></td>
						</tr>
						<tr>
							<th>적요</th>
							<td><textarea name="txtRemarks" id="txtRemarks"
									style="width: 97%; height: 70px;" onBlur="BlurColor(this);"
									onFocus="FocusColor(this);this.select();"></textarea></td>
						</tr>
					</tbody>
				</table>
			</div>

			<br />
			<br />
			<br />
			<br />
			<div class="footerBG_pop">
				<span id="lblSave" class="btn blue"> <input name="btnSave"
					type="submit" id="btnSave" value = "저장"/>
				</span> <span class="btn gray"> <input name="btnList" type="button"
					id="btnList" value="닫기"  onclick = "Close()"/>
				</span>

			</div>
			<!--버튼 끝-->
		</div>	
	</form>
</body>
</html>

