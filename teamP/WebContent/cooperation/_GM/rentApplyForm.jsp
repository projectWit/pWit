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
<script type="text/javascript"	src="/teamP/cooperation/_GM/script/calendar_beans_v2.0.js"	charset="utf-8"></script>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/_GM/script/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var url='GMFacil.jsp';
    $.get(url, function(data) {
   		responseText = data;
   		$('#fId').append(responseText);
    });
    var url2='GMSport.jsp';
    $.get(url2, function(data) {
   		responseText = data;
   		$('#sId').append(responseText);
    });
});
function SearchClub(id) {
	window.open("clubcheck.jsp?mId="+id, "", "width = 600px, height = 400px");
}
</script>
</head>
<body>

	<div id="content">
		<form name="frmInput" method="get" action=""
			enctype="multipart/form-data" onsubmit="return fncSave(this);">
			<input type="hidden" name="cId" id="cId" />
			<div class="hall_guide">
				<div id="tab_list02">
					<div class="hall_join">
						<fieldset style="border: 0 solid transparent;">
							<legend>온라인 대관신청</legend>
							<p id="text">대관 신청을 하시기 위해서 작성해야 하는 내용 입니다.</p>
							<p id="text">신청 후 1주일 안에 관리자가 허가여부를 결정합니다. 신청 후 1주일이 지나서 확인 부탁드립니다.</p>	
							<hr/>
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
										<td>${list.get(0).mName }</td>
									</tr>
									<tr>
										<th scope="row"><label for="team_name">단체명</label></th>
										<td><input type="text" class="input05" id="rCId"
											name="rCId" value="" />&nbsp;&nbsp;<img src="img/search_btn.gif" style="cursor:pointer;" onclick="SearchClub('${list.get(0).mId }')"/></td>
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
<script type="text/javascript">
	CalAddCss(); // !!제일 상단에 필수!!
	initCal({id : "rDate",	type : "day",	today : "y",icon : "y"	});
</script>
									<tr>
										<th scope="row">대관 사유</th>
										<td><input type="text" class="input05" id="rCause"
											name="rCause" style="width:450px;" /></td>
									</tr>
									<tr>
										<th scope="row">GM 시설 요금안내</th>
										<td>	
											<dl>
												<dt>GM 축구장 (VAT 별도)</dt>
												<dd>* 기본 2시간 80,000원</dd>
												<dd>* 초과 사용시 시간당 40,000원씩 추가</dd>
											</dl>
											<dl>
												<dt>GM 다목적홀 (VAT 별도)</dt>
												<dd>* 기본 2시간 36,000원</dd>
												<dd>* 초과 사용시 시간당 18,000원씩 추가</dd>
											</dl>
											<dl>
												<dt>GM 수영장 (VAT 별도)</dt>
												<dd>* 기본 2시간 36,000원</dd>
												<dd>* 초과 사용시 시간당 18,000원씩 추가</dd>
											</dl>
											<dl>
												<dt>부속시설 </dt>
												<dd>* 냉.난방(1시간) (24,000원)</dd>
												<dd>* 무선마이크(1개) (24,000원)</dd>
												<dd>* 빔프로젝트(1회) (36,000원)</dd>
											</dl>

											<p class="pTxt02">
												※ 요금납부는 <span>대관사용신청 승인을 받은 후</span><br/> 대관 일주일전까지 지정계좌번호로
												입금하여주시면 됩니다.
											</p>
											<ul>
												<li>&middot; 계좌번호 : (농협)111339-2417-03204876</li>
												<li>&middot; 예금주 : Wit 복지부</li>
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

