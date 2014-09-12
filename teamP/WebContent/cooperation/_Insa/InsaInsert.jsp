<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="robots" content="noindex,nofollow">
<script type="text/javascript" src="jquery-2.1.1.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>

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
	function PopUpPos() {
		window.open("InsaPos.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpCd() {
		window.open("InsaTypeCd.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpZip() {
		window.open("zipCheck.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpDuty() {
		window.open("InsaDuty.jsp", "", "width = 500px, height = 300px");
	}
	function PopUpDep() {
		window.open("InsaDep.jsp", "", "width = 500px, height = 300px");
	}
	$(document).ready(function(e) {
		findInput();
	});
	function findInput() {
		$('form input[type="text"], form textarea').eq(0).focus();
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

<!-- 이미지업로드 -->
<script type="text/javascript">
	function previewImage(targetObj, View_area) {
		var preview = document.getElementById(View_area); // td id
		var ua = window.navigator.userAgent;

		//ie일때(IE8 이하에서만 작동)
		if (ua.indexOf("MSIE") > -1) {
			targetObj.select();
			try {
				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
				var ie_preview_error = document
						.getElementById("ie_preview_error_" + View_area);

				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(View_area); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
						+ src + "', sizingMethod='scale')";
			} catch (e) {
				if (!document.getElementById("ie_preview_error_" + View_area)) {
					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + View_area;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
			//ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for (var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
				if (prevImg) {
					preview.removeChild(prevImg);
				}
				var img = document.createElement("img");
				img.id = "prev_" + View_area;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '150px';
				img.style.height = '180px';
				preview.appendChild(img);
				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				} else { // safari is not supported FileReader
					//alert('not supported FileReader');
					if (!document.getElementById("sfr_preview_error_"
							+ View_area)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + View_area;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}
//-->
</script>
<title>사원(담당)등록</title>

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

<meta name="viewport" content="width=device-width, initial-scale = 1">
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css">
<link rel="stylesheet" type="text/css" href="../css/calendar.css">
<script type="text/javascript">
	calendarIDs = [ 'DtIn', 'DtOut' ]; // 달력이 추가될 태그의 id

	$(document).ready(function(e) {
		findInput();
	});
	function findInput() {
		$('form input[type="text"], form textarea').eq(0).focus();
	}

	$(document).ready(function() {
		var url = 'hId.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#hId').append(responseText);
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		var url = 'TelCd.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#eTel').append(responseText);
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		var url = 'MobileCd.jsp';
		$.get(url, function(data) {
			responseText = data;
			$('#eMobile').append(responseText);
		});
	});
</script>
</head>
<body>
	<form method="post" id="form" action = "InsaInsertPro.jsp" name = "member_zipForm"  enctype="multipart/form-data">
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>인사등록</strong>
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
						<td rowspan="10" class="center white" id="View_area"></td>
						<th>사원번호</th>
						<td><input type="text" name="eId" id="eId"
							class="default" /></td>
						<th>성명</th>
						<td><input name="eKName" type="text" 
							maxlength="20" id="eKName" class="default" style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>한문성명</th>
						<td><input name="eCName" type="text" maxlength="50"
							id="eCName" class="default" style="width: 160px;" /></td>
						<th>영문성명</th>
						<td><input name="eEName" type="text" maxlength="50"
							 id="eEName" class="default" style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>주민등록번호</th>
						<td><input name="eJumin1" type="text" 
							maxlength="6" id="eJumin1" class="default" style="width: 50px;" />
							- <input name="eJumin2" type="text" maxlength="7"
							id="eJumin2" class="default" style="width: 50px;" /></td>
						<th>세대주여부</th>
						<td id="hId"></td>
					</tr>
					<tr>
						<th>입사일자</th>
						<td><input name="eJoinDate" type="text" id="DtIn" size="12"
							maxlength="8" value="" class="default"></td>
						<th>입사구분</th>
						<td><input name="eInTypeCd" type="text" id="eInTypeCd"
							class="rightnone" style="width: 46px;" /><a href="#"><img
								src="img/Find.gif" width="22px" height="19px" alt='입사구분'
								onclick="PopUpCd()" /></a><input name="InType" type="text"
							id="InType" class="grayleft" style="width: 88px;"
							readonly="readonly" /></td>
					</tr>

					<tr>
						<th>직위/직급</th>
						<td><input name="ePosCd" type="text" id="ePosCd" 
							class="rightnone" style="width: 46px;" /><a href="#"><img
								src="img/Find.gif" width="22px" height="19px" alt='직위/직급'
								onclick="PopUpPos()" /></a><input name="JobPos" type="text"
							id="JobPos" class="grayleft" style="width: 88px;"
							readonly="readonly"  /></td>

						<th>직책</th>

						<td><input name="eDutyCd" type="text" id="eDutyCd" 
							class="rightnone" style="width: 46px;" /><a href="#"><img
								src="img/Find.gif" width="22px" height="19px" alt='직책'
								onclick="PopUpDuty()" /></a><input name="DutyName" type="text"
							id="DutyName" class="grayleft" style="width: 88px;"
							readonly="readonly" /></td>
					</tr>

					<tr>
						<th>퇴사일자</th>
						<td><input name="eDropDate" type="text" id="DtOut" size="12"
							maxlength="8" value="" class="default"></td>


						<th>퇴사사유</th>
						<td><input name="eDropRsn" type="text" maxlength="60"
							id="OutReason" class="default" style="width: 160px;" /></td>
					</tr>


					<tr>
						<th>전화</th>
						<td><select name="eTel" id="eTel">

						</select> - <input type="tel" name="eTel2" class="default" size=5
							maxlength="4" required> - <input type="tel" name="eTel3"
							class="default" size=5 maxlength="4" required></td>

						<th>핸드폰</th>
						<td><select id="eMobile" name="eMobile">

						</select> - <input type="tel" class="default" size=5 maxlength="4"
							name="eMobile2" required> - <input type="tel"
							name="eMobile3" class="default" size=5 maxlength="4" required></td>
					</tr>
					<tr>
						<th>부서코드</th>
						<td><input name="eDepCd" type="text" 
							maxlength="14" id="eDepCd" class="blue_zoom" style="width: 46px;" /><a
							href="#"><img src="img/Find.gif" width="22px" height="19px"
								alt="검색" onclick="PopUpDep()" /></a><input name="Dep" type="text"
							readonly="readonly" id="Dep" class="graybox"
							style="width: 88px;" /></td>
						<td colspan="2"></td>
					</tr>

					<input type = "hidden" name = "seq"/>
					<tr>
						<th>주소</th>
						<td colspan="4"><a href="#" onclick = "PopUpZip()" id="ePostNum" name="ePostNum"
							class="link-blue">우편번호검색</a> <input name="PostNum1" type="text"
							maxlength="8" id="txtPostNo1" class="default" style = "width : 60px"
							style="width: 30px;" /><br /> <input type="text" name="Addr1"
							id="Addr1" class="default" style="width: 300px"
							/></td>
					</tr>

					<tr>
						<th>상세주소</th>
						<td colspan="4"><input type="text" class="default"
							name="eAddr2" id="eAddr2" style="width: 80%" /></td>
					</tr>

					<tr>
						<th>사진 <img src="img/icon_smile.gif" width="14px"
							height="13px" /></th>
						<td colspan="4"><input type="file" name="ePhoto" id="ePhoto"
							onchange="previewImage(this,'View_area')" /></td>
					</tr>

					<tr>
						<th>이메일주소</th>
						<td colspan="4"><input type="text" name="eEmail1" id="email1"
							class="default">@<input type="text" name="eEmail2"
							id="email2" class="default" required><select
							id="select_email" onChange="input_email()">
								<option value="0">직접 입력</option>
								<option value="1">gmail.com</option>
								<option value="2">hanmail.net</option>
								<option value="3">naver.com</option>
								<option value="4">hotmail.com</option>
								<option value="5">msn.com</option>
								<option value="6">nate.com</option>
								<option value="7">cyworld.com</option>
						</select></td>
					</tr>

					<tr>
						<th>비밀번호</th>
						<td colspan="4"><input type="password" name="ePwd" id="ePwd"
							class="default"></td>
					</tr>
				</table>

				<br /> <br /> <br /> <br /> <span class="btn gray"><input
					type="submit" id="btnSave" name="btnSave" 
					value="저장(F8)" /></span>

			</div>

		</div>
	</form>
</body>
</html>