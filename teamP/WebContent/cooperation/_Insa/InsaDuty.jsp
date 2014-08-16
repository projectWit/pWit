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
	<form method="post"
		action="CM024P.aspx?ec_req_sid=00HP*WINRUDF&amp;CODE_CLASS=I10&amp;KeyWord=&amp;DelFlag=N&amp;ChkFlag=P&amp;InputFlag=Y&amp;Sort=_DES&amp;Sort_AD=A&amp;PageSize=0&amp;CurrPage=0&amp;"
		id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="/wEPDwULLTE1NDcwNjMwMTkPZBYOZg8VARLrtojrn4nsvZTrk5zrk7HroZ1kAgEPFQEZ7J6Q6rCA7IKs7Jqp7L2U65OcIOuTseuhnWQCAg8VAQzsp4DquInqtazrtoRkAgMPFQEM6re466O565Ox66GdZAIEDxUBDOqzteygnOq3uOujuWQCBQ8VAQzsvZTrk5zrk7HroZ1kAgYPZBYEAgEPDxYCHgRUZXh0BQbqsoDsg4lkZAICDxYCHgtfIUl0ZW1Db3VudAIDFgZmD2QWAgIBD2QWBGYPZBYCZg8VAwIwMQbtjIDsm5ACMDFkAgEPZBYCZg8VAwIwMQbtjIDsm5AG7YyA7JuQZAIBD2QWAgIBD2QWBGYPZBYCZg8VAwIwMgbtjIDsnqUCMDJkAgEPZBYCZg8VAwIwMgbtjIDsnqUG7YyA7J6lZAICD2QWAgIBD2QWBGYPZBYCZg8VAwIwMwnshLzthLDsnqUCMDNkAgEPZBYCZg8VAwIwMwnshLzthLDsnqUJ7IS87YSw7J6lZGQ=" />
		</div>




		<div class="aspNetHidden">

			<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEWCgLs4JvuDALEhISFCwKln/PuCgLL35zyCgKb4oaPDQLG7+jyDwKlrZCqBwK4hM+IDQLEhLNoAorOoPkD" />
		</div>
		<div id="wrap_pop">
			<div id="contents">
				<table class="list H_10px">
					<tbody>
						<tr>
							<th>빠른 검색을 원한다면 해당항목 설정 후 검색 바랍니다.</th>
						</tr>
						<tr>
							<td class="modal_gray"><input name="txtName" type="text"
								id="txtName" class="default" onfocus="this.select();" />&nbsp;
								<input type="submit" name="btnSearch" value="검색"
								onclick="fnSearch(); return false;" id="btnSearch"
								class="btn_searchS" /></td>
						</tr>
					</tbody>
				</table>
				<table class="list fixed H_10px" summary="MSG00964">
					<thead>
						<tr>
							<th style="width: 50%"><a href="#" class="th"
								onclick="fnSortList('CODE_NO');"> 그룹코드<img id="img_num"
									src="img/arrowBot.gif" width="11" height="15" /></a></th>
							<th style="width: 50%"><a href="#" class="th"
								onclick="fnSortList('CODE_DES')"> 그룹명<img id="img_name"
									src="img/arrowBot.gif" width="11" height="15" /></a></th>
						</tr>
					</thead>
					<tbody>

						<tr id="rpt_ctl00_trRpt">
							<td><a href="javascript:fnLink('01|팀원');" class="list_link">01</a></td>
							<td><a href="javascript:fnLink('01|팀원');" class="list_link">팀원</a></td>
						</tr>

						<tr id="rpt_ctl01_trRpt">
							<td><a href="javascript:fnLink('02|팀장');" class="list_link">02</a></td>
							<td><a href="javascript:fnLink('02|팀장');" class="list_link">팀장</a></td>
						</tr>

						<tr id="rpt_ctl02_trRpt">
							<td><a href="javascript:fnLink('03|센터장');" class="list_link">03</a></td>
							<td><a href="javascript:fnLink('03|센터장');" class="list_link">센터장</a></td>
						</tr>


					</tbody>
				</table>
				<span class="btn gray"> <input type="button" value="닫기"
					id="btnClose" name="btnClose" onclick="Close()" /></span>
			</div>
			<br /> <br /> <br /> <br />

		</div>
	</form>

</body>

</html>
