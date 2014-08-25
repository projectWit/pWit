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
	<form method="post" id="form1">
		
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
							<th style="width: 100px;">남은휴가일수</th>
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
							
							<td id="rpt_ctl00_td_btn" class="center">15일</td>

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

							<td id="rpt_ctl01_td_btn" class="center">15일</td>

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
