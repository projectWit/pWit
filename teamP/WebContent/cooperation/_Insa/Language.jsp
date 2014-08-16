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

<title>외국어등록</title>
<script type="text/javascript">
	function Close() {
		window.close();
	}
</script>
</head>
<body>
	<form method="post" id="form1">



		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">이숙이</span>]님의 어학능력등록
				</h1>
			</div>

			<div id="contents">
				<div class="container H_15px">
					<span class="float_left"><input type="button"
						class="btn_grayS" onclick="ClearCheckedRow();" value=" 선택삭제" /></span> <span
						class="float_right Orange font_s"><img src="img/noti.gif"
						width="16px" height="9px" alt="" />입력줄수는 마지막 줄에서 자동증가 됩니다.</span>
				</div>

				<table summary="" class="list_input">
					<col width="3%" />
					<col width="20%" />
					<col width="17%" />
					<col width="17%" />
					<col width="17%" />
					<col width="" />
					<thead>
						<tr>
							<th class="check"><input class="checkbox" type="checkbox"
								name="chkAll" id="chkAll" onclick="AllCheck();" /></th>
							<th>외국어명</th>
							<th>독해</th>
							<th>작 문</th>
							<th>회 화</th>
							<th>자 격 증</th>
						</tr>
					</thead>
					<tbody id="input_body">


						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td><input type="text" id="ForeignName_0"
								name="ForeignName_0" class="default" style="width: 70%;"
								value="" /></td>
							<td class="center"><select id="ddlForeignRead_0"
								name="ddlForeignRead_0">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignWrite_0"
								name="ddlForeignWrite_0">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignSpeak_0"
								name="ddlForeignSpeak_0">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><input id="txtForeignLicence_0"
								class="default" name="txtForeignLicence_0" style="width: 90%;"
								type="text" value="" maxlength="20" /></td>
						</tr>


						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td><input type="text" id="ForeignName_1"
								name="ForeignName_1" class="default" style="width: 70%;"
								value="" /></td>
							<td class="center"><select id="ddlForeignRead_1"
								name="ddlForeignRead_1">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignWrite_1"
								name="ddlForeignWrite_1">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignSpeak_1"
								name="ddlForeignSpeak_1">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><input id="txtForeignLicence_1"
								class="default" name="txtForeignLicence_1" style="width: 90%;"
								type="text" value="" maxlength="20" /></td>
						</tr>


						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td><input type="text" id="ForeignName_2"
								name="ForeignName_2" class="default" style="width: 70%;"
								value="" /></td>
							<td class="center"><select id="ddlForeignRead_2"
								name="ddlForeignRead_2">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignWrite_2"
								name="ddlForeignWrite_2">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignSpeak_2"
								name="ddlForeignSpeak_2">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><input id="txtForeignLicence_2"
								class="default" name="txtForeignLicence_2" style="width: 90%;"
								type="text" value="" maxlength="20" /></td>
						</tr>


						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td><input type="text" id="ForeignName_3"
								name="ForeignName_3" class="default" style="width: 70%;"
								value="" /></td>
							<td class="center"><select id="ddlForeignRead_3"
								name="ddlForeignRead_3">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignWrite_3"
								name="ddlForeignWrite_3">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignSpeak_3"
								name="ddlForeignSpeak_3">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><input id="txtForeignLicence_3"
								class="default" name="txtForeignLicence_3" style="width: 90%;"
								type="text" value="" maxlength="20" /></td>
						</tr>


						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td><input type="text" id="ForeignName_4"
								name="ForeignName_4" class="default" style="width: 70%;"
								value="" /></td>
							<td class="center"><select id="ddlForeignRead_4"
								name="ddlForeignRead_4">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignWrite_4"
								name="ddlForeignWrite_4">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignSpeak_4"
								name="ddlForeignSpeak_4">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><input id="txtForeignLicence_4"
								class="default" name="txtForeignLicence_4" style="width: 90%;"
								type="text" value="" maxlength="20" /></td>
						</tr>


						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>

							<td><input type="text" id="ForeignName_5"
								name="ForeignName_5" class="default" style="width: 70%;"
								value="" /></td>
							<td class="center"><select id="ddlForeignRead_5"
								name="ddlForeignRead_5">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignWrite_5"
								name="ddlForeignWrite_5">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><select id="ddlForeignSpeak_5"
								name="ddlForeignSpeak_5">
									<option value="0">============</option>
									<option value="1">상</option>
									<option value="2">중</option>
									<option value="3">하</option>
							</select></td>
							<td class="center"><input id="txtForeignLicence_5"
								class="default" name="txtForeignLicence_5" style="width: 90%;"
								type="text" value="" maxlength="20" /></td>
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
