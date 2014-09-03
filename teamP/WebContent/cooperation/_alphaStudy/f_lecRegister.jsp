<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<script type="text/javascript">
calendarIDs = ['lsFromDate', 'lsToDate', 'birthDate'];		// 달력이 추가될 태그의 id
</script>

<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>

<body>

<section>
<article>

<div class="page-title"><span class="bullet-title">강의 스케줄 등록</span></div>

<div class="content-container">

<form method="post" action="/teamP/study/lecture/register" name="regForm" id="regForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강의</td><td class="table-input"><input type="text" size=8 name="alIdText" id="alIdText" readonly><a href="/teamP/study/newWindow/findLecture" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 id="alName" readonly></td>
    		<!-- <td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 max=10000000> 원</td> -->
            <td class="table-label" rowspan=7>강의시각</td><td class="table-input">일 : <select name="ltCodeArray[0]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 name="lsCostText" > 원</td>
        	<!-- <td class="table-label">교재</td><td class="table-input"></td> -->
            <!-- <td class="table-label">생일</td> --><td class="table-input">월 : <select name="ltCodeArray[1]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">정원</td><td class="table-input"><input type="number" min=1 name="lsMaxText" > 명</td>
            <!-- <td class="table-label">강의정원</td><td class="table-input"><input type="number" min=1 max=1000> 명 이하</td> -->
            <!-- <td class="table-label">주소</td> --><td class="table-input">화 : <select name="ltCodeArray[2]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의실</td><td class="table-input"><select name="lrCode"><c:forEach var="lecRoom" items="${lrList }" varStatus="status"><option value="${lecRoom.lrCode}">${lecRoom.lrName }&nbsp;호</option></c:forEach></select></td>
            <!-- <td class="table-label">강의실</td><td class="table-input"><select><option>미선택</option><option>102호</option><option>103호</option></select></td> -->
            <!-- <td class="table-label">집전화</td> --><td class="table-input">수 : <select name="ltCodeArray[3]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">스케줄설명</td><td class="table-input"><textarea rows="1" name="lsDescription" style="margin-right: 0px; padding-right: 0px; width: 97%;"></textarea></td>
            <!-- <td class="table-label"></td><td class="table-input"></td> -->
            <!-- <td class="table-label">본인휴대폰</td> --><td class="table-input">목 : <select name="ltCodeArray[4]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의시작일</td><td class="table-input"><input type="text" size=15 name="lsFromDate" id="lsFromDate"></td>
            <!-- <td class="table-label"></td><td class="table-input"></td> -->
            <!-- <td class="table-label">본인이메일</td> --><td class="table-input">금 : <select name="ltCodeArray[5]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의종료일</td><td class="table-input"><input type="text" size=15 name="lsToDate" id="lsToDate"></td>
            <!-- <td class="table-label"></td><td class="table-input"></td> -->
            <!-- <td class="table-label">생일</td> --><td class="table-input">토 : <select name="ltCodeArray[6]" class="lecTime"><option value="0">선택</option><c:forEach var="lecTime" items="${ltList }" varStatus="status"><option value="${lecTime.ltCode}">${lecTime.ltFromTime } - ${lecTime.ltToTime }</option></c:forEach></select></td>
            </tr>
        <tr><td class="table-label">강의상태</td><td class="table-input"><select name="lsCode"><c:forEach var="lecStatus" items="${lsList }" varStatus="status"><option value="${lecStatus.lsCode}">${lecStatus.lsName }</option></c:forEach></select></td>
            <!-- <td class="table-label"></td><td class="table-input"></td> -->
            <td class="table-label"></td><td class="table-input"></td>
            </tr>
        
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="등록하기" class="buttons" id="regSubmit"> <input type="reset" value="초기화" class="buttons" id="regReset">
    <!-- </div> -->
</form>

</div>

</article>
</section>

</body>
</html>
