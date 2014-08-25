<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

<title>경력사항등록</title>
<script type="text/javascript">
	function Close() {
		window.close();
	}
	function PopUpPos() {
		window.open("CarPos.jsp", "", "width = 500px, height = 300px");
	}
</script>
</head>
<body>
<form method="post" id="form">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">호날두</span>]님의 경력사항등록
				</h1>
			</div>

			<div id="contents">
				<div class="help_boxpop H_10px">
					<ul class="bg_gray">
						<li><img src="img/arrowBox.gif" width="13px" height="12px"
							alt="" /> 등록 예 : 입사일자(또는 퇴사일자)가 2000년 1월 1일이라면 등록은 20000101 입니다.</li>
					</ul>
				</div>
				<!--//help_boxpop-->

				<div class="container H_15px">
					<span class="float_left"><input type="button"
						class="btn_grayS" onclick="ClearCheckedRow();" value="선택삭제" /></span> <span
						class="float_right Orange font_s"><img src="img/noti.gif"
						width="16px" height="9px" alt="" />입력줄수는 마지막 줄에서 자동증가 됩니다.</span>
				</div>
				<table summary="" class="list_input H_2px">
					<col width="2%" />
					<col width="8%" />
					<col width="8%" />
					<col width="15%" />
					<col width="25%" />
					<col width="25%" />
					<col width="" />
					<thead>
						<tr>
							<th class="check"><input class="checkbox" type="checkbox"
								id="chkAll" name="chkAll" onclick="AllCheck();" /></th>
							<th>입사일자</th>
							<th>퇴사일자</th>
							<th>회사명</th>
							<th>직위</th>
							<th>담당업무(부서)</th>
							<th>퇴사사유</th>
						</tr>
					</thead>
					<tbody id="input_body">

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td class="center"><input id="InDt" maxlength="8"
								class="default" name="InDt" style="width: 90%;" type="text"
								value="" /></td>

							<td class="center"><input id="OutDt" maxlength="8"
								class="default" name="OutDt" style="width: 90%;" type="text"
								value="" /></td>
							<td class="center"><input id="ComName" class="default"
								name="ComName" style="width: 92%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input name="JobPosCd" type="text"
								id="JobPosCd" value="002" class="rightnone" style="width: 46px;"
								value="002" /><a href="#"><img src="img/Find.gif"
									width="22px" height="19px" alt='직위/직급' onclick="PopUpPos()" /></a><input
								name="JobPos" type="text" id="JobPos" class="grayleft"
								style="width: 88px;" readonly="readonly" value="대리" />
							</td>
							<td class="center"><input id="Duty" class="default"
								name="Duty" style="width: 95%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Reason" class="default"
								name="Reason" style="width: 94%;" type="text" value=""
								maxlength="30" /></td>
						</tr>
						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td class="center"><input id="InDt" maxlength="8"
								class="default" name="InDt" style="width: 90%;" type="text"
								value="" /></td>

							<td class="center"><input id="OutDt" maxlength="8"
								class="default" name="OutDt" style="width: 90%;" type="text"
								value="" /></td>
							<td class="center"><input id="ComName" class="default"
								name="ComName" style="width: 92%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Position" class="default"
								name="Position" style="width: 88%;" type="text" value=""
								maxlength="10" /></td>
							<td class="center"><input id="Duty" class="default"
								name="Duty" style="width: 95%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Reason" class="default"
								name="Reason" style="width: 94%;" type="text" value=""
								maxlength="30" /></td>
						</tr>
						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td class="center"><input id="InDt" maxlength="8"
								class="default" name="InDt" style="width: 90%;" type="text"
								value="" /></td>

							<td class="center"><input id="OutDt" maxlength="8"
								class="default" name="OutDt" style="width: 90%;" type="text"
								value="" /></td>
							<td class="center"><input id="ComName" class="default"
								name="ComName" style="width: 92%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Position" class="default"
								name="Position" style="width: 88%;" type="text" value=""
								maxlength="10" /></td>
							<td class="center"><input id="Duty" class="default"
								name="Duty" style="width: 95%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Reason" class="default"
								name="Reason" style="width: 94%;" type="text" value=""
								maxlength="30" /></td>
						</tr>
						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td class="center"><input id="InDt" maxlength="8"
								class="default" name="InDt" style="width: 90%;" type="text"
								value="" /></td>

							<td class="center"><input id="OutDt" maxlength="8"
								class="default" name="OutDt" style="width: 90%;" type="text"
								value="" /></td>
							<td class="center"><input id="ComName" class="default"
								name="ComName" style="width: 92%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Position" class="default"
								name="Position" style="width: 88%;" type="text" value=""
								maxlength="10" /></td>
							<td class="center"><input id="Duty" class="default"
								name="Duty" style="width: 95%;" type="text" value=""
								maxlength="30" /></td>
							<td class="center"><input id="Reason" class="default"
								name="Reason" style="width: 94%;" type="text" value=""
								maxlength="30" /></td>
						</tr>
					</tbody>
				</table>
				<br /> <br /> <br /> <br />

			</div>
		</div>
		<div class="footerBG_pop">
			<span class="btn blue"><input type="button" name="btnNew"
				id="btnNew" onclick="PopUpNew();" value="저장(F2)" /></span> <span
				class="btn gray"><input type="button" name="btnClose"
				id="btnClose" value="닫기" onclick="Close()" /></span>
		</div>
	</form>
</body>

</html>