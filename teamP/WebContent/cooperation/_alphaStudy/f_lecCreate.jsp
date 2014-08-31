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
calendarIDs = ['joinDate', 'dropDate', 'birthDate'];		// 달력이 추가될 태그의 id
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

<div class="page-title"><span class="bullet-title">강의 개설</span></div>

<div class="content-container">

<form method="post" action="/teamP/study/lecture/create" name="regForm" id="regForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강의이름</td><td class="table-input"><input type="text" size=38 name="alName" required></td>
    		<td class="table-label">강의형태</td><td class="table-input"><select name="slCode"><c:forEach var="suppLec" items="${slList }" varStatus="status"><option value="${suppLec.slCode}">${suppLec.slName }</option></c:forEach></select></td>
    		<td class="table-label">강의분류</td><td class="table-input"><select name="lcCode"><c:forEach var="lecCate" items="${lcList }" varStatus="status"><option value="${lecCate.lcCode}">${lecCate.lcName }</option></c:forEach></select></td></tr>
    	<tr><td class="table-label">강사</td><td class="table-input"><input type="text" size=15 name="tIdText" id="tIdText" readonly required><a href="/teamP/study/newWindow/findTeacher" id="findTeacher" class="newWindow" rel="0" ><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 id="tName" readonly required></td>
    		<td class="table-label">과목</td><td class="table-input"><select name="sbjCode"><c:forEach var="subject" items="${sbjList }" varStatus="status"><option value="${subject.sbjCode}">${subject.sbjName }</option></c:forEach></select></td>
    		<td class="table-label">대상등급</td><td class="table-input"><select name="egCode"><c:forEach var="examGrade" items="${egList }" varStatus="status"><option value="${examGrade.egCode}">${examGrade.egName }</option></c:forEach></select></td></tr>
    	<tr><td class="table-label">교재</td><td class="table-input"><select name="tbCode"><c:forEach var="textbook" items="${tbList }" varStatus="status"><option value="${textbook.tbCode}">${textbook.tbName } - ${textbook.sbjName }&nbsp;&nbsp;${textbook.cName }</option></c:forEach></select></td>
    		<td class="table-label"></td><td class="table-input"></td>
    		<td class="table-label"></td><td class="table-input"></td></tr>
    	<tr><td class="table-label">강의설명</td><td class="table-input" colspan=5><textarea rows="3" name="alDescription" style="margin-right: 0px; padding-right: 0px; width: 99%;"></textarea></td></tr>
    </table>
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="개설하기" class="buttons" id="regSubmit"> <input type="reset" value="초기화" class="buttons" id="regReset">
    <!-- </div> -->
</form>

</div>

</article>
</section>

</body>
</html>
