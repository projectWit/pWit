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
calendarIDs = ['testDate'];		// 달력이 추가될 태그의 id
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



<div class="content-container">

<div class="page-title"><span class="bullet-title">진도 입력</span></div>

<form method="post" action="" name="regForm" id="regForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강좌코드</td><td class="table-input"><input type="text" size=8 value="" id="lecCode" required><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="" id="lecName" required></td>
            <td class="table-label">수업일자</td><td class="table-input"><input type="text" size=15 id="testDate" name="testDate"></td>
            <td class="table-label"><!-- temp --></td><td class="table-input"><!-- 000002 --></td></tr>
        <tr><td class="table-label">수업내용</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;"></textarea></td></tr>
        <tr><td class="table-label">개선사항</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;"></textarea></td></tr>
        <tr><td class="table-label">종합평가</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;"></textarea></td></tr>
        
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
