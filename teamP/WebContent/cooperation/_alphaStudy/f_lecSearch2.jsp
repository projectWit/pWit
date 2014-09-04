<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<div class="page-title"><span class="bullet-title">강의 검색</span></div>

<div class="content-container">

<form method="post" action="" name="lecForm" id="lecForm">
<!-- 범위 검색형 -->    
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강의코드</td><td class="table-input"><input type="text" size=15 value="000001"> - <input type="text" size=15 value="000001"></td>
    		<td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 max=10000000> 원 - <input type="number" min=1 max=10000000> 원</td>
            <td class="table-label" rowspan=7>강의시각</td><td class="table-input">일 : <input type="time"> - <input type="time"></td>
            </tr>
        <tr><td class="table-label">강의명</td><td class="table-input"><input type="text" size=20 value="혼자하는 수학"></td>
        	<td class="table-label">교재</td><td class="table-input"><input type="text" size=8 value="00005"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="수학의 정석"></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">월 : <input type="time"> - <input type="time"></td>
            </tr>
        <tr><td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">강의 정원</td><td class="table-input"><input type="number" min=1 max=100> 명 이하</td>
            <!-- <td class="table-label">주소</td> --><td class="table-input">화 : <input type="time"> - <input type="time"></td>
            </tr>
        <tr><td class="table-label">과목</td><td class="table-input">
        			<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
        			<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select>
        			<select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
            <td class="table-label">강의실</td><td class="table-input">
            		<select><option>미선택</option><option>102호</option><option>103호</option></select>
            		<select><option>미선택</option><option>102호</option><option>103호</option></select>
            		<select><option>미선택</option><option>102호</option><option>103호</option></select></td>
            <!-- <td class="table-label">집전화</td> --><td class="table-input">수 : <input type="time"> - <input type="time"></td>
            </tr>
        <tr><td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년 - <input type="number" min="1" max="3" size="10"> 학년</td>
            <td class="table-label">강의개설일</td><td class="table-input"><input type="text" size=12 id="fromJoinDate"> - <input type="text" size=12 id="toJoinDate"></td>
            <!-- <td class="table-label">본인휴대폰</td> --><td class="table-input">목 : <input type="time"> - <input type="time"></td>
            </tr>
        <tr><td class="table-label">학생구분</td><td class="table-input">
        			<select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select>
        			<select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select>
        			<select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td>
            <td class="table-label">강의삭제일</td><td class="table-input"><input type="text" size=12 id="fromDropDate"> - <input type="text" size=12 id="toDropDate"></td>
            <!-- <td class="table-label">본인이메일</td> --><td class="table-input">금 : <input type="time"> - <input type="time"></td>
            </tr>
        <tr><td class="table-label">강의대상등급</td><td class="table-input"><input type="number" min="1" max="9" size="10"> 등급 - <input type="number" min="1" max="9" size="10"> 등급</td>
            <td class="table-label"><!-- 탈퇴일 --></td><td class="table-input"><!-- 000002 --></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">토 : <input type="time" value="18:00"> - <input type="time"></td>
            </tr>
        
    </table>
<!-- //범위 검색형 --> 
    <input type="submit" value="검색시작" class="buttons" id="lecSubmit"> <input type="reset" value="초기화" class="buttons" id="lecReset">
</form>
    
    <div class="tab-container" style="">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
 
<form method="post" action="/teamP/study/lecture/search/list" name="pagingForm" id="pagingForm">
        <div class="tab-content" style="border: 0px solid red; " id="lecResult">
        	<select id="numPerPage" name="numPerPage" style="float: right; margin-right: 10px;"><option value="10">10개씩 보기</option><option value="20">20개씩 보기</option><option value="30">30개씩 보기</option></select>
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
			<c:forEach var="lecture" items="${lecList }" begin="${pagingModel.startRecord-1 }" end="${pagingModel.endRecord-1 }" step="1" varStatus="status">
				<tr><td class="t-td-0">${pagingModel.no-status.count+1 }</td><td class="t-td-0"><a href="#">${lecture.alId }</a></td><td class="t-td-1">${lecture.alName }</td><td class="t-td-2">${lecture.alDescription }</td>
                	<td class="t-td-3">${lecture.slName }</td><td class="t-td-4">${lecture.lcName }</td><td class="t-td-5">${lecture.tId }</td>
                	<td class="t-td-6">${lecture.eKname }</td><td class="t-td-7">${lecture.sgName }</td><td class="t-td-8">${lecture.sbjCatName }</td>
                	<td class="t-td-9">${lecture.sbjName }</td><td class="t-td-10">${lecture.egName }</td><td class="t-td-11">${lecture.tbName } - ${lecture.sbjName2 } ${lecture.cName }</td>
                	<td class="t-td-12"><input type="button" value="삭제"></td></tr>
			</c:forEach>
			<!-- <tr><td class="t-td-0">t</td><td class="t-td-0"><a href="#">t</a></td><td class="t-td-1">t</td><td class="t-td-2">t</td>
                	<td class="t-td-3">t</td><td class="t-td-4">t</td><td class="t-td-5">t</td>
                	<td class="t-td-6">t</td><td class="t-td-7">t</td><td class="t-td-8">t</td>
                	<td class="t-td-9">t</td><td class="t-td-10">t</td><td class="t-td-11">t</td>
                	<td class="t-td-12"><input type="button" value="삭제"></td></tr> -->
			
                
                </tbody>
            </table>
            </div>
            
            <div class="paging">
            	<!-- <span><a href="#">이전 10개</a>...</span> <span><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> 
            		<a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a></span> <span>...<a href="#">다음 10개</a></span> -->
			<c:if test="${pagingModel.prevLink > 0}"><span><a href="#" value="${pagingModel.prevLink }">이전 10개</a>&nbsp;...</span></c:if>
				&nbsp;&nbsp;<span>
			<c:forEach var="i" begin="${pagingModel.firstPage }" end="${pagingModel.lastPage }" step="1" varStatus="status">
				<a href="#" value="${i }">${i }</a>&nbsp;&nbsp;
			</c:forEach>
				</span>
			<c:if test="${pagingModel.nextLink > 0}"><span>...&nbsp;<a href="#" value="${pagingModel.nextLink }">다음 10개</a></span></c:if>
			<c:if test="${pagingModel.prevLink > 0 && pagingModel.nextLink == 0}"><span>...&nbsp;<a href="#">처음으로</a></span></c:if>
            </div>
        </div>
        <input type="hidden" value="${pagingModel.curPage }" name="curPage" id="curPage">
        <input type="hidden" value="${pagingModel.numPerPage }" name="numPerPageSET" id="numPerPageSET">
        <!-- <input type="submit" value="테스트용버튼"> -->
</form>
        

    </div>
</div>

</article>
</section>

</body>
</html>