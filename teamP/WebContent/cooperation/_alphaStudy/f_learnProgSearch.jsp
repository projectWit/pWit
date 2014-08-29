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
calendarIDs = ['fromClassDate', 'toClassDate'];		// 달력이 추가될 태그의 id
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

<div class="page-title"><span class="bullet-title">진도 검색</span></div>

<form method="post" action="" name="stuForm" id="stuForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강좌코드</td><td class="table-input"><input type="text" size=8 value="" id="lecCode" required><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="" id="lecName" required></td>
            <td class="table-label">수업일자</td><td class="table-input"><input type="text" size=12 id="fromClassDate" name="fromClassDate"> - <input type="text" size=12 id="toClassDate" name="toClassDate"></td>
            <td class="table-label">수강생</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td></tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="검색하기" class="buttons" id="stuSubmit"> <input type="reset" value="초기화" class="buttons" id="stuReset">
    <!-- </div> -->
</form>

	<div class="tab-container" style="">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
   
        <div class="tab-content" style="border: 0px solid red; display: none;" id="stuResult">
        	<select style="float: right; margin-right: 10px;"><option>10개씩 보기</option><option>20개씩 보기</option><option>30개씩 보기</option></select>
        	<div class="" style="overflow: visible; border: 0px solid transparent;">
        	
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">진도코드</th><th class="t-td-1">수업일자</th><th class="t-td-2">강좌코드</th><th class="t-td-3">강좌명</th>
					<th class="t-td-4">수업내용</th><th class="t-td-5">학생코드</th><th class="t-td-6">학생이름</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0"><a href="@Study_learnProgDetail.jsp">000001</a></td><td class="t-td-1">2014-07-08</td><td class="t-td-2">00005</td>
                	<td class="t-td-3">혼자하는 수학</td><td class="t-td-4">부정적분의 기본성질</td><td class="t-td-5">000001</td><td class="t-td-6">이연희</td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnProgDetail.jsp">000001</a></td><td>2014-07-08</td><td>00003</td><td>혼자하는 수학</td><td>미분의 기본성질</td><td></td><td></td></tr>
                
                   
                </tbody>
            </table>
            
        
            </div>
            
            <div class="paging">
            	<span><a href="#">이전 10개</a>...</span> <span><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> 
            		<a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a></span> <span>...<a href="#">다음 10개</a></span>
            </div>
        </div>
    </div>

</div>

</article>
</section>

</body>
</html>
