<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="robots" content="noindex,nofollow">
<script type="text/javascript" src="jquery-2.1.1.js"></script>

<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout1.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />


<title>동호회 등록</title>


<meta name="viewport" content="width=device-width, initial-scale = 1">
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<script language="javascript" type="text/javascript">
	$(document)
			.ready(
					function() {

						//******************************************************************************
						// 상세검색 달력 스크립트
						//******************************************************************************
						var clareCalendar = {
							monthNamesShort : [ '1월', '2월', '3월', '4월', '5월',
									'6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
							dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
							weekHeader : 'Wk',
							dateFormat : 'yy-mm-dd', //형식(20120303)
							autoSize : false, //오토리사이즈(body등 상위태그의 설정에 따른다)
							changeMonth : true, //월변경가능
							changeYear : true, //년변경가능
							showMonthAfterYear : true, //년 뒤에 월 표시
							buttonImageOnly : true, //이미지표시
							buttonText : '달력선택', //버튼 텍스트 표시
							buttonImage : 'img/mini_calendar.gif', //이미지주소
							showOn : "both", //엘리먼트와 이미지 동시 사용(both,button)
							yearRange : '1980:2020' //1990년부터 2020년까지
						};
						$("#DtIn").datepicker(clareCalendar);
						$("#DtOut").datepicker(clareCalendar);
						$("#toDt").datepicker(clareCalendar);
						$("img.ui-datepicker-trigger")
								.attr("style",
										"margin-left:5px; vertical-align:middle; cursor:pointer;"); //이미지버튼 style적용
						$("#ui-datepicker-div").hide(); //자동으로 생성되는 div객체 숨김  
					});
	
</script>
</head>
<body>

	<form method="post" action="EPD002M.aspx?ec_req_sid=00HOCty8voui"
		id="form" enctype="multipart/form-data">
		<div id="wrap">
			<div class="new-title">
				<div class="title-leftarea">
					<strong>GM 동호회 등록</strong>
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
				<table summary="" class="entry H_15px" style="height:350px; font-size:16px;">
					<col width="20%" span="1" />
					<col width="20%" span="2" />
					<col width="20%" span="1" />
					<col width="30%" span="2" />
					<col width="" />
					<tr>
						<td rowspan="7" class="center white"><img id="imgEmpPhoto"
							src="img/trigger.jpg" style="height: 150px; width: 140px;" /></td>
						<th>등록번호</th>
						<td><span id="lblEmpCd"
							style="color: Red; font-weight: bold;">00001</span></td>
						<th>동호회명</th>
						<td><input name="txtEmpKname" type="text" value="Trigger"
							maxlength="50" id="txtEmpKname" class="default"
							style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>동호회 회장</th>
						<td><input name="txtEmpHname" type="text" maxlength="50"
							value="고쌤" id="txtEmpHname" class="default"
							style="width: 160px;" /></td>
						<th>동호회 총무</th>
						<td><input name="txtEmpEname" type="text" maxlength="50"
							value="고쌤2" id="txtEmpEname" class="default"
							style="width: 160px;" /></td>
					</tr>
					<tr>
						<th>가입일자</th>
						<td><input name="DtIn" type="text" id="DtIn" size="12"
							maxlength="8" value="" class="default"></td>
						<th>종목</th>

						<td><select>
							<option>축구</option>
							<option>탁구</option>
							<option>배구</option>
							<option>농구</option>
							<option>족구</option>
							<option>배드민턴</option>
							<option>태권도</option>
						</select></td>
					</tr>
					<tr>
						<th>회장 전화</th>
						<td><input name="txtTelNo" type="text" value="010-3096-0955"
							maxlength="20" id="txtTelNo" class="default"
							onkeydown="jsOnlyNumberKey4(this);"
							style="width: 160px; ime-mode: disabled" /></td>
						<th>총무 전화</th>
						<td><input name="txtHpNo1" type="text" maxlength="20"
							value="010-1234-8714" id="txtHpNo1" class="default"
							onkeydown="jsOnlyNumberKey4(this);"
							style="width: 160px; ime-mode: disabled" /></td>
					</tr>
					<tr>
						<th>홈페이지/블로그</th>
						<td colspan="3"><input type="text" maxlength="80"
							value="http://www.naver.com" id="txtEmpEname" class="default"
							style="width: 250px;" /></td>
						<!--  클래스 이름 수정 필요함 아이디와 -->
					</tr>

					<tr>
						<th>주소</th>
						<td colspan="4"><a href="#" id="btnSearchPostNo"
							name="btnSearchPostNo" class="link-blue"
							onclick="fnSearchZipCode('txtPostNo1','txtPostNo2','txtJuso','txtJuso');">우편번호검색</a>
						
							<input name="txtPostNo1" type="text" maxlength="3" value="123"
							id="txtPostNo1" class="default" style="width: 30px;" />-<input
							name="txtPostNo2" type="text" maxlength="3" id="txtPostNo2"
							value="123" class="default" style="width: 30px;" /><br /><br/> <textarea
								name="txtJuso" id="txtJuso" rows="3" wrap="virtual" cols="86"
								class="default" style="width: 300px">경기도 고양시 덕양구 화정동</textarea></td>
					</tr>

					<tr>
						<th>엠블럼 <a href="javascript:;"
							onclick="alert('권장 사진 크기\n가로:140픽셀(3.7 Cm)\n높이:150픽셀(3.8 Cm)');"><img
								src="img/icon_q.jpg" width="14px"
								height="13px" alt="" /></a></th>
						<td colspan="4"><input name="file" type="file" id="file"
							class="graybox" size="70" style="height: 20px;" /></td>
					</tr>
				</table>
				<br/>
				<div style="text-align:center">
				<img src="img/bt_submit.jpg" />&nbsp;&nbsp;&nbsp;<img src="img/bt_cancle.jpg"/>
				</div>
				<br /> <br /> <br /> <br />
			</div>
			<!--//contents-->
		</div>
		<!--//wrap-->
	
</body>
</html>