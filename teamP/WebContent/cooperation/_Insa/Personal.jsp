<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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


<title>신상명세서</title>
<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />
<script type="text/javascript">
	calendarIDs = [ 'DtBirth','DtWedding']; // 달력이 추가될 태그의 id
	function Close(){
		window.close();
	}
</script>
</head>
<body>

	<form method="post" action="EPD002P_01.aspx?ec_req_sid=00HOCty8voui"
		id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="/wEPDwULLTE4OTE0OTI0ODcPZBYCZg9kFhBmDw8WAh4EVGV4dAUJ7J207IiZ7J20ZGQCCQ8PFhYeClllYXJTdHJpbmdlHgdDdWx0dXJlBQVrby1LUh4MbnVtWWVhclN0YXJ0AooPHglNb250aE5hbWUFCWRkbEJNb250aB4JRGF5U3RyaW5nZR4KbnVtWWVhckVuZALeDx4IWWVhclplcm9nHgtNb250aFN0cmluZ2UeCFllYXJOYW1lBQhkZGxCWWVhch4HRGF5TmFtZQUHdHh0QkRheR4JTW9udGhaZXJvZ2RkAgoPDxYWHwFlHwIFBWtvLUtSHwMClA8fBAUJZGRsV01vbnRoHwVlHwYC3g8fB2cfCGUfCQUIZGRsV1llYXIfCgUHdHh0V0RheR8LZ2RkAg0PDxYWHwFlHwIFBWtvLUtSHwMCig8fBAUKZGRsTUlNb250aB8FZR8GAt4PHwdnHwhlHwkFCWRkbE1JWWVhch8KBQh0eHRNSURheR8LZ2RkAg4PDxYWHwFlHwIFBWtvLUtSHwMCig8fBAUKZGRsTU9Nb250aB8FZR8GAt4PHwdnHwhlHwkFCWRkbE1PWWVhch8KBQh0eHRNT0RheR8LZ2RkAg8PDxYWHwFlHwIFBWtvLUtSHwMCig8fBAUKZGRsS0lNb250aB8FZR8GAt4PHwdnHwhlHwkFCWRkbEtJWWVhch8KBQh0eHRLSURheR8LZ2RkAhAPDxYWHwFlHwIFBWtvLUtSHwMCig8fBAUKZGRsS09Nb250aB8FZR8GAt4PHwdnHwhlHwkFCWRkbEtPWWVhch8KBQh0eHRLT0RheR8LZ2RkAhUPDxYCHwAFBuyCreygnGRkZGzHlJGoCDDBmYu8Dyir0W6VuZE0" />
		</div>


		<div class="aspNetHidden">

			<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEW5QQC79WrvgsClZbxnAkC0qfPrgwC29Cm0gIC4dPD2wcCg6vszQwC9MKpiwEC8cKpiwECjofU0w8CgP3lwgYCw+r+8gECw+rKyQYCw+qmpA4Cw+qygwcCw+qO3gwCqNO8xwsCqNOIogMCqNOkywUCqNOwpg0CqNOM/QICqNOY2AsCqNP0tAMCqNPAkwgCqNPc7gECqNOoxQYC7LDBswMC7LDdjggC7LDptw0C7LDFkgIC7LDR6QsC7LCtRALssLmjCALssJX+AQLssOHaBgLssP2xDgLRmeOeDQLRmf/1AgLRmYudBwLRmef5DALRmfPUBQLRmc+zDQLRmduOAgLRmbflCwLRmYNAAtGZn58IAubzo9gCAubzv7cKAubzy9wMAubzp7sEAubzs5YNAubzj+0CAubzm8gLAubz96QDAubzw4MIAubz394BAsvYzccMAsvY2aIEAsvY9csGAsvYwaYOAsvY3f0HAsvYqdgMAsvYhbcEAsvYkZINAsvY7e4CAsvY+cULArDB77IJArDB+4kOArDBl7EDArDB440IArDB/+gBArDBy8cGArDBp6IOArDBs/kHArDBj9QMArDBm7MEApWuiZgDApWu5fQIApWusZwNApWujfsCApWumdYLApWu9bIDApWuwYkIApWu3eQBApWuqcMGApWuhZ4OAvqUq4cNAvqUh+ICAvqU04sHAvqUr+YMAvqUu70EAvqUl5gNAvqU4/QCAvqU/9MLAvqUy64DAvqUp4UIAqG15cYBArHag6sNArHah6sNArHau6sNArHav6sNArHas6sNArHat6sNArHaq6sNArHa76gNArHa46gNAq7aj6sNAq7ag6sNAq7ah6sNAreMpRIC/cK53QYCvtWi7QECvtWW1gYCvtX6uw4CvtXunAcCvtXSwQwC1ezg2AsC1ezUvQMC1ez41AUC1ezsuQ0C1ezQ4gIC1ezExwsC1eyoqwMC1eycjAgC1eyA8QEC1ez02gYCkY+drAMCkY+BkQgCkY+1qA0CkY+ZjQICkY+N9gsCkY/xWwKRj+W8CAKRj8nhAQKRj73FBgKRj6GuDgKspr+BDQKspqPqAgKspteCBwKsprvmDAKspq/LBQKsppOsDQKspoeRAgKspuv6CwKspt9fAqymw4AIApvM/8cCApvM46gKApvMl8MMApvM+6QEApvM74kN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" />
		</div>
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif"
						width="8px" height="9px" alt="" /> [<span id="lblEmpKname">호날두</span>]님의
					신상명세서
				</h1>
			</div>

			<div id="contents">
				<div class="nav_tabfix">
					<ul>
						<li class="nav_tab_fixon">신상명세서</li>
					</ul>
				</div>
				<table summary="" class="entry">
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="" />
					<tr>
						<th>세대주 성명</th>
						<td><input name="h_name" type="text" maxlength="50"
							id="h_name" class="default" size="20" style="width: 60%;" /></td>
						<th>세대주와의 관계</th>
						<td><input name="h_rel" type="text" maxlength="6" id="h_rel"
							class="default" size="20" style="width: 60%;" /></td>
					</tr>
					<tr>
						<th>주민등록상 전화</th>
						<td><input name="doc_tel" type="text" maxlength="20"
							id="doc_tel" class="default"
							onkeyup="text_check(&#39;doc_tel&#39;,&#39;20&#39;)" size="20"
							style="width: 70%;" /></td>
						<th>본 관</th>
						<td><input name="nat_plc" type="text" maxlength="12"
							id="nat_plc" class="default" size="30" style="width: 70%;" /></td>
					</tr>
					<tr>
						<th>본 적</th>
						<td colspan="3"><input name="origin_addr" type="text"
							maxlength="80" id="origin_addr" class="default" size="80"
							style="width: 88%;" /></td>
					</tr>
					<tr>
						<th>주민등록상 주소</th>
						<td colspan="3"><a href="#" id=""
							class="link-blue"
							>우편번호검색</a>&nbsp;
							<input name="doc_post1" type="text" id="doc_post1"
							class="default" style="width: 40px;" onBlur="BlurColor(this);"
							size="3" maxlength="3" /> - <input name="doc_post2" type="text"
							id="doc_post2" class="default" style="width: 40px;"
							onBlur="BlurColor(this);" size="3" maxlength="3" />&nbsp;&nbsp;
							<input name="doc_addr" type="text" maxlength="80" id="doc_addr"
							class="default" size="55" style="width: 56%;" /></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input name="DtBirth" type="text" id="DtBirth" size="12"
							maxlength="8" value="" class="default"><input type="radio" name="birthday_type" id="birthday_type1" value="1"
							checked />양력&nbsp;&nbsp; <input type="radio"
							name="birthday_type" id="birthday_type2" value="2" />음력</td>
					</tr>
					<tr>
						<th>결혼유무</th>
						<td><input type="radio" name="wedding_type"
							id="wedding_type1" value="1" checked />미혼&nbsp;&nbsp; <input
							type="radio" name="wedding_type" id="wedding_type2" value="2" />결혼</td>
						<th>결혼기념일</th>
						<td><input name="DtWedding" type="text" id="DtWedding" size="12"
							maxlength="8" value="" class="default"></td>
					</tr>
					<tr>
						<th>장애구분</th>
						<td colspan="3"><input type="radio" name="handi_type"
							id="handi_type2" value="0" checked />무&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" name="handi_type" id="handi_type1" value="1" />유</td>
					</tr>
				</table>

				<div class="nav_tabfix">
					<ul>
						<li class="nav_tab_fixon">보훈사항</li>
					</ul>
				</div>
				<table summary="" class="entry">
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="" />
					<tr>
						<th>보훈자구분</th>
						<td><input type="radio" name="merit_type" id="merit_type1"
							value="0" checked />비대상&nbsp;&nbsp;&nbsp; <input type="radio"
							name="merit_type" id="merit_type2" value="1" />대상</td>
						<th>보훈자와의 관계</th>
						<td><input name="merit_rel" type="text" maxlength="4"
							id="merit_rel" class="default" style="width: 50%;" /></td>
					</tr>
				</table>

				<div class="nav_tabfix">
					<ul>
						<li class="nav_tab_fixon">병역사항</li>
					</ul>
				</div>
				<table summary="" class="entry">
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="" />
					<tr>
						<th>병역구분</th>
						<td><select name="military_type" id="military_type"
							style="width: 130px;">
								<option value="9">해당사항 없음</option>
								<option value="1">군 필</option>
								<option value="2">미 필</option>
								<option value="3">산 업</option>
								<option value="4">연 구</option>
						</select></td>
						<th>군 별</th>
						<td><input name="military_gubun" type="text" maxlength="10"
							id="military_gubun" class="default" style="width: 50%;" /></td>
					</tr>
					<tr>
						<th>미필사유</th>
						<td><input name="military_des" type="text" maxlength="30"
							id="military_des" class="default" style="width: 50%;" /></td>
						<th>계 급</th>
						<td><input name="military_rank" type="text" maxlength="10"
							id="military_rank" class="default" style="width: 50%;" /></td>
					</tr>
				</table>
				<br />
				<br />
				<br />
				<br />

			</div>
			<!--//contents-->
			<div class="footerBG_pop">
				<span class="btn blue"><input type="button" name="btnSave"
					id="btnSave" onclick="fnSave();" value="저장(F8)" /></span> <span
					class="btn gray"><input type="button" name="btnClose"
					id="btnClose" value="닫기" onclick = "Close()"/></span>
				<p class="btn_right"></p>
			</div>
			<!--//footerBG-->
		</div>
		<!--//wrap-->

		<a id="lnkSave"
			href="javascript:__doPostBack(&#39;lnkSave&#39;,&#39;&#39;)"></a> <input
			type="hidden" name="hidEmpCd" id="hidEmpCd" value="00001" /> <input
			type="hidden" name="hidEmpKname" id="hidEmpKname" value="이숙이" /> <input
			name="hidbirth" type="hidden" id="hidbirth" /> <input name="hidwed"
			type="hidden" id="hidwed" /> <input name="hidhandi" type="hidden"
			id="hidhandi" /> <input name="hidmerit" type="hidden" id="hidmerit" />
		<input name="hidmili" type="hidden" id="hidmili" />

	</form>
</body>
</html>