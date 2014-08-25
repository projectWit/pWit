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
	<form method="post" id="form1">
		<div id="wap_pop">
			<div id="contents">
				<table class="list H_15px">
					<tr>
						<th>빠른 검색을 원한다면 해당항목 설정 후 검색 바랍니다.</th>
					</tr>
					<tr>
						<td class="modal_gray"><input name="txtName" type="text"
							id="txtName" class="default" />&nbsp; <input type="submit"
							name="btnSearch" value="검색" id="btnSearch" class="btn_searchS" />


						</td>
					</tr>
				</table>
				<br /> <br />
				<table summary="" class="list H_0px">
					<col width="" />
					<col width="40%" />
					<col width="" />
					<thead>
						<tr>

							<th><a href="#" onclick="fn_SortList('EMP_CD');">사원번호<img
									id="img_code" src="img/arrowBot.gif" width="11" height="15" />
							</a></th>
							<th><a href="#">사원명<img id="img1"
									src="img/arrowBot.gif" width="11" height="15" />
							</a></th>
							<th><a href="#">부서명<img id="img2"
									src="img/arrowBot.gif" width="11" height="15" />
							</a></th>
						</tr>
					</thead>
					<tbody>

						<tr id="rptMain_ctl00_trRpt">
							<td><a
								href="javascript:fnLink('2011-03|김수현|00002|001|N|사원|경영지원팀|010-1566-5333|jjj@naver.com');"
								class="list_link">2011-03</a></td>
							<td><a
								href="javascript:fnLink('2011-03|김수현|00002|001|N|사원|경영지원팀|010-1566-5333|jjj@naver.com');"
								class="list_link">김수현</a></td>
							<td>경영지원팀</td>
						</tr>

						<tr id="rptMain_ctl01_trRpt">
							<td><a
								href="javascript:fnLink('2003-01|백도경|00002|005|N|대표이사|경영지원팀|01001571557|244@ecounterp.co.kr');"
								class="list_link">2003-01</a></td>
							<td><a
								href="javascript:fnLink('2003-01|백도경|00002|005|N|대표이사|경영지원팀|01001571557|244@ecounterp.co.kr');"
								class="list_link">백도경</a></td>
							<td>경영지원팀</td>
						</tr>

						<tr id="rptMain_ctl02_trRpt">
							<td><a
								href="javascript:fnLink('2010-01|주다해|00002|004|N|부장|경영지원팀|010-0098-1245|askmail@ecounterp.com');"
								class="list_link">2010-01</a></td>
							<td><a
								href="javascript:fnLink('2010-01|주다해|00002|004|N|부장|경영지원팀|010-0098-1245|askmail@ecounterp.com');"
								class="list_link">주다해</a></td>
							<td>경영지원팀</td>
						</tr>

						<tr id="rptMain_ctl03_trRpt">
							<td><a
								href="javascript:fnLink('2003-02|현빈|00003|003|N|과장|영업팀|010-5555-8888|');"
								class="list_link">2003-02</a></td>
							<td><a
								href="javascript:fnLink('2003-02|현빈|00003|003|N|과장|영업팀|010-5555-8888|');"
								class="list_link">현빈</a></td>
							<td>영업팀</td>
						</tr>


					</tbody>
				</table>
				<br /> <br /> <br /> <br />
				<div class="footerBG_pop">

					<span class="btn blue"><input type="button" id="btnNew"
						name="btnNew" value="신규(F2)" onclick="fnNew();" /></span> <span
						class="btn gray"><input name="btnClose" type="button"
						id="btnClose" onclick="Close()" value="닫기" /></span> <a id="lnkSearch"
						href="javascript:__doPostBack(&#39;lnkSearch&#39;,&#39;&#39;)"></a>
				</div>
			</div>
		</div>
	</form>
</body>

</html>
