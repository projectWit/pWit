<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
//달력이 추가될 태그의 id
calendarIDs = ['fromJoinDate', 'toJoinDate', 'fromDropDate', 'toDropDate', 'fromBirthDate', 'toBirthDate'];
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

<div class="page-title"><span class="bullet-title">강의 검색</span></div>

<div class="content-container">

<form method="post" action="/teamP/study/lecture/search" name="lecForm" id="lecForm">
<!-- 범위 검색형 -->    
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강의코드</td><td class="table-input"><input type="number" min=1 name="alIdText"></td>
    		<td class="table-label">강의형태</td><td class="table-input"><select name="slCode"><option value="0">선택</option><c:forEach var="suppLec" items="${slList }" varStatus="status"><option value="${suppLec.slCode}">${suppLec.slName }</option></c:forEach></select></td>
    		<td class="table-label">강의분류</td><td class="table-input"><select name="lcCode"><option value="0">선택</option><c:forEach var="lecCate" items="${lcList }" varStatus="status"><option value="${lecCate.lcCode}">${lecCate.lcName }</option></c:forEach></select></td></tr>
    	<tr><td class="table-label">강의이름</td><td class="table-input"><input type="text" size=38 name="alName"></td>
    		<td class="table-label">과목</td><td class="table-input"><select name="sbjCode"><option value="0">선택</option><c:forEach var="subject" items="${sbjList }" varStatus="status"><option value="${subject.sbjCode}">${subject.sbjName }</option></c:forEach></select></td>
    		<td class="table-label">대상등급</td><td class="table-input"><select name="egCode"><option value="0">선택</option><c:forEach var="examGrade" items="${egList }" varStatus="status"><option value="${examGrade.egCode}">${examGrade.egName }</option></c:forEach></select></td></tr>
    	<tr><td class="table-label">강사</td><td class="table-input"><input type="text" size=15 name="tIdText" id="tIdText" readonly><a href="/teamP/study/newWindow/findTeacher" id="findTeacher" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 id="tName" readonly></td>
    		<td class="table-label">교재</td><td class="table-input"><select name="tbCode"><option value="0">선택</option><c:forEach var="tbookJoin" items="${tbList }" varStatus="status"><option value="${tbookJoin.tbCode}">${tbookJoin.tbName } - ${tbookJoin.sbjName }&nbsp;&nbsp;${tbookJoin.cName }</option></c:forEach></select></td>
    		<td class="table-label"></td><td class="table-input"></td></tr>
    
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
				<tr><th class="t-td-0">번호</th><th class="t-td-0">강의코드</th><th class="t-td-1">강의이름</th><th class="t-td-2">강의설명</th><th class="t-td-3">강의종류</th><th class="t-td-4">강의카테고리</th>
                	<th class="t-td-5">강사아이디</th><th class="t-td-6">강사이름</th><th class="t-td-7">학교</th><th class="t-td-8">과목</th>
                	<th class="t-td-9">과목상세</th><th class="t-td-10">강의대상등급</th><th class="t-td-11">교재</th><th class="t-td-12">삭제</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
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
