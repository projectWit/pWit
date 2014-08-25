<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	calendarIDs = [ 'WriteDt', 'FromDt1', 'ToDt', 'ToDt1' ]; // 달력이 추가될 태그의 id
	function PopUpDep() {
		window.open("EvaDep.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpPos() {
		window.open("EvaPos.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpName() {
		window.open("EvaName.jsp", "", "width = 500px, height = 300px");
	}
</script>
<style>
table.t2 {
	width: 100%;
	padding: 0;
	margin: 5px 0 0 0;
	border-collapse: collapse;
	border: 1px solid #bbc5ce;
	clear: both;
}

.t2 th {
	font-family: 맑은 고딕, Arial, Sans-serif;
	font-size: 13px;
	font-weight: normal;
	width: 115px;
	margin: 0;
	padding: 5px 0 3px 2px;
	line-height: 1.3;
	text-align: center;
	vertical-align: middle;
	color: #036;
	line-height: 14px;
	background-color: #e2f0fc;
	border-bottom: 1px solid #bbc5ce;
	border-right: 1px solid #bbc5ce; /*word-break:break-all;*/
	word-wrap: break-word;
}

.t2 td {
	font-family: 맑은 고딕, Arial, Sans-serif;
	font-weight: normal;
	padding: 2px 0 2px 2px;
	line-height: 1.3;
	background: #f7f7f7;
	border-bottom: 1px solid #bbc5ce;
	border-right: 1px solid #bbc5ce; /*word-break:break-all;*/
	word-wrap: break-word;
	text-align: center;
}

table.t3 {
	width: 100%;
	padding: 0;
	margin: 5px 0 0 0;
	border-collapse: collapse;
	border: 1px solid #bbc5ce;
	clear: both;
}

.t3 th {
	font-family: 맑은 고딕, Arial, Sans-serif;
	font-size: 13px;
	font-weight: normal;
	width: 115px;
	margin: 0;
	padding: 5px 0 3px 2px;
	line-height: 1.3;
	text-align: center;
	vertical-align: middle;
	color: #036;
	line-height: 14px;
	background-color: #e2f0fc;
	border-bottom: 1px solid #bbc5ce;
	border-right: 1px solid #bbc5ce; /*word-break:break-all;*/
	word-wrap: break-word;
}

.t3 td {
	font-family: 맑은 고딕, Arial, Sans-serif;
	font-weight: normal;
	padding: 2px 0 2px 2px;
	line-height: 1.3;
	background: #f7f7f7;
	border-bottom: 1px solid #bbc5ce;
	border-right: 1px solid #bbc5ce; /*word-break:break-all;*/
	word-wrap: break-word;
	text-align: left;
}
</style>
</head>
<body id="cm_search">

	<div id="wrap">

		<form id="form1" name="frmSearch" method="post">

			<div class="new-title">
				<div class="title-leftarea">근무평가</div>
			</div>

			<div id="print_search">
				<div id="search-form">
					<fieldset>
						<legend>
							<span class="title">게시판검색조건</span>
						</legend>
						<table class="search_t fixed">

							<tr>
								<th>작성날짜</th>
								<td><input name="WriteDt" type="text" id="WriteDt"
									size="12" maxlength="8" value="" class="default" /></td>
							</tr>

							<tr>
								<th>사원명</th>
								<td><input type="text" name="txtId" id="txtId"
									class="rightnone" value="" style="width: 66px;" /><a
									href = "#"><img src="img/Find.gif" onclick = "PopUpName()"
										width="22px" height="19px" alt="검색" /></a><input type="text"
									name="txtName" id="txtName" class="grayleft"
									readonly="readonly" value="" style="width: 90px;" /></td>
							</tr>

							<tr>
								<th>부서</th>
								<td><input type="text" name="DepCd" id="DepCd"
									class="rightnone" size="10" maxlength="30" /><a href="#"><img
										src="img/Find.gif" width="22px" height="19px" alt="검색"
										onclick="PopUpDep()" /></a> <input type="text" name="Dep"
									id="Dep" size="15" value="" class="grayleft"
									style="width: 90px;" readonly="readonly" /></td>
							</tr>
						</table>
						<table class="t2">
							<col width="5%" />
							<col width="15%" />
							<col width="8%" />
							<col width="22%" />

							<tr>
								<th colspan="4">직무수행 및 실적평가</th>
							</tr>
							<tr>
								<td>연번</td>
								<td>평가요소</td>
								
								<td>배점</td>
								<td>소계</td>
							</tr>

							<tr>
								<td>1</td>
								<td>업무달성도</td>
								<td>25점</td>
								<td><input type="text" class="default" value="20"
									style="width: 30%" /></td>
							</tr>
							<tr>
								<td>2</td>
								<td>성실성</td>
								<td>20점</td>
								<td><input type="text" class="default" value="20"
									style="width: 30%" /></td>
							</tr>
							<tr>
								<td>3</td>
								<td>노력도</td>
								<td>20점</td>
								<td><input type="text" class="default" value="20"
									style="width: 30%" /></td>
							</tr>
							<tr>
								<td>4</td>
								<td>팀워크</td>
								<td>15점</td>
								<td><input type="text" class="default" value="15"
									style="width: 30%" /></td>
							</tr>

							<tr>
								<td>5</td>
								<td>추진력 및 신속성</td>
								<td>20점</td>
								<td><input type="text" class="default" value="20"
									style="width: 30%" /></td>
							</tr>
						</table>

						<table class="t2">
							<tr>
								<th colspan="2">종합평가</th>
							</tr>
							<tr>
								<td>평가 점수</td>
								<td>종합평가의견</td>
							</tr>
							<tr>
								<td><input type="text" value="90" class = "default" style="width: 30%" /></td>
								<td><input type="text" class = "default"  value="아주성실함"></td>
							</tr>
						</table>

						<table class="t3">

							<tr>
								<th colspan="2">평가자 정보</th>
							</tr>
							<tr>
								<th>직위</th>
								<td><input type="text" name="PosCd" id="PosCd"
									class="rightnone" value="" style="width: 66px;" /><a
								href = "#"><img src="img/Find.gif"
										width="22px" height="19px" alt="검색" onclick="PopUpPos()" /></a><input
									type="text" name="Pos" id="Pos" class="grayleft"
									readonly="readonly" value="" style="width: 90px;" /></td>
							</tr>

							<tr>
								<th>평가자</th>
								<td><input type="text" name="txtSiteCd" id="txtSiteCd"
									class="rightnone" size="10" maxlength="30" /><a href="#"><img
										src="img/Find.gif" width="22px" height="19px" alt="검색"
										onclick="PopUpName()" /></a> <input type="text"
									name="txtSiteDes" id="txtSiteDes" size="15" value=""
									class="grayleft" style="width: 90px;" readonly="readonly" /></td>
							</tr>
						</table>


						<div id="search-button" class="search-button">
							<span class="btn gray"><input name="btnSearch"
								type="button" id="btnSearch" value="저장(F8)" onclick="PopUpNew()" /></span>
							<span class="btn gray"><input name="btnRewrite"
								type="button" id="btnRewrite" onclick="javascript:fnClear();"
								value="다시작성" /></span>

						</div>
					</fieldset>
				</div>
			</div>
		</form>
		<hr />
	</div>
	<!--wap end-->
</body>
</html>