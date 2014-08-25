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

<title>학력사항등록</title>

<script type="text/javascript">
	function Close() {
		window.close();
	}
</script>
</head>
<body>

	<form method="post" id="frm">


		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">이숙이</span>]님의 학력사항등록
				</h1>
			</div>

			<div id="contents">
				<div class="help_boxpop H_10px">
					<ul class="bg_gray">
						<li><img src="img/arrowBox.gif" width="13px" height="12px"
							alt="" /> 학력사항을 등록합니다. 일자는 yyyymmdd 형식으로 입력합니다. (예. 20070805)</li>
					</ul>
				</div>
				<!--//help_boxpop-->

				<div class="container H_15px">
					<span class="float_left"><input type="button"
						class="btn_grayS" value="선택삭제" /></span> <span
						class="float_right Orange font_s"><img src="img/noti.gif"
						width="16px" height="9px" alt="" />입력줄수는 마지막 줄에서 자동증가 됩니다.</span>
				</div>

				<table id="tbInputList" summary="" class="list_input">
					<col width="3%" />
					<col width="14%" />
					<col width="13%" />
					<col width="10%" />
					<col width="10%" />
					<col width="8%" />
					<col width="12%" />
					<col width="10%" />
					<col width="10%" />
					<col width="" />
					<thead>
						<tr>
							<th class="check"><input class="checkbox" type="checkbox"
								id="chkAll" name="chkAll" onclick="AllCheck();" /></th>
							<th>학력</th>
							<th>학교명</th>
							<th>입학일자</th>
							<th>졸업일자</th>
							<th>주야구분</th>
							<th>전공명</th>
							<th>소재지</th>
							<th>기 타</th>
							<th>졸업구분</th>
						</tr>
					</thead>
					<tbody id="input_body">

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><select id="ddlScholarship_0"
								name="ddlScholarship_0" style="width: 90px;">
									<option value=""  selected = "selected" >======</option>
									<option value="11">초등</option>
									<option value="12">중등</option>
									<option value="13">고등</option>
									<option value="14">대학</option>
									<option value="15">대학교</option>
									<option value="16">대학원(석사)</option>
									<option value="17">대학원(박사)</option>
							</select></td>
							<td class="center"><input type="text" id="SchoolName_0"
								name="SchoolName_0" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><input type="text" id="SDate_0"
								name="SDate_0" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><input type="text" id="EDate_0"
								name="EDate_0" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="DNType_0" name="DNType_0"
								style="width: 50px;">
									<option value="" selected="selected">===</option>
									<option value="1">주간</option>
									<option value="2">야간</option>
							</select></td>
							<td class="center"><input type="text" id="Major_0"
								name="Major_0" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><select id="local_0"
								name="local_0" style="width: 80px;">
									<option value=""  selected = "selected" >=======</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
									<option value="3">인천</option>
									<option value="4">충북</option>
									<option value="5">충남</option>
									<option value="6">대전</option>
									<option value="7">세종</option>
									<option value="8">경북</option>
									<option value="9">경남</option>
									<option value="10">대구</option>
									<option value="11">부산</option>
									<option value="12">전북</option>
									<option value="13">전남</option>
									<option value="14">광주</option>
									<option value="15">강원</option>
									<option value="16">제주</option>
							</select></td>
							<td class="center"><input type="text" id="Etc_0"
								name="Etc_0" value="" maxlength="60" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="SchType_0"
								name="SchType_0">
									<option value="" selected = "selected">======</option>
									<option value="1">재학</option>
									<option value="2">중퇴</option>
									<option value="3">수료</option>
									<option value="4">휴학</option>
									<option value="5">졸업</option>
							</select></td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><select id="ddlScholarship_1"
								name="ddlScholarship_1" style="width: 90px;">
									<option value="" selected = "selected">======</option>
									<option value="11">초등</option>
									<option value="12">중등</option>
									<option value="13">고등</option>
									<option value="14">대학</option>
									<option value="15">대학교</option>
									<option value="16">대학원(석사)</option>
									<option value="17">대학원(박사)</option>
							</select></td>
							<td class="center"><input type="text" id="SchoolName_1"
								name="SchoolName_1" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><input type="text" id="SDate_1"
								name="SDate_1" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><input type="text" id="EDate_1"
								name="EDate_1" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="DNType_1" name="DNType_1"
								style="width: 50px;">
									<option value="" selected="selected">===</option>
									<option value="1">주간</option>
									<option value="2">야간</option>
							</select></td>
							<td class="center"><input type="text" id="Major_1"
								name="Major_1" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><select id="local_1"
								name="local_1" style="width: 80px;">
									<option value=""  selected = "selected" >=======</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
									<option value="3">인천</option>
									<option value="4">충북</option>
									<option value="5">충남</option>
									<option value="6">대전</option>
									<option value="7">세종</option>
									<option value="8">경북</option>
									<option value="9">경남</option>
									<option value="10">대구</option>
									<option value="11">부산</option>
									<option value="12">전북</option>
									<option value="13">전남</option>
									<option value="14">광주</option>
									<option value="15">강원</option>
									<option value="16">제주</option>
							</select></td>
							<td class="center"><input type="text" id="Etc_1"
								name="Etc_1" value="" maxlength="60" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="SchType_1"
								name="SchType_1">
									<option value="" selected = "selected">======</option>
									<option value="1">재학</option>
									<option value="2">중퇴</option>
									<option value="3">수료</option>
									<option value="4">휴학</option>
									<option value="5">졸업</option>
							</select></td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><select id="ddlScholarship_2"
								name="ddlScholarship_2" style="width: 90px;">
									<option value="" selected = "selected">======</option>
									<option value="11">초등</option>
									<option value="12">중등</option>
									<option value="13">고등</option>
									<option value="14">대학</option>
									<option value="15">대학교</option>
									<option value="16">대학원(석사)</option>
									<option value="17">대학원(박사)</option>
							</select></td>
							<td class="center"><input type="text" id="SchoolName_2"
								name="SchoolName_2" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><input type="text" id="SDate_2"
								name="SDate_2" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><input type="text" id="EDate_2"
								name="EDate_2" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="DNType_2" name="DNType_2"
								style="width: 50px;">
									<option value="" selected="selected">===</option>
									<option value="1">주간</option>
									<option value="2">야간</option>
							</select></td>
							<td class="center"><input type="text" id="Major_2"
								name="Major_2" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><select id="local_2"
								name="local_2" style="width: 80px;">
									<option value=""  selected = "selected" >=======</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
									<option value="3">인천</option>
									<option value="4">충북</option>
									<option value="5">충남</option>
									<option value="6">대전</option>
									<option value="7">세종</option>
									<option value="8">경북</option>
									<option value="9">경남</option>
									<option value="10">대구</option>
									<option value="11">부산</option>
									<option value="12">전북</option>
									<option value="13">전남</option>
									<option value="14">광주</option>
									<option value="15">강원</option>
									<option value="16">제주</option>
							</select></td>
							<td class="center"><input type="text" id="Etc_2"
								name="Etc_2" value="" maxlength="60" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="SchType_2"
								name="SchType_2">
									<option value="" selected = "selected">======</option>
									<option value="1">재학</option>
									<option value="2">중퇴</option>
									<option value="3">수료</option>
									<option value="4">휴학</option>
									<option value="5">졸업</option>
							</select></td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><select id="ddlScholarship_3"
								name="ddlScholarship_3" style="width: 90px;">
									<option value="" selected = "selected">======</option>
									<option value="11">초등</option>
									<option value="12">중등</option>
									<option value="13">고등</option>
									<option value="14">대학</option>
									<option value="15">대학교</option>
									<option value="16">대학원(석사)</option>
									<option value="17">대학원(박사)</option>
							</select></td>
							<td class="center"><input type="text" id="SchoolName_3"
								name="SchoolName_3" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><input type="text" id="SDate_3"
								name="SDate_3" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><input type="text" id="EDate_3"
								name="EDate_3" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="DNType_3" name="DNType_3"
								style="width: 50px;">
									<option value="" selected="selected">===</option>
									<option value="1">주간</option>
									<option value="2">야간</option>
							</select></td>
							<td class="center"><input type="text" id="Major_3"
								name="Major_3" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><select id="local_3"
								name="local_3" style="width: 80px;">
									<option value=""  selected = "selected" >=======</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
									<option value="3">인천</option>
									<option value="4">충북</option>
									<option value="5">충남</option>
									<option value="6">대전</option>
									<option value="7">세종</option>
									<option value="8">경북</option>
									<option value="9">경남</option>
									<option value="10">대구</option>
									<option value="11">부산</option>
									<option value="12">전북</option>
									<option value="13">전남</option>
									<option value="14">광주</option>
									<option value="15">강원</option>
									<option value="16">제주</option>
							</select></td>
							<td class="center"><input type="text" id="Etc_3"
								name="Etc_3" value="" maxlength="60" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="SchType_3"
								name="SchType_3">
									<option value="" selected = "selected">======</option>
									<option value="1">재학</option>
									<option value="2">중퇴</option>
									<option value="3">수료</option>
									<option value="4">휴학</option>
									<option value="5">졸업</option>
							</select></td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><select id="ddlScholarship_4"
								name="ddlScholarship_4" style="width: 90px;">
									<option value="" selected = "selected">======</option>
									<option value="11">초등</option>
									<option value="12">중등</option>
									<option value="13">고등</option>
									<option value="14">대학</option>
									<option value="15">대학교</option>
									<option value="16">대학원(석사)</option>
									<option value="17">대학원(박사)</option>
							</select></td>
							<td class="center"><input type="text" id="SchoolName_4"
								name="SchoolName_4" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><input type="text" id="SDate_4"
								name="SDate_4" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><input type="text" id="EDate_4"
								name="EDate_4" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="DNType_4" name="DNType_4"
								style="width: 50px;">
									<option value="" selected="selected">===</option>
									<option value="1">주간</option>
									<option value="2">야간</option>
							</select></td>
							<td class="center"><input type="text" id="Major_4"
								name="Major_4" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><select id="local_4"
								name="local_4" style="width: 80px;">
									<option value=""  selected = "selected" >=======</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
									<option value="3">인천</option>
									<option value="4">충북</option>
									<option value="5">충남</option>
									<option value="6">대전</option>
									<option value="7">세종</option>
									<option value="8">경북</option>
									<option value="9">경남</option>
									<option value="10">대구</option>
									<option value="11">부산</option>
									<option value="12">전북</option>
									<option value="13">전남</option>
									<option value="14">광주</option>
									<option value="15">강원</option>
									<option value="16">제주</option>
							</select></td>
							<td class="center"><input type="text" id="Etc_4"
								name="Etc_4" value="" maxlength="60" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="SchType_4"
								name="SchType_4">
									<option value="" selected = "selected">======</option>
									<option value="1">재학</option>
									<option value="2">중퇴</option>
									<option value="3">수료</option>
									<option value="4">휴학</option>
									<option value="5">졸업</option>
							</select></td>
						</tr>

						<tr>
							<td class="center"><input class="checkbox" type="checkbox"
								id="chkRow" name="chkRow" /></td>
							<td class="center"><select id="ddlScholarship_5"
								name="ddlScholarship_5" style="width: 90px;">
									<option value="" selected = "selected">======</option>
									<option value="11">초등</option>
									<option value="12">중등</option>
									<option value="13">고등</option>
									<option value="14">대학</option>
									<option value="15">대학교</option>
									<option value="16">대학원(석사)</option>
									<option value="17">대학원(박사)</option>
							</select></td>
							<td class="center"><input type="text" id="SchoolName_5"
								name="SchoolName_5" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><input type="text" id="SDate_5"
								name="SDate_5" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><input type="text" id="EDate_5"
								name="EDate_5" value="" maxlength="8" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="DNType_5" name="DNType_5"
								style="width: 50px;">
									<option value="" selected="selected">===</option>
									<option value="1">주간</option>
									<option value="2">야간</option>
							</select></td>
							<td class="center"><input type="text" id="Major_5"
								name="Major_5" value="" maxlength="30" class="default"
								style="width: 90%;" /></td>
							<td class="center"><select id="local_5"
								name="local_5" style="width: 80px;">
									<option value=""  selected = "selected" >=======</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
									<option value="3">인천</option>
									<option value="4">충북</option>
									<option value="5">충남</option>
									<option value="6">대전</option>
									<option value="7">세종</option>
									<option value="8">경북</option>
									<option value="9">경남</option>
									<option value="10">대구</option>
									<option value="11">부산</option>
									<option value="12">전북</option>
									<option value="13">전남</option>
									<option value="14">광주</option>
									<option value="15">강원</option>
									<option value="16">제주</option>
							</select></td>
							<td class="center"><input type="text" id="Etc_5"
								name="Etc_5" value="" maxlength="60" class="default"
								style="width: 88%;" /></td>
							<td class="center"><select id="SchType_5"
								name="SchType_5">
									<option value="" selected = "selected">======</option>
									<option value="1">재학</option>
									<option value="2">중퇴</option>
									<option value="3">수료</option>
									<option value="4">휴학</option>
									<option value="5">졸업</option>
							</select></td>
						</tr>

					</tbody>
				</table>
				<br />
				<br /> <br /> <br />

			</div>
			<!--//contents-->
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