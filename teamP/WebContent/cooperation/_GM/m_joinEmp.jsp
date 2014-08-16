<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	font-family: "맑은 고딕";
}
section {
//	position: relative;
//	position: fixed;
//	float: left;

//	width: 80%;
	width: 800px;
	height: 100%;	/* top + height = 100% */
//	background-color: #E8E8DF;
	background-color: #FFF;
//	z-index: 1;
	overflow: auto;
}
article {
//	position: absolute;
//	top: 0px;
//	left: 30px;
//	margin-left: 30px;
	margin-left: 2.5%;
	width: 95%;
	height: 100%;
	background-color: #FFF;
//	border: 2px solid red;
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
//	border: 1px solid black;
	display: inline;
//	margin-top: 10px;
//	margin-bottom: 10px;
	font-size: 11px;
}
#p1 {
	float: left;
	padding-left: 20px;
}
#p2 {
	float: right;
	padding-right: 20px;
}
#p3 {
	padding-left: 20px;
	margin-top: 0px;
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
//	padding-top: 5px;
	margin-top: 3px;
	height: 25px;
}
.necessary {
//	border: 1px solid black;
//	position: absolute;
	left: 15px;
	color: red;
	width: 5px;
	float: left;
	padding-top: 5px;
}
.labeling {
	width: 60px;
	float: left;
	padding-left: 10px;
	padding-top: 5px;
}
.align_center {
	text-align: center;
}
#address {
//	border: 1px solid black;
//	display: inline;
	width: 570px;
	height: 83px;
	float: left;
}
.addr {
	margin-top: 3px;
}
.schoolLevel {
	width: 170px;
	display: inline;
//	float: left;
}
#selectGradeFirstly {
	color: #cccccc;
	padding-top: 5px;
//	border: 1px solid red;
//	display: inline;
}
#li_textBook {
//	border: 1px solid red;
//	clear: both;
	margin-top: 30px;
}
#textBookList {
//	list-style: none;
	padding-left: 20px;
//	margin: 0px;
}
.imgDelete {
	width: 12px;
	height: 12px;
}
input {
//	font-size: 12px;
}
a {
	text-decoration: none;
}

</style>
<script src="script/jquery-2.1.1.js"></script>
<script src="script/ajax.js"></script>
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
	} else {	// regular
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
	alert(level +" "+grade);
	if (level>0 && grade>0) {
		$('#selectGradeFirstly').hide();
	}
}

var tBookId = 0;
function addTBook() {
	tBookId++;
//	alert($('#bookSchool option:selected').text())
	var val = $('#bookName').val()+"-"+$('#bookSchool').val()+"-"+$('#bookGrade').val()+"-"+$('#bookTerm').val();
	var list = $('#bookName').val()+"-"+$('#bookSchool option:selected').text()+"-"+$('#bookGrade option:selected').text()+"-"+$('#bookTerm option:selected').text();
	var li_id = "textBook"+tBookId;
	/* <li id="textBook1"><input type="hidden" id="textBookId" value="개념원리-고등학교-1학년-1학기">개념원리-고등학교-1학년-1학기 
	<a href="javascript:deleteTBook('#textBook1')"><img src="icon/delete.png" class="imgDelete"></a></li> */
	$('#textBookList').append("<li id='"+li_id+"'><input type='hidden' id='tBookId"+tBookId+"' value='"+val+"'>"+list+" <a href=''><img src='icon/delete.png' title='삭제' class='imgDelete'></a></li>");
	$('#'+li_id+' a').attr("href", "javascript:deleteTBook('#"+li_id+"')");
}
function deleteTBook(element) {
	$(element).remove();
}
</script>
</head>
<body>
<section>
<article>
<h3 id="subTitle">직원 등록</h3>
<p id="p1">기본 정보를 입력해 주세요</p>
<p id="p2"><b style="color: red;">*</b><span style="padding-left: 10px;">표시는 필수 입력 항목 입니다</span></p>
<form>
<ul class="common">
	<li><b class="necessary">*</b><label class="labeling">이름</label>
    	<input type="text" class="align_center" size=10 placeholder="공백없이 입력" required></li>
    <li><b class="necessary">*</b><label class="labeling">주민번호</label>
    	<input type="number" class="align_center" id="rNumber1" size=10 min="000000" max="999999" maxlength="6" required> - 
    	<input type="number" class="align_center" id="rNumber2" size=10 min="0000000" max="4999999" maxlength="7" required></li>
    <li><b class="necessary">*</b><label class="labeling">주소</label>
    	<div id="address">
        	<input type="text" class="align_center" size=3 id="post1" readonly required> - 
            <input type="text" class="align_center" size=3 id="post2" readonly  required> 
    		<input type="button" value="우편번호 찾기" onclick="findPost()"><br> 
        	<input type="text" size=80 id="addr1" class="addr" readonly required> <br> <input type="text" size=55 id="addr2" class="addr" required></div></li>
    <li style="clear: both;"><b class="necessary"></b><label class="labeling">집전화</label>
    	<select>
        	<option>02</option>
            <option>032</option>
            <option>031</option>
        </select> - 
        <input type="tel" class="align_center" size=5 maxlength="4" required> <input type="tel" class="align_center" size=5 maxlength="4" required></li>
    <li><b class="necessary">*</b><label class="labeling">휴대폰</label>
    	<select>
        	<option>SKT</option>
            <option>KT</option>
            <option>LGT</option>
        </select> - 
        <select>
        	<option>010</option>
            <option>011</option>
            <option>017</option>
        </select>
        <input type="tel" class="align_center" size=5 maxlength="4" required> <input type="tel" class="align_center" size=5 maxlength="4" required></li>
    <li><b class="necessary">*</b><label class="labeling">이메일</label>
    	<input type="email" id="email1" class="align_center" size=10 required> @ <input type="email" id="email2" size=15 required>
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
    <li><b class="necessary"></b><label class="labeling">입사일</label>
    	<input type="date" title="따로 입력하지 않을 경우 현재 시간으로 자동 저장"> (따로 입력하지 않을 경우 현재 시간으로 자동 저장)</li>
</ul>
<br><br>
<p id="p3">직원 종류를 선택해 주세요</p>
<select id="select_type" onChange="show_emp()">
    <option value="0">정규직</option>
    <option value="1">계약직</option>
</select>
<ul class="common">
    <div id="regular" style="display: none;">
        <li><b class="necessary">*</b><label class="labeling">정규직여부</label>
    	<select>
        	<option>정규직</option>
            <option>계약직</option>
        </select></li>
    <li><b class="necessary">*</b><label class="labeling">담당업무</label>
    	<select>
        	<option>사무</option>
            <option>운전</option>
            <option>청소</option>
            <option>기타</option>
        </select>
        <select>
        	<option>카운터</option>
            <option>상담</option>
            <option>기타</option>
        </select>
        <input type="text" size=10 placeholder="기타일 경우"></li>
    </div>    
    <li style="clear: both;"><b class="necessary">*</b><label class="labeling">급여</label>
    	<input type="number" size=10 min="5000" max="1000000000" maxlength="" required> 원 /
        <select>
        	<option>시간</option>
        	<option>월</option>
            <option>년</option>
        </select></li>
    <li style="clear: both;"><b class="necessary"></b><label class="labeling">계약기간</label>
    	<input type="number" size=10 min="1" max="1200" maxlength="" required> 개월</li>
</ul>
<br><hr>
<br/>
<div style="text-align:center">
				<img src="img/bt_submit.jpg" />&nbsp;&nbsp;&nbsp;<img src="img/bt_cancle.jpg"/>
</div>
</form>

<br><br><br><br><br><br>
</article>

</section>
</body>
</html>