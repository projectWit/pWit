<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="robots" content="noindex,nofollow">
<script type="text/javascript" src="jquery-2.1.1.js"></script>

<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />


<title>사원(담당)등록</title>
<script type="text/javascript">
	//팝업창
	function PopUpPer() {
		window.open("Personal.jsp", "", "width = 800px, height = 600px");
	}
	function PopUpCar() {
		window.open("Career.jsp", "", "width = 800px, height = 600px");
	}
	function PopUpQual() {
		window.open("Qual.jsp", "", "width = 800px, height = 600px");
	}
	function PopUpSch() {
		window.open("School.jsp", "", "width = 800px, height = 600px");
	}
	function PopUpFam() {
		window.open("family.jsp", "", "width = 800px, height = 600px");
	}
	function PopUpLan() {
		window.open("Language.jsp", "", "width = 800px, height = 600px");
	}
	function PopUpPos() {
		window.open("InsaPos.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpCd() {
		window.open("InsaTypeCd.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpDuty() {
		window.open("InsaDuty.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpDep() {
		window.open("InsaDep.jsp", "", "width = 500px, height = 300px");
	}

	function input_email() {
		var text = $('#select_email option:selected').text();
		var value = $('#select_email option:selected').val();
		//	alert(value);
		if (value > 0) {
			$('#email2').val(text);
		} else {
			$('#email2').val('');
		}
	}
</script>
<style type="text/css">
.nav_tabM,.nav_tabM2 {
	width: 100%;
	height: 30px;
	padding: 13px 0 0 0;
	background: url(/ECMain/ECount.Common/img/Tap_BG.gif) repeat-x bottom;
}

.nav_tabM ul,.nav_tabM2 ul {
	font-family: dotum, Tahoma, Arial;
	font-size: 12px;
	font-weight: bold;
	margin: 0;
	padding: 0;
	list-style: none;
	text-align: center
}

.nav_tabM li,.nav_tabM2 li {
	display: inline;
	margin: 0;
	padding: 0;
}

.nav_tabM a,.nav_tabM2 a {
	display: inline-block;
	height: 23px;
	margin: 7px 2px 0 0;
	padding: 0 18px;
	vertical-align: bottom;
	line-height: 24px;
	letter-spacing: 0.5px;
	border-right: 1px solid #8fa5ba;
	background: url(/ECMain/ECount.Common/img/Tapoff_left.gif) repeat-x left
		bottom;
}

.nav_tabM2 a {
	margin: 7px 2px 0 0;
	padding: 0 30px;
}

.nav_tabM a:hover,.nav_tabM2 a:hover {
	display: inline-block;
	margin: 1px 2px 0 0;
	padding: 0 18px;
	height: 29px;
	vertical-align: bottom;
	font-weight: bold;
	line-height: 28px;
	color: #000;
	letter-spacing: 0.5px;
	border-right: 1px solid #8fa5ba;
	background: url(/ECMain/ECount.Common/img/Tapon_left.gif) repeat-x left
		bottom;
}

.nav_tabM2 a:hover {
	margin: 1px 2px 0 0;
	padding: 0 30px;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />
<script type="text/javascript">
	calendarIDs = [ 'DtIn', 'DtOut' ]; // 달력이 추가될 태그의 id
</script>
</head>
<body>
	<div class="aspNetHidden">
		<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
		<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
			value="" /> <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
			value="/wEPDwULLTE4NTI3MjgxNjkPZBYCZg9kFhpmDw8WAh4ISW1hZ2VVcmwFUy9FQ01haW4vRUNvdW50LkNvbW1vbi9Bc3B4SW1hZ2UvaW5zYUltYWdlLmFzcHg/ZWNfcmVxX3NpZD0wMEhPQ3R5OHZvdWkmZW1wX2NkPTAwMDAxZGQCAg8PFgIeBFRleHQFBTAwMDAxZGQCCA8WAh4IZGlzYWJsZWRkZAIKDw8WFh4KWWVhclN0cmluZwUEMjAxMh4HQ3VsdHVyZQUFa28tS1IeDG51bVllYXJTdGFydAKKDx4JTW9udGhOYW1lBQ9kZGxJbkRhdGVfTW9udGgeCURheVN0cmluZwUCMDMeCm51bVllYXJFbmQC3w8eCFllYXJaZXJvaB4LTW9udGhTdHJpbmcFAjAzHghZZWFyTmFtZQUOZGRsSW5EYXRlX1llYXIeB0RheU5hbWUFDWRkbEluRGF0ZV9EYXkeCU1vbnRoWmVyb2hkZAIRDw8WFh8DZR8EBQVrby1LUh8FAtoPHwYFEGRkbE91dERhdGVfTW9udGgfB2UfCALeDx8JZx8KZR8LBQ9kZGxPdXREYXRlX1llYXIfDAUOZGRsT3V0RGF0ZV9EYXkfDWdkZAIXDw9kFgQeCG9uY2hhbmdlBSBzZWFyY2hfY29kZSgnc2l0ZScsICcnLCAnJywgJycpOx4Kb25kYmxjbGljawUmc2VhcmNoX2NvZGUoJ3NpdGUnLCAnJywgJycsICdzZWFyY2gnKTtkAhgPDxYCHwEFD+qyveyYgeyngOybkO2MgGRkAh4PDxYCHwEFDOq4sOyXheydgO2WiWRkAiMPFgIeCWlubmVyaHRtbAU66rK964KoIOq5gO2VtOyLnCDsgrzrsKnrj5kgMjktNOuyiOyngCANCuq0keyYpeu5jOudvDUwMu2YuGQCJQ8WAh4Ec2l6ZQUCNzBkAiYPFgQfEAUM7IKs7KeE7IKt7KCcHgdWaXNpYmxlaGQCKA8WAh8SaGQCKQ8WAh4FdmFsdWUFBuyCreygnGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgMFDmNoa0hvbGRlclR5cGUxBQ5jaGtIb2xkZXJUeXBlMgUNY2hrVXNlcnBheUNoaw==" />
	</div>


	<div id="wrap">
		<div class="new-title">
			<div class="title-leftarea">
				<strong>인사기록표</strong>
			</div>
			<div class="title-rightarea">
				<span class="btn-setting" onclick="fnShowOption(); return false"></span>
				<!-- 옵션레이어 -->
				<ul class="option_box_new">
					<li><a onclick="EtcCodeClick();">추가항목등록</a></li>
				</ul>
			</div>
		</div>

		<div id="contents">
			<table summary="" class="entry H_15px">
				<col width="20%" span="1" />
				<col width="20%" span="2" />
				<col width="20%" span="1" />
				<col width="30%" span="2" />
				<col width="" />
				<tr>
					<td rowspan="10" class="center white"><img id="imgEmpPhoto"
						src="img/ronaldo1.jpg" style="height: 150px; width: 140px;" /></td>
					<th>사원번호</th>
					<td><span id="lblEmpCd" style="color: Red; font-weight: bold;">00001</span>
						<a href="#" id="btnCopyEmp" name="btnCopyEmp" class="link-blue"
						onclick="fnPopUp('EPD002P_20');">사원복사</a></td>
					<th>성명</th>
					<td><input name="KorName" type="text" value="호날두"
						maxlength="50" id="KorName" class="default" style="width: 160px;" /></td>
				</tr>
				<tr>
					<th>한문성명</th>
					<td><input name="ChiName" type="text" maxlength="50"
						value="호날두" id="ChiName" class="default" style="width: 160px;" /></td>
					<th>영문성명</th>
					<td><input name="EngName" type="text" maxlength="50"
						value="Ronaldo" id="EngName" class="default" style="width: 160px;" /></td>
				</tr>
				<tr>
					<th>주민등록번호</th>
					<td><input name="Jumin1" type="text" value="690929"
						maxlength="6" id="Jumin1" class="default" style="width: 50px;" />
						- <input name="Jumin2" type="text" value="2109126" maxlength="7"
						id="Jumin2" class="default" style="width: 50px;" /></td>
					<th>세대주여부</th>
					<td><input value="1" name="HomeType" type="radio"
						id="HomeType1" />세대주&nbsp;<input value="2" name="HomeType"
						type="radio" id="HomeType2" checked="checked" />세대원</td>
				</tr>
				<tr>
					<th>입사일자</th>
					<td><input name="DtIn" type="text" id="DtIn" size="12"
						maxlength="8" value="" class="default"></td>
					<th>입사구분</th>

					<td><input name="InTypeCd" type="text" id="InTypeCd"
						value="02" class="rightnone" style="width: 46px;" /><a href="#"><img
							src="img/Find.gif" width="22px" height="19px" alt='입사구분'
							onclick="PopUpCd()" /></a><input name="InType" type="text"
						id="InType" class="grayleft" value="신입" style="width: 88px;"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<th>직위/직급</th>

					<td><input name="JobPosCd" type="text" id="JobPosCd"
						value="002" class="rightnone" onblur="BlurColor2(this);"
						style="width: 46px;" value="002" /><a href="#"><img
							src="img/Find.gif" width="22px" height="19px" alt='직위/직급'
							onclick="PopUpPos()" /></a><input name="JobPos" type="text"
						id="JobPos" class="grayleft" style="width: 88px;"
						readonly="readonly" value="대리" /></td>
					<th>직책</th>

					<td><input name="JobDutyCd" type="text" id="JobDutyCd"
						value="01" class="rightnone" style="width: 46px;" /><a href="#"><img
							src="img/Find.gif" width="22px" height="19px" alt='직책'
							onclick="PopUpDuty()" /></a><input name="JobDuty" type="text"
						id="JobDuty" value="팀원" class="grayleft" style="width: 88px;"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<th>퇴사일자</th>
					<td><input name="DtOut" type="text" id="DtOut" size="12"
						maxlength="8" value="" class="default"></td>


					<th>퇴사사유</th>
					<td><input name="OutReason" type="text" maxlength="60"
						id="OutReason" class="default" style="width: 160px;" /></td>
				</tr>
				<tr>
					<th>전화</th>
					<td><select>
							<option>02</option>
							<option>032</option>
							<option>031</option>
					</select> - <input type="tel" class="default" size=5 maxlength="4" required>
						- <input type="tel" class="default" size=5 maxlength="4" required></td>
					<th>핸드폰</th>
					<td><select>
							<option>010</option>
							<option>011</option>
							<option>017</option>
					</select> - <input type="tel" class="default" size=5 maxlength="4" required>
						- <input type="tel" class="default" size=5 maxlength="4" required></td>
				</tr>
				<tr>
					<th>부서코드</th>
					<td><input name="DepCd" type="text" value="00002"
						maxlength="14" id="DepCd" class="blue_zoom" style="width: 46px;" /><a
						href="#"><img src="img/Find.gif" id="imgSearchEmpSite"
							width="22px" height="19px" alt="검색" onclick="PopUpDep()" /></a><input
						name="Dep" type="text" value="경영지원팀" readonly="readonly" id="Dep"
						class="graybox" style="width: 88px;" /></td>
					<td colspan="2"></td>
				</tr>

				<tr>
					<th>주소</th>
					<td colspan="4"><a href="#" id="PostNum" name="PostNum"
						class="link-blue">우편번호검색</a> <input name="PostNum1" type="text"
						maxlength="3" value="123" id="PostNum1" class="default"
						style="width: 30px;" />-<input name="PostNum2" type="text"
						maxlength="3" id="PostNum2" value="123" class="default"
						style="width: 30px;" /><br /> <input type="text" name="Addr1"
						id="Addr1" class="default" style="width: 300px"
						value="경남 김해시 삼방동 29-4번지" /></td>
				</tr>

				<tr>
					<th>상세주소</th>
					<td colspan="4"><input type="text" class="default"
						name="Addr2" id="Addr2" value="광옥빌라502호" style="width: 80%" /></td>
				</tr>

				<tr>
					<th>사진 <a href="javascript:;"
						onclick="alert('권장 사진 크기\n가로:140픽셀(3.7 Cm)\n높이:150픽셀(3.8 Cm)');"><img
							src="img/icon_smile.gif" width="14px" height="13px" alt="" /></a></th>
					<td colspan="4"><input name="file" type="file" id="file"
						class="graybox" size="70" style="height: 20px;" /></td>
				</tr>
				<tr>
					<th>이메일주소</th>
					<td colspan="4"><input type="text" name="email1" id="email1"
						class="default">@<input type="text" name="email2"
						id="email2" class="default" ></td>
				</tr>

				
			</table>
			<div class="nav_tabM">
					<ul>
						<li><a href="#" onclick="PopUpPer();return false;">신상명세서</a></li>
						<li><a href="#" onclick="PopUpSch();return false;">학력사항</a></li>
						<li><a href="#" onclick="PopUpCar();return false;">경력사항</a></li>
						<li><a href="#" onclick="PopUpFam();return false;">가족사항</a></li>
						<li><a href="#" onclick="PopUpQual();return false;">자격ㆍ면허</a></li>
						<li><a href="#" onclick="PopUpLan();return false;">외국어</a></li>
					</ul>
				</div>
			<br /> <br /> <br /> <br /> <span class="btn gray"><input
				type="button" id="btnSave" name="btnSave" onclick="fnSave();"
				value="수정" /></span>

		</div>
	</div>


</body>
</html>