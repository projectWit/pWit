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
		window.open("qualification.jsp", "", "width = 800px, height = 600px");
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
	calendarIDs = [ 'DtIn','DtOut']; // 달력이 추가될 태그의 id
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
				img.style.width = '120px';
				img.style.height = '150px';
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
</head>
<body>

	<form method="post" id="form" enctype="multipart/form-data">
		
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>기본</strong>
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
						<td><span id="lblEmpCd"
							style="color: Red; font-weight: bold;">00001</span> <a href="#"
							id="btnCopyEmp" name="btnCopyEmp" class="link-blue"
							onclick="fnPopUp('EPD002P_20');">사원복사</a></td>
						<th>성명</th>
						<td><input name="KName" type="text" value="호날두"
							maxlength="50" id="KName" class="default"
							style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>한문성명</th>
						<td><input name="CName" type="text" maxlength="50"
							value="호날두" id="CName" class="default"
							style="width: 160px;" /></td>
						<th>영문성명</th>
						<td><input name="EName" type="text" maxlength="50"
							value="Ronaldo" id="EName" class="default"
							style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>주민등록번호</th>
						<td><input name="Jumin1" type="text" value="690929"
							maxlength="6" id="Jumin1" class="default" style="width: 50px;" />
							- <input name="Jumin2" type="text" value="2109126"
							maxlength="7" id="Jumin2" class="default" style="width: 50px;" /></td>
						<th>세대주여부</th>
						<td><input value="1" name="HouseType1" type="radio"
							id="HouseType1" />세대주&nbsp;<input value="2"
							name="HouseType2" type="radio" id="HouseType2"
							checked="checked" />세대원</td>
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
							value="002" class="rightnone" style="width: 46px;" value="002" /><a
							href="#"><img src="img/Find.gif" width="22px" height="19px"
								alt='직위/직급' onclick="PopUpPos()" /></a><input name="JobPos"
							type="text" id="JobPos" class="grayleft" style="width: 88px;"
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
						<td><input name="txtOutDes" type="text" maxlength="60"
							id="txtOutDes" class="default" style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>전화</th>
						<td><select>
								<option>02</option>
								<option>032</option>
								<option>031</option>
						</select> - <input type="tel" class="default" size=5 maxlength="4"
							required> - <input type="tel" class="default" size=5
							maxlength="4" required></td>
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
							href="#"><img src="img/Find.gif" width="22px" height="19px"
								alt="검색" onclick="PopUpDep()" /></a><input name="Dep" type="text"
							value="경영지원팀" readonly="readonly" id="Dep" class="graybox"
							style="width: 88px;" /></td>
						<td colspan="2"></td>
					</tr>

					<tr>
						<th>주소</th>
						<td colspan="4"><a href="#" id="PostNum" name="PostNum"
							class="link-blue">우편번호검색</a> <input name="PostNum1" type="text"
							maxlength="3" value="123" id="txtPostNo1" class="default"
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
						<th>사진 <img src="img/icon_smile.gif" width="14px"
							height="13px" /></th>
						<td colspan="4"><input type="file" name="Photo" id="Photo"
							onchange="previewImage(this,'View_area')" /></td>
					</tr>

					<tr>
						<th>이메일주소</th>
						<td colspan="4"><input type="text" name="email1" id="email1"
							class="default">@<input type="text" name="email2"
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
				</table>

				<!-- 개인파일함에서 추가한 항목 -->
				<!-- 2014-03-26 개인파일함 테이블 없앰 -->

				<div class="nav_tabM2">
					<ul>
						<li><a href="#">상벌사항</a></li>
						<li><a href="#">교육연수</a></li>
						<li><a href="#">출장사항</a></li>
						<li><a href="#">메모사항</a></li>
						<li><a href="#">근무실태</a></li>
						<li><a href="#">인사발령</a></li>
					</ul>
				</div>
		
				<br /> <br /> <br /> <br />
				<span class="btn gray"><input type="button"
					id="btnSave" name="btnSave" onclick="fnSave();" value="수정" /></span>			
				<!-- bsy start end-->
				<span class="btn gray"><input type="button" id="btnList"
					name="btnList" onclick="fnList();" value="리스트" /></span>
			</div>	

		</div>
		<!--//wrap-->

		<input type="hidden" name="hidEmpCd" id="hidEmpCd" value="00001" /> <input
			type="hidden" name="txtSchText" id="txtSchText" /> <input
			type="hidden" name="hidSort" id="hidSort" /> <input type="hidden"
			name="hidSortAd" id="hidSortAd" /> <input type="hidden"
			name="hidCurrentPage" id="hidCurrentPage" value="0" /> <input
			type="hidden" name="hidChkRetire" id="hidChkRetire" value="N" /> <input
			type="hidden" name="hidEditFlag" id="hidEditFlag" value="M" /> <input
			type="hidden" name="hidExistsUserPass" id="hidExistsUserPass"
			value="N" /> <a id="lnkImgDel"
			href="javascript:__doPostBack(&#39;lnkImgDel&#39;,&#39;&#39;)"></a> <a
			id="lnkFileDel"
			href="javascript:__doPostBack(&#39;lnkFileDel&#39;,&#39;&#39;)"></a>
		<input type="hidden" name="idKey" id="idKey" /> <input type="hidden"
			name="serNo" id="serNo" /> <input type="hidden" id="hidTab"
			name="hidTab" /> <input type="hidden" id="hidData" name="hidData" />
		<input type="hidden" id="hfApprovalDoc1Sub" name="hfApprovalDoc1Sub"
			value="" /> <input type="hidden" id="hidflcount" name="hidflcount"
			value="0" />
		<!-- 개인파일함 추가 수 -->
	</form>

	<form id="frmDetail">
		<input type="hidden" id="hidEmpCd" name="hidEmpCd" value="00001" /> <input
			type="hidden" id="hidEmpKname" name="hidEmpKname" value="이숙이" /> <input
			type="hidden" id="hidLinkType" name="hidLinkType" value="" /> <input
			type="hidden" id="RptGubun" name="RptGubun" value="5" /> <input
			type="hidden" id="hfApprovalDoc1" name="hfApprovalDoc1" value="" />
		<input type="hidden" id="hfApprovalDoc2" name="hfApprovalDoc2"
			value="" /> <input type="hidden" id="hfApprovalDoc3"
			name="hfApprovalDoc3" value="0" /> <input type="hidden"
			id="hidFileHistory" name="hidFileHistory" value="" /> <input
			type="hidden" id="hidReturnXml" name="hidReturnXml" value="" />
	</form>
</body>
</html>