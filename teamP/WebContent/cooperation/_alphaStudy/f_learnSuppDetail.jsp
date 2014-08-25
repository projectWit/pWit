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
calendarIDs = ['suppDate'];		// 달력이 추가될 태그의 id
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

<div class="page-title"><span class="bullet-title">보강 상세</span></div>

<form method="post" action="" name="stuForm" id="stuForm">
    <table cellspacing="0" class="info-table">
		<tr><td class="table-label">보강일자</td><td class="table-input"><input type="text" size=15 id="suppDate" name="suppDate"></td>
			<td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
			<td class="table-label">학생구분</td><td class="table-input"><select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td></tr>
		<tr><td class="table-label">보강시각</td><td class="table-input"><input type="time"></td>
			<td class="table-label">과목</td><td class="table-input"><select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
			<td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년</td></tr>
		<tr><td class="table-label">보강수강생</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
			<td class="table-label"><!-- 과목 --></td><td class="table-input"><!-- temp --></td>
			<td class="table-label"><!-- 학년 --></td><td class="table-input"><!-- temp --></td></tr>
		<tr><td class="table-label">보강내용</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;"></textarea></td></tr>
		<tr><td class="table-label">개선사항</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;">미분의 개념이 더 필요</textarea></td></tr>
        <tr><td class="table-label">종합평가</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;">노력하면 좋은 결과가 있을 것</textarea></td></tr>
        
	</table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="정보수정" class="buttons" id="stuSubmit"> <input type="button" value="보강삭제" class="buttons" id="stuDelete">
    <input type="submit" value="일괄등록" class="buttons" id="stuSubmitAll">
    <!-- </div> -->
</form>

	<div class="tab-container">
    	<div class="tabs">
        	<a href="#" class="tab-active" style="margin-left: 10px;">보강수강생</a><a href="#">출결</a>
            <div class="fill-remains"></div>
        </div>
   
        <div class="tab-content">
        	<div class="limit-table">
        	
        <!-- 수강생 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">보강일</th><th class="t-td-1">학생코드</th><th class="t-td-2">이름</th><th class="t-td-3">개선사항</th><th class="t-td-4">종합평가</th>
                	</tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-07</td><td class="t-td-1"><a href="@Study_stuDetail.jsp">000001</a></td><td class="t-td-2">강동원</td>
                	<td class="t-td-3">미분의 개념을 머리속에 강제로 주입</td><td class="t-td-4">노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td>
                	<td>미분의 개념을 머리속에 강제로 주입</td><td>노력하면 좋은 결과가 있을 것</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //수강생 탭 -->
        
 
        <!-- 출석 탭 -->
            <table cellspacing="0" class="tab-table" id="table-1" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">일자</th><th class="t-td-1">종류</th><th class="t-td-2">학생코드</th><th class="t-td-3">학생이름</th><th class="t-td-4">규정출석시각</th>
					<th class="t-td-5">출석시각</th><th class="t-td-6">규정귀가시각</th><th class="t-td-7">귀가시각</th><th class="t-td-8">횟수(최근 한달)</th><th class="t-td-9">사유</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">지각</td><td class="t-td-2">000001</td><td class="t-td-3">이연희</td><td class="t-td-4">18:00</td>
                	<td class="t-td-5">18:30</td><td class="t-td-6">20:00</td><td class="t-td-7">20:00</td><td class="t-td-8">2</td><td class="t-td-9">그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //출석 탭 -->
            
            </div>
        </div>
    </div>

<div>

</article>
</section>

</body>
</html>
