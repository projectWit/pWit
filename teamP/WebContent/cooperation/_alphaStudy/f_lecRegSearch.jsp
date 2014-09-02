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
calendarIDs = ['lsFromDate', 'lsToDate', 'fromDropDate', 'toDropDate', 'fromBirthDate', 'toBirthDate'];
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

<div class="page-title"><span class="bullet-title">강의 스케줄 검색</span></div>

<div class="content-container">

<form method="post" action="" name="lecForm" id="lecForm">
<!-- 범위 검색형 -->    
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">스케줄코드</td><td class="table-input"><input type="number" min=1 name="lsId"></td>
    		<td class="table-label">강사</td><td class="table-input"><input type="text" size=15 name="tIdText" id="tIdText" readonly><a href="/teamP/study/newWindow/findTeacher" id="findTeacher" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 id="tName" readonly></td>
            <td class="table-label" rowspan=7>강의시각</td><td class="table-input">일 : <select name="ltCodeArray[0]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">스케줄설명</td><td class="table-input"><input type="text" size=38 name="alDescription" ></td>
        	<td class="table-label">강의형태</td><td class="table-input"><select name="slCode"><option value="0">선택</option><c:forEach var="suppLec" items="${slList }" varStatus="status"><option value="${suppLec.slCode}">${suppLec.slName }</option></c:forEach></select></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">월 : <select name="ltCodeArray[1]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의</td><td class="table-input"><input type="text" size=8 name="alIdText" id="alIdText" readonly><a href="/teamP/study/newWindow/findLecture" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 id="alName" readonly></td>
            <td class="table-label">강의분류</td><td class="table-input"><select name="lcCode"><option value="0">선택</option><c:forEach var="lecCate" items="${lcList }" varStatus="status"><option value="${lecCate.lcCode}">${lecCate.lcName }</option></c:forEach></select></td>
            <!-- <td class="table-label">주소</td> --><td class="table-input">화 : <select name="ltCodeArray[2]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 name="lsCostText" > 원</td>
            <td class="table-label">과목</td><td class="table-input"><select name="sbjCode"><option value="0">선택</option><c:forEach var="subject" items="${sbjList }" varStatus="status"><option value="${subject.sbjCode}">${subject.sbjName }</option></c:forEach></select></td>
            <!-- <td class="table-label">집전화</td> --><td class="table-input">수 : <select name="ltCodeArray[3]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">정원</td><td class="table-input"><input type="number" min=1 name="lsMaxText" > 명</td>
            <td class="table-label">교재</td><td class="table-input"><select name="tbCode"><option value="0">선택</option><c:forEach var="tbookJoin" items="${tbList }" varStatus="status"><option value="${tbookJoin.tbCode}">${tbookJoin.tbName } - ${tbookJoin.sbjName }&nbsp;&nbsp;${tbookJoin.cName }</option></c:forEach></select></td>
            <!-- <td class="table-label">본인휴대폰</td> --><td class="table-input">목 : <select name="ltCodeArray[4]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의실</td><td class="table-input"><select name="lrCode"><option value="0">선택</option><c:forEach var="lecRoom" items="${lrList }" varStatus="status"><option value="${lecRoom.lrCode}">${lecRoom.lrName }&nbsp;호</option></c:forEach></select></td>
            <td class="table-label">대상등급</td><td class="table-input"><select name="egCode"><option value="0">선택</option><c:forEach var="examGrade" items="${egList }" varStatus="status"><option value="${examGrade.egCode}">${examGrade.egName }</option></c:forEach></select></td>
            <!-- <td class="table-label">본인이메일</td> --><td class="table-input">금 : <select name="ltCodeArray[5]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의시작일</td><td class="table-input"><input type="text" size=15 name="lsFromDate" id="lsFromDate"></td>
            <td class="table-label"></td><td class="table-input"></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">토 : <select name="ltCodeArray[6]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의종료일</td><td class="table-input"><input type="text" size=15 name="lsToDate" id="lsToDate"></td>
        	<td class="table-label">강의상태</td><td class="table-input"><select name="lsCode"><option value="0">선택</option><c:forEach var="lecStatus" items="${lsList }" varStatus="status"><option value="${lecStatus.lsCode}">${lecStatus.lsName }</option></c:forEach></select></td>
            <td class="table-label"></td><td class="table-input"></td>
            </tr>
        
    </table>
<!-- //범위 검색형 --> 
    <input type="submit" value="검색시작" class="buttons" id="lecSubmit"> <input type="reset" value="초기화" class="buttons" id="lecReset">
</form>
    
        
    <!-- 탭 컨테이너 영역 -->
    
    <!-- // 탭 컨테이너 영역 -->
    
</div>

</article>
</section>

</body>
</html>
