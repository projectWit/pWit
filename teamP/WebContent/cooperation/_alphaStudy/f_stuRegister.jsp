<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<link rel="stylesheet" type="text/css" href="css/stuCommon.css">
<style type="text/css">

</style>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css">
<link rel="stylesheet" type="text/css" href="../css/calendar.css">
<script type="text/javascript">
calendarIDs = ['joinDate', 'dropDate', 'birthDate'];		// 달력이 추가될 태그의 id
</script>
</head>

<body>

<section>
<article>

<div class="page-title"><span class="bullet-title">학생 등록</span></div>

<div class="content-container">

<form method="post" action="" name="regForm" id="regForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-photo" rowspan="7" style="border-bottom: 1px solid transparent;'"><img src="img/photo_none2.gif"></td>
        	<td class="table-label">학생코드</td><td class="table-input"><input type="text" size=20 value="000001"></td>
            <td class="table-label" rowspan="3">주소</td><td class="table-input" rowspan="3"><input type="text" size=5>-<input type="text" size=5> <input type="button" value="우편번호찾기"><textarea rows="1" cols="29" style="margin-right: 0px; padding-right: 0px;"></textarea><input type="text" size=30></td>
            <td class="table-label">부모님이름</td><td class="table-input"><input type="text" size=20 value="강동원"></td></tr>
        <tr><td class="table-label">이름</td><td class="table-input"><input type="text" size=20 value="이연희"></td>
            <!-- <td class="table-label">주소</td><td class="table-input">000002</td> -->
            <td class="table-label">부모님휴대폰</td><td class="table-input"><select><option>010</option><option>011</option><option>016</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td></tr>
        <tr><td class="table-label">학교코드</td><td class="table-input"><input type="text" size=8 value="00005"><a href="#"><img src="img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="압구정고등학교"></td>
            <!-- <td class="table-label">주소</td><td class="table-input">000002</td> -->
            <td class="table-label">부모님이메일</td><td class="table-input"><input type="text" size=10 value="yeonhee">@<input type="text" size=15 value="hanmail.net"></td></tr>
        <tr><td class="table-label">학년</td><td class="table-input"><input type="number" value="1" min="1" max="3" size="10">학년 <input type="number" min="1" max="20" size="10">반</td>
            <td class="table-label">집전화</td><td class="table-input"><select><option>02</option><option>031</option><option>032</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td>
            <td class="table-label">환불계좌</td><td class="table-input"><input type="text" size=20 value="222-111111-33-555"> <select><option>우리은행</option><option>국민은행</option><option>신한은행</option></select></td></tr>
        <tr><td class="table-label">학생구분</td><td class="table-input"><select><option>미선택</option><option>초등학생</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td>
            <td class="table-label">본인휴대폰</td><td class="table-input"><select><option>010</option><option>011</option><option>016</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td>
            <td class="table-label">회원아이디</td><td class="table-input"><input type="text" size=20 value="yeonhee" readonly></td></tr>
        <tr><td class="table-label">재학구분</td><td class="table-input"><select><option>미선택</option><option>재학중</option><option>졸업</option></select></td>
            <td class="table-label">본인이메일</td><td class="table-input"><input type="text" size=10 value="yeonhee">@<input type="text" size=15 value="hanmail.net"></td>
            <td class="table-label">가입일</td><td class="table-input"><input type="text" size=15 id="joinDate"></td></tr>
        <tr><td class="table-label">수강구분</td><td class="table-input"><select><option>미선택</option><option>수강중</option><option>미수강</option></select></td>
            <td class="table-label">생일</td><td class="table-input"><input type="text" size=15 id="birthDate"></td>
            <td class="table-label">탈퇴일</td><td class="table-input"><input type="text" size=15 id="dropDate"></td></tr>
        <tr><td class="table-photo"><input type="button" value="사진 올리기"></td>
        	<td class="table-label">추천인</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">취미</td><td class="table-input"><input type="text" size=20 value="거울보기"></td>
            <td class="table-label"><!-- temp --></td><td class="table-input"><!-- temp --></td></tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="등록하기" class="buttons" id="regSubmit"> <input type="reset" value="초기화" class="buttons" id="regReset">
    <!-- </div> -->
</form>

<div>

</article>
</section>

</body>
</html>
