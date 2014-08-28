<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/css/jquery-ui-1.9.2.css">
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/css/calendar.css">
<script type="text/javascript">
calendarIDs = ['joinDate', 'dropDate', 'birthDate'];		// 달력이 추가될 태그의 id
</script>

<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_alphaStudy/css/stuCommon.css">
<script type="text/javascript" src="/teamP/cooperation/_alphaStudy/script/stuCommon.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/focusInput.js"></script>

<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>

<body>

<section>
<article>

<div class="page-title"><span class="bullet-title">강의 개설</span></div>

<div class="content-container">

<form method="post" action="/teamP/study/lecture/insert" name="regForm" id="regForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">정규·보강</td><td class="table-input"></td>
    		<td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 max=10000000> 원</td>
            <td class="table-label" rowspan=7>강의시각</td><td class="table-input">일 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">강의명</td><td class="table-input"><input type="text" size=20 value="혼자하는 수학"></td>
        	<td class="table-label">교재</td><td class="table-input"><input type="text" size=8 value="00005"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="수학의 정석"></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">월 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">강의정원</td><td class="table-input"><input type="number" min=1 max=100> 명 이하</td>
            <!-- <td class="table-label">주소</td> --><td class="table-input">화 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">과목</td><td class="table-input"><select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
            <td class="table-label">강의실</td><td class="table-input"><select><option>미선택</option><option>102호</option><option>103호</option></select></td>
            <!-- <td class="table-label">집전화</td> --><td class="table-input">수 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년</td>
            <td class="table-label"><!-- 회원아이디 --></td><td class="table-input"><!-- 000002 --></td>
            <!-- <td class="table-label">본인휴대폰</td> --><td class="table-input">목 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">학생구분</td><td class="table-input"><select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td>
            <td class="table-label"><!-- 가입일 --></td><td class="table-input"><!-- 000002 --></td>
            <!-- <td class="table-label">본인이메일</td> --><td class="table-input">금 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">강의대상등급</td><td class="table-input"><input type="number" min="1" max="9" size="10"> 등급</td>
            <td class="table-label"><!-- 탈퇴일 --></td><td class="table-input"><!-- 000002 --></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">토 : <input type="time" value="18:00"></td>
            </tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="개설하기" class="buttons" id="regSubmit"> <input type="reset" value="초기화" class="buttons" id="regReset">
    <!-- </div> -->
</form>

<div>

</article>
</section>

</body>
</html>
