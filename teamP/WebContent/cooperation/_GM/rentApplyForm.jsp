<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>대관신청양식</title>
<link rel="stylesheet" type="text/css" href="teamP/cooperation/_GM/css/rentlayout.css"
	media="all" />
<link rel="stylesheet" type="text/css" href="teamP/cooperation/_GM/css/sub06.css" media="all" />
<style>
ul {
	list-style: none;
}
</style>
<script type="text/javascript" src="teamP/cooperation/common/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="teamP/cooperation/common/js/common.js"></script>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function() {
		var lm = new levelsmenu('levels', 07, 1);
		var tm = new topmenu('gNavi', 06, 07);
		var scquick = new scrollquick('quick', 1);
	})
</script>
</head>
<script type="text/javascript">
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
</script>
<body>
	<div id="content">
		<form name="frmInput" method="post" action=""
			enctype="multipart/form-data" onsubmit="return fncSave(this);">
			<div class="hall_guide">
				<div id="tab_list02">
					<div class="hall_join">
						<fieldset style="border: 0 solid transparent;">
							<legend>온라인 대관신청</legend>
							<table
								summary="온라인대관신청을 위해 신청자, 단체명, 일반전화, 휴대폰, 이메일, 사용기간, 시설명, 시설 요금안내로 구성 된 작성 폼 입니다."
								class="sComm_write01">

								<colgroup>
									<col width="100px;" />
									<col width="*;" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="userName">신청자</label></th>
										<td><input type="text" class="input03" id="userName"
											name="userName" value="" /></td>
									</tr>
									<tr>
										<th scope="row"><label for="team_name">단체명</label></th>
										<td><input type="text" class="input05" id="team_name"
											name="team_name" value="" /></td>
									</tr>
									<tr>
										<th scope="row"><label for="hphone1">휴대폰</label></th>
										<td><select title="통신사 선택" id="hphone1" name="hphone1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> - <input type="text" id="hphone2" class="input02"
											title="전화번호 두번째자리" name="hphone2" value="" maxlength="4" />
											- <input type="text" id="hphone3" class="input02"
											title="전화번호 마지막자리" name="hphone3" value="" maxlength="4" />
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="email1">이메일</label></th>
										<td><input type="text" class="input03" id="email1"
											title="이메일 아이디" name="email1" value="" /> @ <input
											type="text" class="input03" id="email2" title="이메일 계정"
											name="email2" value="" /> <select title="계정 선택" id="email3"
											name="email3"
											onchange="document.frmInput.email2.value=this.value; return false;">
												<option value="">직접입력</option>
												<option value="daum.net">daum.net</option>
												<option value="naver.com">naver.com</option>
												<option value="chol.com">chol.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="empal.com">empal.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hanafos.com">hanafos.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="hanmir.com">hanmir.com</option>
												<option value="hitel.net">hitel.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="korea.com">korea.com</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="nate.com">nate.com</option>
												<option value="netian.com">netian.com</option>
												<option value="paran.com">paran.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="yahoo.co.kr">yahoo.co.kr</option>
										</select></td>
									</tr>
									<tr>
										<th scope="row"><label for="sdate1">사용기간</label></th>
										<td class="font">
											<p>
												<select title="년도 선택" id="sdate1" name="sdate1">
													<option value="">연도선택</option>
													<option value="2014">2014</option>
													<option value="2015">2015</option>

												</select> <span class="sTxt">년</span> <select title="월 선택"
													id="sdate2" name="sdate2">
													<option value="">월선택</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>

												</select> <span class="sTxt">월</span> <select title="일 선택"
													id="sdate3" name="sdate3">
													<option value="">일자선택</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>

												</select> <span class="sTxt">일</span> <select title="시작 시간" id="sday"
													name="sday">
													<option value="">시간선택</option>
													<option value="09">09시</option>
													<option value="10">10시</option>
													<option value="11">11시</option>
													<option value="12">12시</option>
													<option value="13">13시</option>
													<option value="14">14시</option>
													<option value="15">15시</option>
													<option value="16">16시</option>
													<option value="17">17시</option>
													<option value="18">18시</option>
													<option value="19">19시</option>
													<option value="20">20시</option>
													<option value="21">21시</option>
													<option value="22">22시</option>

												</select> <span class="sTxt">부터</span>
											</p>
											<p class="pBox01">
												<select title="년도 선택" id="edate1" name="edate1">
													<option value="">연도선택</option>
													<option value="2014">2014</option>
													<option value="2015">2015</option>

												</select> <span class="sTxt">년</span> <select title="월 선택"
													id="edate2" name="edate2">
													<option value="">월선택</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>

												</select> <span class="sTxt">월</span> <select title="일 선택"
													id="edate3" name="edate3">
													<option value="">일자선택</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>

												</select> <span class="sTxt">일</span> <select title="종료 시간" id="eday"
													name="eday">
													<option value="">시간선택</option>
													<option value="09">09시</option>
													<option value="10">10시</option>
													<option value="11">11시</option>
													<option value="12">12시</option>
													<option value="13">13시</option>
													<option value="14">14시</option>
													<option value="15">15시</option>
													<option value="16">16시</option>
													<option value="17">17시</option>
													<option value="18">18시</option>
													<option value="19">19시</option>
													<option value="20">20시</option>
													<option value="21">21시</option>
													<option value="22">22시</option>

												</select> <span class="sTxt">까지</span>
											</p>
											<p class="pTxt01">
												* 매주 월요일은 대관 휴무입니다.<br />
												<!--* 온ㆍ오프라인으로 접수 받는 관계로 중복 신청이 될 수 있음. 결정통보는 2011년11월22일 예정임  <br /-->
											</p>
										</td>
									</tr>
									<tr>
										<th scope="row">시설명</th>
										<td><input type="radio" class="radio02" id="sisul1"
											name="sisul" value="다산홀" /><label for="sisul1">다목적실</label>
											<input type="radio" class="radio05" id="sisul2" name="sisul"
											value="강의실" /><label for="sisul2">GM축구장</label> <input
											type="radio" class="radio05" id="sisul3" name="sisul"
											value="연습실" /><label for="sisul3">GM족구장</label></td>
									</tr>
									<tr>
										<th scope="row">시설 요금안내</th>
										<td>
											<p class="pTxt01">
												<font color="blue"><b>토요일, 일요일, 법정공휴일은 20%할증된 금액이
														부과됩니다.</b></font>
											</p>
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
											</dl>

											<p class="pTxt02">
												※ 요금납부는 <span>대관사용신청 승인을 받은 후</span> 대관 일주일전까지 지정계좌번호로
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

						<span class="fRight01"> <input type="image"
							src="img/rent_apply.gif" alt="신청하기" /> <a href="#" class="aCan"><span
								class="blindtext">취소하기</span></a>
						</span>
					</div>
				</div>
				<dl class="dlTxt">
					<dt>
						<img src="img/txt_name.gif" alt="담당" />
					</dt>
					<dd>총무팀 민병욱</dd>
					<dt>
						<img src="img/txt_call.gif" alt="문의" />
					</dt>
					<dd class="last">031-231-7215</dd>
				</dl>
			</div>
		</form>
	</div>
</body>
</html>

