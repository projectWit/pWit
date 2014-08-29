<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>대관신청양식</title>
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_GM/css/rentlayout.css"
	media="all" />
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_GM/css/sub06.css" media="all" />
<style>
ul {
	list-style: none;
}
#text{
	font-size: 12px;
}
</style>
<script type="text/javascript" src="teamP/cooperation/common/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="teamP/cooperation/common/js/common.js"></script>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function() {
	var url='GMFacil.jsp';
    $.get(url, function(data) {
    	responseText = data;
    	$('#fId').append(responseText);
    });
});
</script>
</head>
<!-- <script type="text/javascript">
	function fncSave(form) {

		if (form.agree[1].checked == true) {
			alert("개인정보 수집에 동의하지 않으셨으므로 등록할 수 없습니다.");
			return false;
		}
		if (form.agree[0].checked == false) {
			alert("개인정보 수집에 동의해주세요.");
			return false;
		}
		if (form.userName.value == "") {
			alert("신청자 이름이 입력되지 않았습니다.");
			form.userName.focus();
			return false;
		}
		if (form.team_name.value == "") {
			alert("단체명이 입력되지 않았습니다.");
			form.team_name.focus();
			return false;
		}
		if (form.tel2.value == "") {
			alert("일반전화번호가 입력되지 않았습니다.");
			form.tel2.focus();
			return false;
		}
		if (form.tel3.value == "") {
			alert("일반전화번호가 입력되지 않았습니다.");
			form.tel3.focus();
			return false;
		}
		if (form.hphone2.value == "") {
			alert("휴대폰번호가 입력되지 않았습니다.");
			form.hphone2.focus();
			return false;
		}
		if (form.hphone3.value == "") {
			alert("휴대폰번호가 입력되지 않았습니다.");
			form.hphone3.focus();
			return false;
		}

		if (form.email1.value == "") {
			alert("이메일주소가 입력되지 않았습니다.");
			form.email1.focus();
			return false;
		}
		if (form.email2.value == "") {
			alert("이메일주소가 입력되지 않았습니다.");
			form.email2.focus();
			return false;
		}

		if (form.sdate1.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.sdate1.focus();
			return false;
		}
		if (form.sdate2.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.sdate2.focus();
			return false;
		}
		if (form.sdate3.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.sdate3.focus();
			return false;
		}
		if (form.sday.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.sday.focus();
			return false;
		}

		if (form.edate1.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.edate1.focus();
			return false;
		}
		if (form.edate2.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.edate2.focus();
			return false;
		}
		if (form.edate3.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.edate3.focus();
			return false;
		}
		if (form.eday.value == "") {
			alert("사용기간이 입력되지 않았습니다.");
			form.eday.focus();
			return false;
		}

		if (form.sisul[0].checked == false && form.sisul[1].checked == false
				&& form.sisul[2].checked == false) {
			alert("시설이 선택되지 않았습니다.");
			return false;
		}

		return true;
	}
</script> -->
<body>
	<div id="content">
		<form name="frmInput" method="get" action=""
			enctype="multipart/form-data" onsubmit="return fncSave(this);">
			<div class="hall_guide">
				<div id="tab_list02">
					<div class="hall_join">
						<fieldset style="border: 0 solid transparent;">
							<legend>온라인 대관신청</legend>
							<p id="text">대관 신청을 하시기 위해서 작성해야 하는 내용 입니다.</p>
							<p id="text">신청 후 1주일 안에 관리자가 허가여부를 결정합니다. 신청 후 1주일이 지나서 확인 부탁드립니다.</p>
							<table
								summary="온라인대관신청을 위해 신청자, 단체명, 일반전화, 휴대폰, 이메일, 사용기간, 시설명, 시설 요금안내로 구성 된 작성 폼 입니다."
								class="sComm_write01">

								<colgroup>
									<col width="100px;" />
									<col width="*;" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="cPresident">신청자</label></th>
										<td><input type="text" class="input03" id="cPresident"
											name="cPresident" /></td>
									</tr>
									<tr>
										<th scope="row"><label for="team_name">단체명</label></th>
										<td><input type="text" class="input05" id="rCId"
											name="rCId" value="" /></td>
									</tr>
									<tr>
										<th scope="row"><label for="fId">시설명</label></th>
										<td><select title="시설 선택" id="fId" name="fId">
										</select>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="sId">종목</label></th>
										<td><select id="sId" name="sId">												
										</select></td>
									</tr>
									<tr>
										<th scope="row"><label for="rDate">사용일</label></th>
										<td class="font"><input type="text"  id="rDate" name="rDate"  />
										
											<p class="pTxt01">
												* 매주 월요일은 대관 휴무입니다. 신청이 가능해도 허가가 되지 않으니 주의하시기 바랍니다.<br />
												<!--* 온ㆍ오프라인으로 접수 받는 관계로 중복 신청이 될 수 있음. 결정통보는 2011년11월22일 예정임  <br /-->
											</p>
										</td>
									</tr>
									<tr>
										<th scope="row">대관 사유</th>
										<td><input type="text" class="input05" id="rCause"
											name="rCause" style="width:450px;" /></td>
									</tr>
									<tr>
										<th scope="row">GM 시설 요금안내</th>
										<td>
											<!-- 전체 시설 정보 불러오기 혹은 선택한 시설 정보 가져오기 		
											<dl>
												<dt>다산홀 (VAT 별도)</dt>
												<dd>* 기본 2시간 80,000원</dd>
												<dd>* 초과 사용시 시간당 40,000원씩 추가</dd>
											</dl>
											<dl>
												<dt>강의실 (VAT 별도)</dt>
												<dd>* 기본 2시간 36,000원</dd>
												<dd>* 초과 사용시 시간당 18,000원씩 추가</dd>
											</dl>
											<dl>
												<dt>연습실 (VAT 별도)</dt>
												<dd>* 기본 2시간 36,000원</dd>
												<dd>* 초과 사용시 시간당 18,000원씩 추가</dd>
											</dl>
											<dl>
												<dt>부속시설 (VAT 별도)</dt>
												<dd>* 냉.난방(1시간) (24,000원)</dd>
												<dd>* 무선마이크(1개) (24,000원)</dd>
												<dd>* 빔프로젝트(1회) (36,000원)</dd>
												<dd>* 피아노(1회) (60,000원)</dd>
											</dl> -->

											<p class="pTxt02">
												※ 요금납부는 <span>대관사용신청 승인을 받은 후</span><br/> 대관 일주일전까지 지정계좌번호로
												입금하여주시면 됩니다.
											</p>
											<ul>
												<li>&middot; 계좌번호 : (농협)1109-17-004876</li>
												<li>&middot; 예금주 : 경기문화재단</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</fieldset>

						<span class="fRight01"> <input type="image"	src="img/rent_apply.gif" onclick="sendSubmit()" style="float:right;" alt="신청하기" />
						</span>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

