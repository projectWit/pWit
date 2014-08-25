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
	
	function fnLink(no, str) {
		window.opener.form1.PosCd.value = no;
		window.opener.form1.Pos.value = str;
		window.close();
	};
</script>
</head>
<body>
	<form method="post" id="form1">
	
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
							<th style="width: 50%"><a href="#" class="th"> 그룹코드<img
									id="img_num" src="img/arrowBot.gif" width="11" height="15" /></a>
							</th>
							<th style="width: 50%"><a href="#" class="th"> 그룹명<img
									id="img_name" src="img/arrowBot.gif" width="11" height="15" /></a>
							</th>
						</tr>
					</thead>
					<tbody>

						<tr id="rpt_ctl00_trRpt">
							<td><a onclick="fnLink('001','사원')" class="list_link">001</a></td>
							<td><a onclick="fnLink('001','사원')" class="list_link">사원</a></td>
						</tr>

						<tr id="rpt_ctl01_trRpt">
							<td><a onclick="fnLink('002','대리')" class="list_link">002</a></td>
							<td><a onclick="fnLink('002','대리')" class="list_link">대리</a></td>
						</tr>

						<tr id="rpt_ctl02_trRpt">
							<td><a onclick="fnLink('003','과장')" class="list_link">003</a></td>
							<td><a onclick="fnLink('003','과장')" class="list_link">과장</a></td>
						</tr>

						<tr id="rpt_ctl03_trRpt">
							<td><a onclick="fnLink('004','부장')" class="list_link">004</a></td>
							<td><a onclick="fnLink('004','부장')" class="list_link">부장</a></td>
						</tr>

						<tr id="rpt_ctl04_trRpt">
							<td><a onclick="fnLink('005','대표이사')" class="list_link">005</a></td>
							<td><a onclick="fnLink('005','대표이사')" class="list_link">대표이사</a></td>
						</tr>

						<tr id="rpt_ctl05_trRpt">
							<td><a onclick="fnLink('006','반장')" class="list_link">006</a></td>
							<td><a onclick="fnLink('006','반장')" class="list_link">반장</a></td>
						</tr>

						<tr id="rpt_ctl06_trRpt">
							<td><a onclick="fnLink('007','차장')" class="list_link">007</a></td>
							<td><a onclick="fnLink('007','차장')" class="list_link">차장</a></td>
						</tr>


					</tbody>
				</table>
				<span class="btn gray"> <input type="button" value="닫기"
					id="btnClose" name="btnClose" onclick = "Close()"/></span>
			</div>
			<br /> <br /> <br /> <br />
			</div>
	</form>

</body>
</html>
