<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
	calendarIDs = [ 'FromDt', 'ToDt' ]; // 달력이 추가될 태그의 id
	function Search(){
		window.open("ClkManDayList.jsp", "", "");	
		
	}
</script>
</head>


<body id="cm_search">

	<div id="wrap">

		<script language="javascript" type="text/javascript">
			
		</script>
		<form id="frmSearch" name="frmSearch" method="post"
			action="/ECMain/EGM/EGM017R.aspx?ec_req_sid=00HPIJ*Itya4">

			<div class="new-title">
				<div class="title-leftarea">출/퇴근현황</div>
			</div>

			<div id="print_search">
				<div id="search-form">
					<fieldset>
						<legend>
							<span class="title">게시판검색조건</span>
						</legend>
						<table class="search_t fixed">

							<tr>
								<th>기간</th>
								<td><input name="FromDt" type="text" id="FromDt" size="12"
									maxlength="8" value="" class="default" /> ~ <input name="ToDt"
									type="text" id="ToDt" size="12" maxlength="8" value=""
									class="default" /></td>
							</tr>

							<tr>
								<th>사원명</th>
								<td><input type="text" name="txtId" id="txtId"
									class="rightnone" value="" style="width: 66px;" /><a
									onclick="search_code(0, 1);"><img src="img/Find.gif"
										width="22px" height="19px" alt="검색" /></a><input type="text"
									name="Name" id="Name" class="grayleft"
									readonly="readonly" value="" style="width: 90px;" /></td>
							</tr>

							<tr>
								<th>부서</th>
								<td><input type="text" name="txtSiteCd" id="txtSiteCd"
									class="rightnone" size="10" maxlength="30" /><img
									src="img/Find.gif" width="22px" height="19px" alt="검색" /><input
									type="text" name="Site" id="Site" size="15"
									value="" class="grayleft" style="width: 90px;"
									readonly="readonly" /></td>
							</tr>

							<tr>
								<th>구분</th>
								<td><input type="radio" name="rbIoType1" id="radio1"
									onkeypress="return fnEnterHandles1(this,'1');" value="1"
									checked = "checked"/>출근 <input type="radio" name="rbIoType1"
									id="radio2" onkeypress="return fnEnterHandles1(this,'1');"
									value="2" />퇴근 <input type="radio" name="rbIoType1"
									id="radio3" onkeypress="return fnEnterHandles1(this,'1');"
									value="3" />출/퇴근</td>
							</tr>

							<tr>
								<th>기타</th>
								<td><input type="checkbox" name="cbIoType1" id="cbIoType1"
									onkeypress="return fnEnterHandles1(this,'1');" value="Y"
									checked = "checked" />모든날짜검색 <input type="checkbox" name="cbIoType2"
									id="cbIoType2" onkeypress="return fnEnterHandles1(this,'1');"
									value="1" />IP체크</td>
							</tr>

							<!--  endof 검색조건  -->
						</table>
						<div id="search-button" class="search-button">
							<span class="btn gray"><input name="btnSearch"
								type="button" id="btnSearch" value="검색(F8)" onclick = "Search()"/></span> <span
								class="btn gray"><input name="btnRewrite" type="button"
								id="btnRewrite" onclick="javascript:fnClear();" value="다시작성" /></span>

						</div>
						<!-- endof [search_btnpart] 검색버튼 -->
					</fieldset>
				</div>
			</div>			
		</form>
		<hr />
	</div>
</body>
</html>
