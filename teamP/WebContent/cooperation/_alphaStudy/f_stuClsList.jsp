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
calendarIDs = ['fromJoinDate', 'toJoinDate', 'dropDate', 'birthDate'];		// 달력이 추가될 태그의 id
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

	<div class="page-title"><span class="bullet-title">검색 항목</span></div>

<form method="post" action="" name="lecForm" id="lecForm" style="">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">수강신청일</td><td class="table-input"><input type="text" size=12 id="fromJoinDate"> - <input type="text" size=12 id="toJoinDate"></td>
    		<td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">강의 학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년 - <input type="number" min="1" max="3" size="10"> 학년</td>
            </tr>
        <tr><td class="table-label">강의</td><td class="table-input"><input type="text" size=8 value="" id="lecCode" required><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="" id="lecName" required></td>
        	<td class="table-label">학생</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">수강생 학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년 - <input type="number" min="1" max="3" size="10"> 학년</td>
        </tr>
        <tr><td class="table-label">과목</td><td class="table-input">
					<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
        			<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
        			<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
        	<td class="table-label"><!-- 학생 --></td><td class="table-input"><!-- 000002 --></td>
            <td class="table-label"><!-- 학년 --></td><td class="table-input"><!-- 000002 --></td>
        </tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="검색하기" class="buttons" id="lecSubmit"> <input type="reset" value="초기화" class="buttons" id="lecReset">
    <!-- </div> -->
</form>
    
    <div class="tab-container" style="">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
   
        <div class="tab-content" style="border: 0px solid red; " id="lecResult">
        	<select style="float: right; margin-right: 10px;"><option>10개씩 보기</option><option>20개씩 보기</option><option>30개씩 보기</option></select>
        	<div class="" style="overflow: visible; border: 0px solid transparent;">
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수강등록번호</th><th class="t-td-1">종류</th><th class="t-td-2">수강신청일</th><th class="t-td-3">수강종료예정일</th><th class="t-td-4">강의코드</th>
                	<th class="t-td-5">강의명</th><th class="t-td-6">과목</th><th class="t-td-7">강의학년</th><th class="t-td-8">학생코드</th>
                	<th class="t-td-9">학생이름</th><th class="t-td-10">학생학년</th><th class="t-td-11">학교</th>
                	<th class="t-td-12">본인휴대폰</th><th class="t-td-13">수납방법</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">0000001</td><td class="t-td-1">신규</td><td class="t-td-2">2014-06-14</td><td class="t-td-3">2014-08-14</td><td class="t-td-4">00001</td>
                	<td class="t-td-5">혼자하는 수학</td><td class="t-td-6">수학</td><td class="t-td-7">3</td><td class="t-td-8">000001</td>
                	<td class="t-td-9">이연희</td><td class="t-td-10">2</td><td class="t-td-11">경기고등학교</td>
                	<td class="t-td-12">010-7777-7777</td><td class="t-td-13">카드</td></tr>
                <tr><td>0000001</td><td>연장</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                <tr><td>0000001</td><td>만료</td><td>2014-06-14</td><td>2014-08-14</td><td>00001</td>
                	<td>혼자하는 수학</td><td>수학</td><td>3</td><td>000001</td>
                	<td>이연희</td><td>2</td><td>경기고등학교</td>
                	<td>010-7777-7777</td><td>카드</td></tr>
                
                
                </tbody>
            </table>
            </div>
            
            <div class="paging">
            	<span><a href="#">이전 10개</a>...</span> <span><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> 
            		<a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a></span> <span>...<a href="#">다음 10개</a></span>
            </div>
        </div>
    </div>

<div>

</article>
</section>

</body>
</html>
