<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<script type="text/javascript">
calendarIDs = ['fromSuppDate', 'toSuppDate'];		// 달력이 추가될 태그의 id
</script>

<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>

<body>

<section>
<article>



<div class="content-container">

<div class="page-title"><span class="bullet-title">보강 검색</span></div>

<form method="post" action="" name="stuForm" id="stuForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">보강일자</td><td class="table-input"><input type="text" size=12 id="fromSuppDate" name="fromSuppDate"> - <input type="text" size=12 id="toSuppDate" name="toSuppDate"></td>
			<td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
			<td class="table-label">학생구분</td><td class="table-input">
					<select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select>
					<select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select>
					<select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td></tr>
		<tr><td class="table-label">보강시각</td><td class="table-input"><input type="time"> - <input type="time"></td>
			<td class="table-label">과목</td><td class="table-input">
					<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
					<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
					<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
			<td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년 - <input type="number" min="1" max="3" size="10"> 학년</td></tr>
		<tr><td class="table-label">보강수강생</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
			<td class="table-label"><!-- 과목 --></td><td class="table-input"><!-- temp --></td>
			<td class="table-label"><!-- 학년 --></td><td class="table-input"><!-- temp --></td></tr>
		
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
        	
            <!-- 진도 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">보강코드</th><th class="t-td-1">보강일자</th><th class="t-td-2">강사코드</th><th class="t-td-3">강사</th>
					<th class="t-td-4">과목</th><th class="t-td-5">학생구분</th><th class="t-td-6">학년</th><th class="t-td-7">보강내용</th>
					<th class="t-td-8">학생코드</th><th class="t-td-9">학생이름</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0"><a href="@Study_learnSuppDetail.jsp">000001</a></td><td class="t-td-1">2014-07-08</td>
                	<td class="t-td-2"><a href="@Study_teacherDetail.jsp">000001</a></td><td class="t-td-3">고길동</td><td class="t-td-4">수학</td>
                	<td class="t-td-5">고등학교</td><td class="t-td-6">2</td><td class="t-td-7">부정적분의 기본성질</td>
                	<td class="t-td-8"><a href="@Study_stuDetail.jsp">000001</a></td><td class="t-td-9">이연희</td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                <tr><td><a href="@Study_learnSuppDetail.jsp">000001</a></td><td>2014-07-08</td>
                	<td><a href="@Study_teacherDetail.jsp">000001</a></td><td>고길동</td><td>수학</td>
                	<td>고등학교</td><td>2</td><td>부정적분의 기본성질</td><td></td><td></td></tr>
                
                   
                </tbody>
            </table>
        <!-- //진도 탭 -->
        
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
