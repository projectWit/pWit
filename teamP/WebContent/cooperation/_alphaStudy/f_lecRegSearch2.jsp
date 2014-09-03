<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<script type="text/javascript">
//달력이 추가될 태그의 id
calendarIDs = ['fromJoinDate', 'toJoinDate', 'fromDropDate', 'toDropDate', 'fromBirthDate', 'toBirthDate'];
</script>

<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>

<body>

<section>
<article>

<div class="page-title"><span class="bullet-title">강의 스케줄 검색</span></div>

<div class="content-container">

<form method="post" action="" name="lecForm" id="lecForm">
<!-- 범위 검색형 -->    
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강의</td><td class="table-input"><input type="text" size=8 name="alIdText" id="alIdText" readonly><a href="/teamP/study/newWindow/findLecture" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 id="alName" readonly></td>
    		<td class="table-label">강사</td><td class="table-input"><input type="text" size=15 name="tIdText" id="tIdText" readonly><a href="/teamP/study/newWindow/findTeacher" id="findTeacher" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 id="tName" readonly></td>
            <td class="table-label" rowspan=7>강의시각</td><td class="table-input">일 : <select name="ltCodeArray[0]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 name="lsCostText" > 원</td>
        	<td class="table-label">강의형태</td><td class="table-input"><select name="slCode"><option value="0">선택</option><c:forEach var="suppLec" items="${slList }" varStatus="status"><option value="${suppLec.slCode}">${suppLec.slName }</option></c:forEach></select></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">월 : <select name="ltCodeArray[1]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">정원</td><td class="table-input"><input type="number" min=1 name="lsMaxText" > 명</td>
            <td class="table-label">강의분류</td><td class="table-input"><select name="lcCode"><option value="0">선택</option><c:forEach var="lecCate" items="${lcList }" varStatus="status"><option value="${lecCate.lcCode}">${lecCate.lcName }</option></c:forEach></select></td>
            <!-- <td class="table-label">주소</td> --><td class="table-input">화 : <select name="ltCodeArray[2]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의실</td><td class="table-input"><select name="lrCode"><c:forEach var="lecRoom" items="${lrList }" varStatus="status"><option value="${lecRoom.lrCode}">${lecRoom.lrName }&nbsp;호</option></c:forEach></select></td>
            <td class="table-label">과목</td><td class="table-input"><select name="sbjCode"><option value="0">선택</option><c:forEach var="subject" items="${sbjList }" varStatus="status"><option value="${subject.sbjCode}">${subject.sbjName }</option></c:forEach></select></td>
            <!-- <td class="table-label">집전화</td> --><td class="table-input">수 : <select name="ltCodeArray[3]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">스케줄설명</td><td class="table-input"><textarea rows="1" name="lsDescription" style="margin-right: 0px; padding-right: 0px; width: 97%;"></textarea></td>
            <td class="table-label">교재</td><td class="table-input"><select name="tbCode"><option value="0">선택</option><c:forEach var="tbookJoin" items="${tbList }" varStatus="status"><option value="${tbookJoin.tbCode}">${tbookJoin.tbName } - ${tbookJoin.sbjName }&nbsp;&nbsp;${tbookJoin.cName }</option></c:forEach></select></td>
            <!-- <td class="table-label">본인휴대폰</td> --><td class="table-input">목 : <select name="ltCodeArray[4]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의시작일</td><td class="table-input"><input type="text" size=15 name="lsFromDate" id="lsFromDate"></td>
            <td class="table-label">대상등급</td><td class="table-input"><select name="egCode"><option value="0">선택</option><c:forEach var="examGrade" items="${egList }" varStatus="status"><option value="${examGrade.egCode}">${examGrade.egName }</option></c:forEach></select></td>
            <!-- <td class="table-label">본인이메일</td> --><td class="table-input">금 : <select name="ltCodeArray[5]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의종료일</td><td class="table-input"><input type="text" size=15 name="lsToDate" id="lsToDate"></td>
            <td class="table-label"></td><td class="table-input"></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">토 : <select name="ltCodeArray[6]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label"></td><td class="table-input"></td>
        	<td class="table-label">강의상태</td><td class="table-input"><select name="lsCode"><c:forEach var="lecStatus" items="${lsList }" varStatus="status"><option value="${lecStatus.lsCode}">${lecStatus.lsName }</option></c:forEach></select></td>
            <td class="table-label"></td><td class="table-input"></td>
            </tr>
        
    </table>
<!-- //범위 검색형 --> 
    <input type="submit" value="검색시작" class="buttons" id="lecSubmit"> <input type="reset" value="초기화" class="buttons" id="lecReset">
</form>
    
    <div class="tab-container" style="">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
   
        <div class="tab-content" style="border: 0px solid red; " id="lecResult">
        	<select style="float: right; margin-right: 10px;"><option>10개씩 보기</option><option>20개씩 보기</option><option>30개씩 보기</option></select>
        	<div class="" style="overflow: visible; border: 0px solid transparent;">
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">강의코드</th><th class="t-td-1">강의명</th><th class="t-td-2">강사명</th><th class="t-td-3">과목</th><th class="t-td-4">학생구분</th>
                	<th class="t-td-5">학년</th><th class="t-td-6">강의정원</th><th class="t-td-7">강의실</th><th class="t-td-8">수강료</th>
                	<th class="t-td-9">일</th><th class="t-td-10">월</th><th class="t-td-11">화</th><th class="t-td-12">수</th>
                	<th class="t-td-13">목</th><th class="t-td-14">금</th><th class="t-td-15">토</th><th class="t-td-16">교재</th>
                	<th class="t-td-17">삭제</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0"><a href="@Study_lecDetail.jsp">00001</a></td><td class="t-td-1">혼자하는 수학</td><td class="t-td-2">이연희</td><td class="t-td-3">수학</td><td class="t-td-4">고등학생</td>
                	<td class="t-td-5">3</td><td class="t-td-6">30</td><td class="t-td-7">102</td><td class="t-td-8">300,000</td>
                	<td class="t-td-9">18:00</td><td class="t-td-10">18:00</td><td class="t-td-11">18:00</td><td class="t-td-12">18:00</td>
                	<td class="t-td-13">18:00</td><td class="t-td-14">18:00</td><td class="t-td-15">18:00</td><td class="t-td-16">수학의 정석</td>
                	<td class="t-td-17"><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="@Study_lecDetail.jsp">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                
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
