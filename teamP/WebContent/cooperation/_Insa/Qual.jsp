<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="robots" content="noindex,nofollow"/>


		<link type="text/css" rel="stylesheet" href="css/base.css" />

		<link type="text/css" rel="stylesheet" href="css/layout.css" />

		<link type="text/css" rel="stylesheet" href="css/table.css" />
		<link type="text/css" rel="stylesheet" href="css/menu.css" />
		<link type="text/css" rel="stylesheet" href="css/print.css" />
		<link type="text/css" rel="stylesheet" href="css/etc.css" />
		<link type="text/css" rel="stylesheet" href="css/setting.css" />
		<link type="text/css" rel="stylesheet" href="css/window.css" />
		<link type="text/css" rel="stylesheet" href="css/tax.css" />

		<title>자격·면허관리내역</title> <script language="javascript"
			type="text/javascript">
			//팝업창
			function PopUpNew() {
				window
						.open("QualNew.jsp", "",
								"width = 800px, height = 600px");				
			}
			function Close(){
				window.close();
			}
		</script>
</head>
<body>
	<form method="post" action="EPD002P_06.aspx?ec_req_sid=00HOCty8voui"
		id="form">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="/wEPDwUKMTg1NzY1ODkyMg9kFgJmD2QWBmYPDxYCHgRUZXh0BQnsnbTsiJnsnbRkZAIBDw8WBh4QY3VycmVudFBhZ2VJbmRleGYeEFZpcnR1YWxJdGVtQ291bnRmHghQYWdlU2l6ZQIKZGQCAg8WAh4LXyFJdGVtQ291bnRmZGR6xEMg8IrasgBcj5sSsdbqrYD+Tg==" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEWDALYvoXoAgKZjLjlBwKQ66+oCwLtiqOODALKrrPUDgLUgP7mBAL/4tnFBwKHvqbZBgKOzIePCwLL35zyCgL00sC4DwKcw57DDzPgg5iHQ5lUAFx9H5xDL52R5Fyj" />
		</div>
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">이숙이</span>]님의 자격·면허관리내역
				</h1>
			</div>			

				<table summary="" class="list">
					<col width="8%" />
					<col width="" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<thead>
						<tr>
							<th><a href="#"
								onclick="javascript:fnSorting('CODE_DES');return false;"
								class="th">자격증 명칭</a><img src="img/arrowBot.gif" width="11px"
								height="15px" alt="" /></th>

							<th><a href="#"
								onclick="javascript:fnSorting('lICENCE_NO');return false;"
								class="th">자격·면허번호</a><img src="img/arrowBot.gif" width="11px"
								height="15px" alt="" /></th>

							<th><a href="#"
								onclick="javascript:fnSorting('S_DATE');return false;"
								class="th">취득일자</a><img src="img/arrowBot.gif" width="11px"
								height="15px" alt="" /></th>

							<th><a href="#"
								onclick="javascript:fnSorting('E_DATE');return false;"
								class="th">만기일자</a><img src="img/arrowBot.gif" width="11px"
								height="15px" alt="" /></th>

							<th><a href="#"
								onclick="javascript:fnSorting('U_DATE');return false;"
								class="th">갱신일자</a><img src="img/arrowBot.gif" width="11px"
								height="15px" alt="" /></th>

							<th><a href="#"
								onclick="javascript:fnSorting('C_DATE');return false;"
								class="th">말소일자</a><img src="img/arrowBot.gif" width="11px"
								height="15px" alt="" /></th>
							<th>말소사유</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="nodata" colspan="7">등록된 데이터가 없습니다.</td>
						</tr>

					</tbody>
				</table>
				<br /> <br /> <br /> <br />

			</div>
			<!--//contents-->
			<div class="footerBG_pop">
				<span class="btn blue"><input type="button" name="btnNew"
					id="btnNew" onclick="PopUpNew();" value="신규(F2)" /></span> <span
					class="btn gray"><input type="button" name="btnClose"
					id="btnClose" value="닫기" onclick = "Close()" /></span>
			</div>


	</form>

</body>
</html>