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

<div class="page-title"><span class="bullet-title">진도 상세</span></div>

<form method="post" action="" name="stuForm" id="stuForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강좌코드</td><td class="table-input"><input type="text" size=8 value="" id="lecCode" required><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="" id="lecName" required></td>
            <td class="table-label">수업일자</td><td class="table-input"><input type="text" size=15 id="testDate" name="testDate"></td>
            <td class="table-label">수강생</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td></tr>
        <tr><td class="table-label">수업내용</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;">정적분의 성질</textarea></td></tr>
        <tr><td class="table-label">개선사항</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;">미분의 개념을 머리속에 강제로 주입</textarea></td></tr>
        <tr><td class="table-label">종합평가</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;">노력하면 좋은 결과가 있을 것</textarea></td></tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="정보수정" class="buttons" id="stuSubmit"> <!-- <input type="button" value="진도삭제" class="buttons" id="stuDelete"> -->
    <input type="submit" value="일괄등록" class="buttons" id="stuSubmitAll">
    <!-- </div> -->
</form>
	
	<div class="tab-container">
    	<div class="tabs">
        	<a href="#" class="tab-active" style="margin-left: 10px;">수강생</a><a href="#">강좌</a>
            <div class="fill-remains"></div>
        </div>
   
        <div class="tab-content">
        	<div class="limit-table">
        	
        <!-- 수강생 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수업일</th><th class="t-td-1">학생코드</th><th class="t-td-2">이름</th><th class="t-td-3">개선사항</th><th class="t-td-4">종합평가</th>
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
        
        <!-- 강좌 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-1" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수업일</th><th class="t-td-1">강의코드</th><th class="t-td-2">강의명</th><th class="t-td-3">강사명</th>
					<th class="t-td-4">수업내용</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-07</td><td class="t-td-1"><a href="@Study_lecDetail.jsp">00005</a></td><td class="t-td-2">발로 배우는 냄새나는 수학2</td>
                	<td class="t-td-3">강동원</td><td class="t-td-4">정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>정적분의 성질</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //강좌 탭 -->
        
            
            </div>
        </div>
    </div>

<div>

</article>
</section>

</body>
</html>
