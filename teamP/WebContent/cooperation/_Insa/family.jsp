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

<title>가족사항 등록</title>


<script>
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
						id="lblEmpKname">이숙이</span>]님의 가족사항등록
				</h1>
			</div>

			<div id="contents">
				<div class="container H_15px">
					<span class="float_left"><input type="button"
						class="btn_grayS" onclick="ClearCheckedRow();" value="선택삭제" /></span> <span
						class="float_right Orange font_s"><img src="img/noti.gif"
						width="16px" height="9px" alt="" />입력줄수는 마지막 줄에서 자동증가 됩니다.</span>
				</div>

				<table summary="" class="list_input">
					<col width="3%" />
					<col width="" />
					<col width="10%" />
					<col width="10%" />
					<col width="12%" />
					<col width="12%" />
					<col width="15%" />
					<col width="9%" />
					<col width="5%" />
					<col width="5%" />
					<thead>
						<tr>
							<th class="check"><input class="checkbox" type="checkbox"
								name="chkAll" id="chkAll" onclick="AllCheck();" /></th>
							<th>주민등록번호</th>
							<th>성명</th>
							<th>관 계</th>
							<th>최종학력</th>
							<th>직 업</th>
							<th>회사명</th>
							<th>직 위</th>
							<th>동거여부</th>
							<th>부양<br />여부
							</th>
						</tr>
					</thead>
					<tbody id="input_body">

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_0" class="default"
								name="JuminNoF_0" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_0" class="default"
								name="JuminNoL_0" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_0" class="default"
								name="KName_0" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_0" class="default"
								name="RelDes_0" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_0" name="hidRelDes_0" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_0"
								class="default" name="ScholarShip_0" style="width: 90%;"
								type="text" value="" 
								/><input id="hidScholarShip_0"
								name="hidScholarShip_0" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_0" class="default"
								name="JobDes_0" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_0"
								class="default" name="ComName_0" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_0"
								class="default" name="JobPos_0" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_0" id="chkHomeType_0" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_0" id="chkRelType_0" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_1" class="default"
								name="JuminNoF_1" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_1" class="default"
								name="JuminNoL_1" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_1" class="default"
								name="KName_1" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_1" class="default"
								name="RelDes_1" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_1" name="hidRelDes_1" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_1"
								class="default" name="ScholarShip_1" style="width: 90%;"
								type="text" value="" 
								 /><input id="hidScholarShip_1"
								name="hidScholarShip_1" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_1" class="default"
								name="JobDes_1" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_1"
								class="default" name="ComName_1" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_1"
								class="default" name="JobPos_1" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_1" id="chkHomeType_1" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_1" id="chkRelType_1" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_2" class="default"
								name="JuminNoF_2" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_2" class="default"
								name="JuminNoL_2" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_2" class="default"
								name="KName_2" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_2" class="default"
								name="RelDes_2" style="width: 88%;" type="text" value=""
								/><input
								id="hidRelDes_2" name="hidRelDes_2" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_2"
								class="default" name="ScholarShip_2" style="width: 90%;"
								type="text" value="" 
								/><input id="hidScholarShip_2"
								name="hidScholarShip_2" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_2" class="default"
								name="JobDes_2" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_2"
								class="default" name="ComName_2" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_2"
								class="default" name="JobPos_2" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_2" id="chkHomeType_2" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_2" id="chkRelType_2" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_3" class="default"
								name="JuminNoF_3" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_3" class="default"
								name="JuminNoL_3" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_3" class="default"
								name="KName_3" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_3" class="default"
								name="RelDes_3" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_3" name="hidRelDes_3" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_3"
								class="default" name="ScholarShip_3" style="width: 90%;"
								type="text" value=""
								/><input id="hidScholarShip_3"
								name="hidScholarShip_3" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_3" class="default"
								name="JobDes_3" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_3"
								class="default" name="ComName_3" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_3"
								class="default" name="JobPos_3" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_3" id="chkHomeType_3" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_3" id="chkRelType_3" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_4" class="default"
								name="JuminNoF_4" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_4" class="default"
								name="JuminNoL_4" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_4" class="default"
								name="KName_4" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_4" class="default"
								name="RelDes_4" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_4" name="hidRelDes_4" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_4"
								class="default" name="ScholarShip_4" style="width: 90%;"
								type="text" value="" 
								/><input id="hidScholarShip_4"
								name="hidScholarShip_4" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_4" class="default"
								name="JobDes_4" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_4"
								class="default" name="ComName_4" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_4"
								class="default" name="JobPos_4" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_4" id="chkHomeType_4" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_4" id="chkRelType_4" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_5" class="default"
								name="JuminNoF_5" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_5" class="default"
								name="JuminNoL_5" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_5" class="default"
								name="KName_5" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_5" class="default"
								name="RelDes_5" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_5" name="hidRelDes_5" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_5"
								class="default" name="ScholarShip_5" style="width: 90%;"
								type="text" value="" 
								/><input id="hidScholarShip_5"
								name="hidScholarShip_5" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_5" class="default"
								name="JobDes_5" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_5"
								class="default" name="ComName_5" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_5"
								class="default" name="JobPos_5" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_5" id="chkHomeType_5" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_5" id="chkRelType_5" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_6" class="default"
								name="JuminNoF_6" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_6" class="default"
								name="JuminNoL_6" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_6" class="default"
								name="KName_6" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_6" class="default"
								name="RelDes_6" style="width: 88%;" type="text" value=""
								/><input
								id="hidRelDes_6" name="hidRelDes_6" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_6"
								class="default" name="ScholarShip_6" style="width: 90%;"
								type="text" value="" 
								 /><input id="hidScholarShip_6"
								name="hidScholarShip_6" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_6" class="default"
								name="JobDes_6" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_6"
								class="default" name="ComName_6" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_6"
								class="default" name="JobPos_6" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_6" id="chkHomeType_6" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_6" id="chkRelType_6" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_7" class="default"
								name="JuminNoF_7" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_7" class="default"
								name="JuminNoL_7" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_7" class="default"
								name="KName_7" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_7" class="default"
								name="RelDes_7" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_7" name="hidRelDes_7" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_7"
								class="default" name="ScholarShip_7" style="width: 90%;"
								type="text" value="" 
								 /><input id="hidScholarShip_7"
								name="hidScholarShip_7" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_7" class="default"
								name="JobDes_7" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_7"
								class="default" name="ComName_7" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_7"
								class="default" name="JobPos_7" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_7" id="chkHomeType_7" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_7" id="chkRelType_7" checked="checked" /> 예</td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><input id="JuminNoF_8" class="default"
								name="JuminNoF_8" style="width: 40%;" type="text" value=""
								maxlength="6" /> - <input id="JuminNoL_8" class="default"
								name="JuminNoL_8" style="width: 40%;" type="text" value=""
								maxlength="7" /></td>
							<td class="center"><input id="KName_8" class="default"
								name="KName_8" style="width: 88%;" type="text" maxlength="50"
								value="" /></td>
							<td class="center"><input id="RelDes_8" class="default"
								name="RelDes_8" style="width: 88%;" type="text" value=""
								 /><input
								id="hidRelDes_8" name="hidRelDes_8" type="hidden" value="" /></td>
							<td class="center"><input id="ScholarShip_8"
								class="default" name="ScholarShip_8" style="width: 90%;"
								type="text" value="" 	/><input id="hidScholarShip_8"
								name="hidScholarShip_8" type="hidden" value="" /></td>
							<td class="center"><input id="JobDes_8" class="default"
								name="JobDes_8" style="width: 90%;" type="text"
								maxlength="20" value="" /></td>
							<td class="center"><input id="ComName_8"
								class="default" name="ComName_8" style="width: 90%;"
								type="text" maxlength="30" value="" /></td>
							<td class="center"><input id="JobPos_8"
								class="default" name="JobPos_8" style="width: 88%;"
								type="text" maxlength="10" value="" /></td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkHomeType_8" id="chkHomeType_8" checked="checked" /> 예</td>
							<td class="center"><input class="checkbox" type="checkbox"
								name="chkRelType_8" id="chkRelType_8" checked="checked" /> 예</td>
						</tr>

					</tbody>
				</table>
				 <br /> <br /> <br />
				<br />
			</div>	
			</div>
			<div class="footerBG_pop">
				<span class="btn blue"><input type="button" name="btnNew"
					id="btnNew" onclick="PopUpNew();" value="저장(F2)" /></span> <span
					class="btn gray"><input type="button" name="btnClose"
					id="btnClose" value="닫기" onclick = "Close()" /></span>
			</div>
	</form>
</body>
</html>