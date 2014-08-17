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
calendarIDs = ['fromTestDate', 'toTestDate'];		// 달력이 추가될 태그의 id
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

<div class="page-title"><span class="bullet-title">성적 조회</span></div>

<form method="post" action="" name="stuForm" id="stuForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">학생코드</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">과목</td><td class="table-input">
            		<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
            		<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
            		<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
            <td class="table-label">등급</td><td class="table-input">
            		<select><option>미선택</option><option>1등급</option><option>2등급</option><option>3등급</option></select> - 
            		<select><option>미선택</option><option>1등급</option><option>2등급</option><option>3등급</option></select></td></tr>
        <tr><td class="table-label">시험종류</td><td class="table-input"><select><option>미선택</option><option>중간고사</option><option>기말고사</option><option>교육청 모의평가</option><option>전국연합 학력평가</option><option>모의고사</option></select></td>
            <td class="table-label">점수</td><td class="table-input"><input type="number" min=0 max=100> 점 - <input type="number" min=0 max=100> 점</td>
            <td class="table-label"><!-- 선생님메모 --></td><td class="table-input"><!-- 000002 --></td></tr>
        <tr><td class="table-label">시험일자</td><td class="table-input"><input type="text" size=12 id="fromTestDate" name="fromTestDate"> - <input type="text" size=12 id="toTestDate" name="toTestDate"></td>
            <td class="table-label">평균점수</td><td class="table-input"><input type="number" min=0 max=100> 점 - <input type="number" min=0 max=100> 점</td>
            <td class="table-label"><!-- 임시 --></td><td class="table-input"><!-- 000002 --></td></tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="검색하기" class="buttons" id="stuSubmit"> <input type="reset" value="초기화" class="buttons" id="stuReset">
    <!-- </div> -->
</form>

	<div class="tab-container" style="">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
   
        <div class="tab-content" style="border: 0px solid red; " id="stuResult">
        	<select style="float: right; margin-right: 10px;"><option>10개씩 보기</option><option>20개씩 보기</option><option>30개씩 보기</option></select>
        	<div class="" style="overflow: visible; border: 0px solid transparent;">
        	
        	<!-- 성적 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수강생코드</th><th class="t-td-1">이름</th><th class="t-td-2">시험일자</th><th class="t-td-3">시험종류</th>
					<th class="t-td-4">과목</th><th class="t-td-5">평균점수</th><th class="t-td-6">획득점수</th><th class="t-td-7">등급</th><th class="t-td-8">선생님 메모</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0"><a href="@Study_stuDetail.jsp">000001</a></td><td class="t-td-1">이연희</td><td class="t-td-2">2014-07-08</td><td class="t-td-3">연합고사</td>
                	<td class="t-td-4">수학</td><td class="t-td-5">40</td><td class="t-td-6">70</td><td class="t-td-7">3</td><td class="t-td-8">머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td><a href="@Study_stuDetail.jsp">000001</a></td><td>이연희</td><td>2014-07-08</td><td>중간고사</td>
                	<td>수학</td><td>40</td><td>70</td><td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //성적 탭 -->
            
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
