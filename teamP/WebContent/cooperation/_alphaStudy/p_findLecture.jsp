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

<div class="page-title"><span class="bullet-title">강의 검색</span></div>

<div class="content-container" style="min-height: 300px; padding: 0px;">
<form method="post" action="/teamP/study/newWindow/findLecture" name="lecForm" id="lecForm">
<!-- 범위 검색형 -->    
    <table cellspacing="0" class="info-table" style="min-width: 400px;">
    	<tr><td class="find-label">코드</td><td class="find-input"><input type="number" size=8 min=1 name="alIdText" style="width: 60px;"></td>
    		<td class="find-label">이름</td><td class="find-input"><input type="text" size=8 name="alName"></td>
            <td class="find-label">과목</td><td class="find-input"><select name="sbjCode"><option value="0">선택</option><c:forEach var="subject" items="${sbjList }" varStatus="status"><option value="${subject.sbjCode}">${subject.sbjName }</option></c:forEach></select></td>
            </tr>
        <tr><td class="find-label">강사</td><td class="find-input"><input type="text" size=8 name="eKname"></td>
    		<td class="find-label">형태</td><td class="find-input"><select name="slCode"><option value="0">선택</option><c:forEach var="suppLec" items="${slList }" varStatus="status"><option value="${suppLec.slCode}">${suppLec.slName }</option></c:forEach></select></td>
            <td class="find-label">분류</td><td class="find-input"><select name="lcCode"><option value="0">선택</option><c:forEach var="lecCate" items="${lcList }" varStatus="status"><option value="${lecCate.lcCode}">${lecCate.lcName }</option></c:forEach></select></td>
            </tr>
       
    </table>
<!-- //범위 검색형 --> 
    <input type="submit" value="검색시작" class="buttons" id="lecSubmit" style=""> <!-- <input type="reset" value="초기화" class="buttons" id="lecReset"> -->
</form>

    <div class="tab-container" style="margin-top: 20px; margin-bottom: 0px;">
   
   	<div class="popup-content" style=" ">
        <div class="tab-content" id="lecResult" style="border: 0px solid #aaa; padding: 0px;">
        	
        <!-- 강좌 탭 -->
            <table cellspacing="0" class="tab-table" id="table-0" style="min-width: 380px; max-width: 380px; margin: 0px;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">코드</th><th class="t-td-1">이름</th><th class="t-td-2">과목</th><!-- <th class="t-td-3">이메일</th> --><th class="t-td-4">강사</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td" id="findLectureResult">
			<c:forEach var="lecture" items="${lecList }" varStatus="status">
				<%-- <tr><td class="t-td-0">${pagingModel.no-status.count+1 }</td><td class="t-td-0"><a href="#">${lecture.alId }</a></td><td class="t-td-1">${lecture.alName }</td><td class="t-td-2">${lecture.alDescription }</td>
                	<td class="t-td-3">${lecture.slName }</td><td class="t-td-4">${lecture.lcName }</td><td class="t-td-5">${lecture.tId }</td>
                	<td class="t-td-6">${lecture.eKname }</td><td class="t-td-7">${lecture.sgName }</td><td class="t-td-8">${lecture.sbjCatName }</td>
                	<td class="t-td-9">${lecture.sbjName }</td><td class="t-td-10">${lecture.egName }</td><td class="t-td-11">${lecture.tbName } - ${lecture.sbjName2 } ${lecture.cName }</td>
                	<td class="t-td-12"><input type="button" value="삭제"></td></tr> --%>
                <tr><td class="t-td-0"><a href="#">${lecture.alId }</a></td><td class="t-td-1">${lecture.alName }</td>
                	<td class="t-td-9">${lecture.sbjName }</td><td class="t-td-6">${lecture.eKname }</td></tr>
			</c:forEach>
                
                </tbody>
            </table>
        <!-- //강좌 탭 -->
    
            
        </div>
        
    </div>
    </div>
</div>

</article>
</section>

</body>
</html>
