<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>연월차 등록</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<script type="text/javascript">
function PopUpVac() {
	window.open("VacInsNew.jsp", "", "width = 800px, height = 600px");
}
</script>

</head>
<body id="contentbody1">
	<form method="post" action="EPA032M.aspx?ec_req_sid=00HOb!39NWci"
		id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="/wEPDwUIODg1NTY5OTkPZBYCAgMPZBYCZg8WAh4LXyFJdGVtQ291bnQCAhYEZg9kFg4CAQ8WAh4JaW5uZXJodG1sBVc8aW5wdXQgdHlwZT0nY2hlY2tib3gnIGlkPSdjaGtTZWxlY3QnIG5hbWU9J2Noa1NlbGVjdCcgb25jbGljaz0iY2hrX2NoYW5nZSgnMjAwMDAnKTsiLz5kAgMPFgIfAQUXMjAxNC8wMS8wMSB+IDIwMTQvMTIvMzFkAgUPFgIfAQVKPGEgY2xhc3M9J2xpc3RfbGluaycgaHJlZj0iamF2YXNjcmlwdDpmbkxpbmsoJzIwMDAwJywnMCcsICc0Jyk7Ij4yMDAwMDwvYT5kAgcPFgIfAQUOMjAxNOuFhCDsl7DssKhkAgkPFgIfAQUBNGQCCw8WAh8BBXU8YSBocmVmPScjJyBpZD0nYnRuXzAnIGNsYXNzPSdsaW5rLWJsdWUnIG9uY2xpY2s9ImJ0bl9zYXZlKCcyMDAwMCcsICcyMDE064WEIOyXsOywqCcsICdNJywgJzIwMTQvMDEvMDEnKTsiPuyImOyglTwvYT5kAg0PFgIfAQUDWWVzZAIBD2QWDgIBDxYCHwEFVzxpbnB1dCB0eXBlPSdjaGVja2JveCcgaWQ9J2Noa1NlbGVjdCcgbmFtZT0nY2hrU2VsZWN0JyBvbmNsaWNrPSJjaGtfY2hhbmdlKCcxMDAwMCcpOyIvPmQCAw8WAh8BBRcyMDEzLzAxLzAxIH4gMjAxMy8xMi8zMWQCBQ8WAh8BBUo8YSBjbGFzcz0nbGlzdF9saW5rJyBocmVmPSJqYXZhc2NyaXB0OmZuTGluaygnMTAwMDAnLCcwJywgJzQnKTsiPjEwMDAwPC9hPmQCBw8WAh8BBQ4yMDEz64WEIOyXsOywqGQCCQ8WAh8BBQE0ZAILDxYCHwEFdTxhIGhyZWY9JyMnIGlkPSdidG5fMScgY2xhc3M9J2xpbmstYmx1ZScgb25jbGljaz0iYnRuX3NhdmUoJzEwMDAwJywgJzIwMTPrhYQg7Jew7LCoJywgJ00nLCAnMjAxMy8wMS8wMScpOyI+7IiY7KCVPC9hPmQCDQ8WAh8BBQNZZXNkZP66LPoK3Wa6sO32Om1siEA9TJsi" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEWBAK5tOjZAQLA2eOABwKrnrP8AgKUoMvDCUEmqRrtGGgN9SI3C35VYcwHeSGu" />
		</div>
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">연월차등록</div>
			</div>

			<div id="contents">
				<!--선택삭제 버튼 시작-->
				<div class="sBTNlayM" style="display: none;">
					<input name="btnDel" type="button" id="btnDel" class="btn_grayS"
						onclick="" value="선택삭제" />
				</div>
				<!--선택삭제 버튼 끝-->

				<!--휴가관리코드등록 리스트 시작-->
				<table class="list fixed" style="width: 750px;" summary="휴가코드등록">
					<caption>휴가코드등록</caption>
					<thead>
						<tr>
							<th class="check" style="width: 20px; display: none;"><input
								type="checkbox" name="chkAll" id="chkAll" /></th>
							<th>사용기간</th>
							<th>휴가코드</th>
							<th>휴가명</th>
							<th style="width: 80px;">등록인원수</th>
							<th style="width: 100px;">사원별휴가일수</th>
							<th style="width: 60px;">사용</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td id="rpt_ctl00_td_chk" style="display: none;"><input
								type='checkbox' id='chkSelect' name='chkSelect'
								onclick="chk_change('20000');" /></td>

							<td id="rpt_ctl00_td_date">2014/01/01 ~ 2014/12/31</td>

							<td id="rpt_ctl00_td_restcd"><a class='list_link'
								href="javascript:fnLink('20000','0', '4');">20000</a></td>

							<td id="rpt_ctl00_td_restdes">2014년 연차</td>

							<td id="rpt_ctl00_td_count" class="center">4</td>

							<td id="rpt_ctl00_td_btn" class="center"><a href='#'
								id='btn_0' class='link-blue'
								onclick="btn_save('20000', '2014년 연차', 'M', '2014/01/01');">수정</a></td>

							<td id="rpt_ctl00_td_use" class="center">Yes</td>

						</tr>

						<tr>
							<td id="rpt_ctl01_td_chk" style="display: none;"><input
								type='checkbox' id='chkSelect' name='chkSelect'
								onclick="chk_change('10000');" /></td>

							<td id="rpt_ctl01_td_date">2013/01/01 ~ 2013/12/31</td>

							<td id="rpt_ctl01_td_restcd"><a class='list_link'
								href="javascript:fnLink('10000','0', '4');">10000</a></td>

							<td id="rpt_ctl01_td_restdes">2013년 연차</td>

							<td id="rpt_ctl01_td_count" class="center">4</td>

							<td id="rpt_ctl01_td_btn" class="center"><a href='#'
								id='btn_1' class='link-blue'
								onclick="btn_save('10000', '2013년 연차', 'M', '2013/01/01');">수정</a></td>

							<td id="rpt_ctl01_td_use" class="center">Yes</td>

						</tr>
				
					</tbody>
				</table>
				<div>
				<span class="btn blue"><input name="btnNew" type="button"
						id="btnNew" value="신규(F2)" onclick = "PopUpVac()"/></span>
				</div>
				
			</div>

			<br />
			<br />
			<br />
			<br />			
			<!--endof 하단버튼 단-->
		</div>

		<!--히든컨트롤 시작-->
		<a id="lnkDel"
			href="javascript:__doPostBack(&#39;lnkDel&#39;,&#39;&#39;)"></a> <input
			name="hidSelCode" type="hidden" id="hidSelCode" /> <input
			name="hidAllCode" type="hidden" id="hidAllCode" value="20000§10000§" />
		<!--히든컨트롤 끝-->
	</form>
</body>
</html>
