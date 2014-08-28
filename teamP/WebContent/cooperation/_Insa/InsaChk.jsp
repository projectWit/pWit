<%@page import="java.util.List"%>
<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%> 
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

<%
	InsaDAO dao = new InsaDAO();
	InsaDTO dto = new InsaDTO();
	String no = request.getParameter("no");
	List dtoL = dao.insaSelect();
	dto = (InsaDTO)dtoL.get(0);
%>
</head>
<body>
<form name = "insaFrm">
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
					<td><%=dto.geteId()%>
					</td>
					<th>성명</th>
					<td><%=dto.geteKName()%></td>
				</tr>
				<tr>
					<th>한문성명</th>
					<td><%=dto.geteCName()%></td>
					<th>영문성명</th>
					<td><%=dto.geteEName()%></td>
				</tr>
				<tr>
					<th>주민등록번호</th>
					<td><%=dto.geteJumin1()%>
						- <%=dto.geteJumin2()%></td>
					<th>세대주여부</th>
					<td><input value="1" name="HomeType" type="radio"
						id="HomeType1" />세대주&nbsp;<input value="2" name="HomeType"
						type="radio" id="HomeType2" checked="checked" />세대원</td>
				</tr>
				<tr>
					<th>입사일자</th>
					<td><%String str = dto.geteJoinDate(); String result = str.substring(0,10); out.print(result);%></td>
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
					<td><%=dto.geteDropDate()%></td>


					<th>퇴사사유</th>
					<td><%=dto.geteDropRsn()%></td>
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
					<td colspan="4"><%=dto.geteAddr2()%></td>
				</tr>

				<tr>
					<th>사진</th>
					<td colspan="4"><input name="file" type="file" id="file"
						class="graybox" size="70" style="height: 20px;" /></td>
				</tr>
				<tr>
					<th>이메일주소</th>
					<td colspan="4"><%=dto.geteEmail()%></td>
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

</form>
</body>
</html>