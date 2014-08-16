<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>반갑습니다. WIT의 회원이 되시면 더 많은 혜택이 기다리고 있습니다.</title>
<jsp:include page="WIT_Reg_header.jsp"></jsp:include>
<style type="text/css">
* {
	font-family: "맑은 고딕";
}

section {
	position: relative;
//	top: 30px;
	min-width: 1030px;
	width: 1190px;
//	left: 100px;
//	height: 100%;
	overflow: auto;
	z-index: 100;
}

article {
//	left: 250px;
	margin-left: 10%;
	width: 75%;
	height: 100%;
	font-size: 12px;
}

#subTitle {
	margin-top: 0px;
	margin-bottom: 0px;
	padding: 10px;
	border-bottom: 2px solid #000;
	font-size: 24px;
}

p {
	display: inline;
	font-size: 12px;
}

#p1 {
	float: left;
	padding-left: 20px;
	padding-top: 10px;
	padding-bottom: 10px
}

#p2 {
	float: right;
	padding-right: 20px;
	padding-top: 10px;
	padding-bottom: 10px
}

#p3 {
	margin-top: 5px;
	padding-left: 20px;
//	border: 1px solid red;
}

.common {
	clear: both;
	list-style: none;
	margin-left: 10px;
	margin-right: 10px;
	padding-left: 10px;
	padding-top: 5px;
	border-top: 2px solid #999;
	font-size: 12px;
}

.common li {
	margin-top: 3px;
	height: 25px;
}

.necessary {
	clear: both;
	left: 15px;
	color: red;
	width: 5px;
	float: left;
	padding-top: 5px;
}

.labeling {
//	clear: both;
	width: 60px;
	float: left;
	padding-left: 10px;
	padding-top: 5px;
}

.align_center {
	text-align: center;
}

#address {
	width: 570px;
	height: 83px;
	float: left;
}

.addr {
	margin-top: 3px;
}

.schoolLevel {
	width: 390px;
	display: inline;
}

#selectGradeFirstly {
	color: #cccccc;
	padding-top: 5px;
}

#li_textBook {
	margin-top: 30px;
}

#textBookList {
	padding-left: 20px;
}

.imgDelete {
	width: 12px;
	height: 12px;
}

a {
	text-decoration: none;
}

.liner {
	vertical-align: sub;
}

.textline {
	margin-top: 5px;
}
</style>
<script src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script src="/teamP/cooperation/script/ajax.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		open_menu('#emp_menu', '.manage_employee', 'empActOn');
		open_menu('', '.add_emp', 'nav_li_a_actOn');
	});
	function open_menu(element, obj, className) {
		$(element).fadeToggle(500);
		$(obj).toggleClass(className);
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
	function show_emp() {
		var value = $('#select_type option:selected').val();
		if (value == 0) { // teacher
			$('#teacher').show(0);
			$('#regular').hide(0);
		} else { // regular
			$('#teacher').hide(0);
			$('#regular').show(0);
		}
	}
	function findPost() {
		window.open("apiPostFind.jsp", "에라 모르겠다", "width=410, height=620");
		//	$('#addr2').focus();
	}
	function showSubject() {
		var level = $('#schoolLevel').val();
		var grade = $('#selectGrade').val();
		alert(level + " " + grade);
		if (level > 0 && grade > 0) {
			$('#selectGradeFirstly').hide();
		}
	}

	var tBookId = 0;
	function addTBook() {
		tBookId++;
		//	alert($('#bookSchool option:selected').text())
		var val = $('#bookName').val() + "-" + $('#bookSchool').val() + "-"
				+ $('#bookGrade').val() + "-" + $('#bookTerm').val();
		var list = $('#bookName').val() + "-"
				+ $('#bookSchool option:selected').text() + "-"
				+ $('#bookGrade option:selected').text() + "-"
				+ $('#bookTerm option:selected').text();
		var li_id = "textBook" + tBookId;
		/* <li id="textBook1"><input type="hidden" id="textBookId" value="개념원리-고등학교-1학년-1학기">개념원리-고등학교-1학년-1학기 
		<a href="javascript:deleteTBook('#textBook1')"><img src="icon/delete.png" class="imgDelete"></a></li> */
		$('#textBookList')
				.append(
						"<li id='"+li_id+"'><input type='hidden' id='tBookId"+tBookId+"' value='"+val+"'>"
								+ list
								+ " <a href=''><img src='/teamP/cooperation/i/v17/icons/delete.png' title='삭제' class='imgDelete'></a></li>");
		$('#' + li_id + ' a').attr("href",
				"javascript:deleteTBook('#" + li_id + "')");
	}
	function deleteTBook(element) {
		$(element).remove();
	}
</script>


<script type="text/javascript">
smallHeader();
</script>

</head>

<body>
<div class="ibm-home-page" id="ibm-top" style="margin-top: 74px;">
	<section> <article>
	<h3 id="subTitle">WIT 일반회원 가입</h3>
	<p id="p1">기본 정보를 입력해 주세요</p>
	<p id="p2">
		<b style="color: red;">*</b>표시는 필수 입력 항목 입니다
	</p>
	<form>
		<ul class="common">
			<li><b class="necessary">*</b><label class="labeling">이름</label>
				<input type="text" size=12
				placeholder="공백없이 입력" required></li>
			<!-- <li><b class="necessary">*</b><label class="labeling">주민번호</label>
				<input type="number" class="align_center" id="rNumber1" size=10
				min="000000" max="999999" maxlength="6" required> - <input
				type="number" class="align_center" id="rNumber2" size=10
				min="0000000" max="4999999" maxlength="7" required></li> -->
			<li><b class="necessary">*</b><label class="labeling">주소</label>
				<div id="address">
					<input type="text" class="align_center" size=3 id="post1" readonly
						required> - <input type="text" class="align_center" size=3
						id="post2" readonly required> <input type="button"
						value="우편번호 찾기" onclick="findPost()"><br> <input
						type="text" size=80 id="addr1" class="addr" readonly required>
					<br> <input type="text" size=55 id="addr2" class="addr"
						required>
				</div></li>
			<li style="clear: both;"><b class="necessary"></b><label
				class="labeling">집전화</label> <select>
					<option>02</option>
					<option>032</option>
					<option>031</option>
			</select> - <input type="tel" class="align_center" size=5 maxlength="4"
				required> <input type="tel" class="align_center" size=5
				maxlength="4" required></li>
			<li><b class="necessary">*</b><label class="labeling">휴대폰</label>
				<select>
					<option>SKT</option>
					<option>KT</option>
					<option>LGT</option>
			</select> - <select>
					<option>010</option>
					<option>011</option>
					<option>017</option>
			</select> <input type="tel" class="align_center" size=5 maxlength="4" required>
				<input type="tel" class="align_center" size=5 maxlength="4" required></li>
			<li><b class="necessary">*</b><label class="labeling">이메일</label>
				<input type="email" id="email1" class="align_center" size=10
				required> @ <input type="email" id="email2" size=15 required>
				<select id="select_email" onChange="input_email()">
					<option value="0">직접 입력</option>
					<option value="1">gmail.com</option>
					<option value="2">hanmail.net</option>
					<option value="3">naver.com</option>
					<option value="4">hotmail.com</option>
					<option value="5">msn.com</option>
					<option value="6">nate.com</option>
					<option value="7">cyworld.com</option>
			</select></li>
			<li><b class="necessary"></b><label class="labeling">생일</label>
				<input type="date" title="따로 입력하지 않을 경우 현재 시간으로 자동 저장"> (따로
				입력하지 않을 경우 현재 시간으로 자동 저장)</li>
		</ul>
		<br> <br>
		<div style="height: 25px;">
		<p id="p3" style="position: relative">추가 정보를 입력해 주세요</p>
		</div>
		<ul class="common" style="position: relative;">
			<div id="teacher">
				<li><b class="necessary"></b><label class="labeling">성별</label>
					<select id="select_type">
						<option value="0">선택</option>
						<option value="1">남자</option>
						<option value="2">여자</option>
				</select></li>
				<li><b class="necessary"></b><label class="labeling">혼인여부</label>
					<select id="select_type">
						<option value="0">선택</option>
						<option value="1">미혼</option>
						<option value="2">기혼</option>
				</select></li>
				<li><b class="necessary"></b><label class="labeling">관심사업</label>
					<div style="padding-top: 5px;">
						<input type="checkbox" class="liner"> 알파 스터디 &nbsp;&nbsp;
						<input type="checkbox" class="liner"> 오프넥스 &nbsp;&nbsp; <input
							type="checkbox" class="liner"> GM &nbsp;&nbsp; <input
							type="checkbox" class="liner"> 이폭간의 멋남 먹방 &nbsp;&nbsp; <input
							type="checkbox" class="liner"> WIT MALL &nbsp;&nbsp; <input
							type="checkbox" class="liner"> WIT본사
					</div></li> <br>
				<li><b class="necessary"></b><label class="labeling">가입동기</label>
					<div style="width: 400px; float: left; margin-bottom: 10px;">
						<fieldset class="schoolLevel">
							<legend>일반인</legend>
							<label><input type="checkbox" id="middleSchool" value=1
								class="liner"> 주변의 권유&nbsp; </label> <label><input
								type="checkbox" id="middleSchool" value=2 class="liner">
								언론 및 홍보 접촉&nbsp; </label> <label><input type="checkbox"
								id="middleSchool" value=2 class="liner"> WIT 계열사 시설 이용
								목적 </label>
						</fieldset>
						<div style="height: 10px;"></div>
						<fieldset class="schoolLevel">
							<legend>
								기업인 &nbsp;&nbsp;&nbsp;&nbsp;<label><input type="checkbox" id="curriculum"
									value=0 class="liner">WIT 계열사 &nbsp;&nbsp;</label> <label><input
									type="checkbox" id="curriculum" value=1 class="liner">기타</label>
							</legend>
							<label><input type="checkbox" id="highSchool" value=1
								class="liner"> 기업 브랜드 이미지 선호&nbsp; </label> <label><input
								type="checkbox" id="highSchool" value=2 class="liner">
								관련 업체 종사&nbsp; </label> <label><input type="checkbox"
								id="highSchool" value=3 class="liner"> 기업 활동 동참 </label>
						</fieldset>
					</div></li>
				<li id="li_textBook"><b class="necessary"></b><label
					class="labeling">직업</label>
					<div style="float: left;">
						<select id="bookSchool">
							<option value=0>선택</option>
						</select> <select id="bookGrade">
							<option value=1>선택</option>
						</select>
					</div></li>
				<li><b class="necessary"></b><label class="labeling">메일
						수신</label>
					<div style="float: left;">
						<div class="textline">
							<input type="checkbox" class="liner"> 동의
						</div>
					</div></li>
			</div>
		</ul>
		<br><br><br><br>
		<hr style="clear: both; margin-top: 20px;">
		<div style="margin-left: 10px;">
			<input type="submit" value="확인" title="필수항목을 모두 작성하고 클릭하세요">
			<input type="reset" value="취소" title="이전 페이지로 돌아갑니다">
		</div>
	</form>

	<br>
	<br>
	<br>
	<br>
	</article> </section>
</div>
</body>
<jsp:include page="WIT_Main_footer.jsp"></jsp:include>
</html>