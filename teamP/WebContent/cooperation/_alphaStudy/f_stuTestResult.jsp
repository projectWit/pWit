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

<div class="page-title"><span class="bullet-title">성적 입력</span></div>

<div class="content-container">

<form method="post" action="" name="regForm" id="regForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">학생코드</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">과목</td><td class="table-input"><select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
            <td class="table-label">등급</td><td class="table-input"><select><option>미선택</option><option>1등급</option><option>2등급</option><option>3등급</option></select></td></tr>
        <tr><td class="table-label">시험종류</td><td class="table-input"><select><option>미선택</option><option>중간고사</option><option>기말고사</option><option>교육청 모의평가</option><option>전국연합 학력평가</option><option>모의고사</option></select></td>
            <td class="table-label">점수</td><td class="table-input"><input type="number" min=0 max=100> 점</td>
            <td class="table-label">시험난이도</td><td class="table-input"><select><option>미선택</option><option>상</option><option>중</option><option>하</option></select></td></tr>
        
        
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
