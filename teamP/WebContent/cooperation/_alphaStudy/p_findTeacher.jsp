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
<article style="width: 400px; border: 0px solid red; margin: 0px; padding: 0px;">

<div class="page-title"><span class="bullet-title">강사 검색</span></div>

<div class="content-container" style="min-height: 300px; padding: 0px;">
<form method="post" action="/teamP/study/newWindow/findTeacher" name="lecForm" id="lecForm">
<!-- 범위 검색형 -->    
    <table cellspacing="0" class="info-table" style="min-width: 400px;">
    	<tr><td class="find-label">아이디</td><td class="find-input"><input type="number" size=8 min=1 name="tIdText" style="width: 70px;"></td>
    		<td class="find-label">이름</td><td class="find-input"><input type="text" size=8 name="eKname"></td>
            <td class="find-label">과목</td><td class="find-input"><select name="sbjCatCode"><option value="0">선택</option><c:forEach var="sbjCate" items="${scList }" varStatus="status"><option value="${sbjCate.sbjCatCode}">${sbjCate.sbjCatName }</option></c:forEach></select></td>
            </tr>
       
    </table>
<!-- //범위 검색형 --> 
    <input type="submit" value="검색시작" class="buttons" id="lecSubmit" style=""> <!-- <input type="reset" value="초기화" class="buttons" id="lecReset"> -->
</form>

    <div class="tab-container" style="margin-top: 20px; margin-bottom: 0px;">
   
        <div class="tab-content" id="lecResult" style="width: 400px; overflow: scroll; overflow-x: hidden; border: 1px solid #aaa; padding: 0px;">
        	
        <!-- 강좌 탭 -->
            <table cellspacing="0" class="tab-table" id="table-0" style="min-width: 380px; max-width: 380px; margin: 0px;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">아이디</th><th class="t-td-1">이름</th><th class="t-td-2">과목</th><!-- <th class="t-td-3">이메일</th> --><th class="t-td-4">휴대폰</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td" id="findTeacherResult">
			<c:forEach var="teacher" items="${tList }" varStatus="status">
				<tr><td class="t-td-0">${teacher.tId }</td><td class="t-td-1">${teacher.eKname }</td><td class="t-td-2">${teacher.sbjCatName }</td>
                	<%-- <td class="t-td-3">${teacher.eEmail }</td> --%><td class="t-td-4">${teacher.eMobile }</td></tr>
			</c:forEach>
                
                </tbody>
            </table>
        <!-- //강좌 탭 -->
    
            
        </div>
    </div>
</div>

</article>
</section>

</body>
</html>
