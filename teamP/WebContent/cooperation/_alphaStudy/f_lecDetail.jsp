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

<div class="page-title"><span class="bullet-title">강의 상세</span></div>

<div class="content-container">

<form method="post" action="" name="lecForm" id="lecForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-label">강의코드</td><td class="table-input"><input type="text" size=20 value="000001"></td>
    		<td class="table-label">수강료</td><td class="table-input"><input type="number" min=1 max=10000000> 원</td>
            <td class="table-label" rowspan=7>강의시각</td><td class="table-input">일 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">강의명</td><td class="table-input"><input type="text" size=20 value="혼자하는 수학"></td>
        	<td class="table-label">교재</td><td class="table-input"><input type="text" size=8 value="00005"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="수학의 정석"></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">월 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">강의 정원</td><td class="table-input"><input type="number" min=1 max=100> 명 이하</td>
            <!-- <td class="table-label">주소</td> --><td class="table-input">화 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">과목</td><td class="table-input"><select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
            <td class="table-label">강의실</td><td class="table-input"><select><option>미선택</option><option>102호</option><option>103호</option></select></td>
            <!-- <td class="table-label">집전화</td> --><td class="table-input">수 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년</td>
            <td class="table-label">강의개설일</td><td class="table-input"><input type="text" size=15 id="joinDate" readonly></td>
            <!-- <td class="table-label">본인휴대폰</td> --><td class="table-input">목 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">학생구분</td><td class="table-input"><select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td>
            <td class="table-label">강의삭제일</td><td class="table-input"><input type="text" size=15 id="dropDate" readonly></td>
            <!-- <td class="table-label">본인이메일</td> --><td class="table-input">금 : <input type="time"></td>
            </tr>
        <tr><td class="table-label">강의대상등급</td><td class="table-input"><input type="number" min="1" max="9" size="10"> 등급</td>
            <td class="table-label"><!-- 탈퇴일 --></td><td class="table-input"><!-- 000002 --></td>
            <!-- <td class="table-label">생일</td> --><td class="table-input">토 : <input type="time" value="18:00"></td>
            </tr>
        
    </table>
    <input type="submit" value="정보수정" class="buttons" id="lecSubmit"> <input type="button" value="강의삭제" class="buttons" id="lecDelete">
</form>
    
    <div class="tab-container">
    	<div class="tabs">
        	<a href="#" class="tab-active" style="margin-left: 10px;">수강생</a><a href="#">출결</a><a href="#">과제</a><a href="#">진도</a>
            <div class="fill-remains"></div>
        </div>
   
        <div class="tab-content">
        	<div class="limit-table">
        	
        <!-- 수강생 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수강신청일</th><th class="t-td-1">학생코드</th><th class="t-td-2">이름</th><th class="t-td-3">학교</th><th class="t-td-4">학년</th>
                	<th class="t-td-5">최근등급</th><th class="t-td-6">주소</th><th class="t-td-7">본인휴대폰</th><th class="t-td-8">부모님휴대폰</th>
                    <th class="t-td-9">집전화</th><th class="t-td-10">생일</th><th class="t-td-11">삭제</th><!-- <th class="t-td-12">토</th> --></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-07</td><td class="t-td-1"><a href="@Study_stuDetail.jsp">000001</a></td><td class="t-td-2">강동원</td><td class="t-td-3">압구정고등학교</td><td class="t-td-4">2</td>
                	<td class="t-td-5">2</td><td class="t-td-6">서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td class="t-td-7">010-1111-1111</td><td class="t-td-8">010-2222-2222</td>
                    <td class="t-td-9">02-7777-7777</td><td class="t-td-10">7월 10일</td><td class="t-td-11"><input type="button" value="삭제"></td><!-- <td class="t-td-12">18:00</td> --></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_stuDetail.jsp">000001</a></td><td>강동원</td><td>압구정고등학교</td><td>2</td>
                	<td>2</td><td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-2222-2222</td>
                    <td>02-7777-7777</td><td>7월 10일</td><td><input type="button" value="삭제"></td></tr>
                
                   
                </tbody>
            </table>
        <!-- //수강생 탭 -->
        
 
        <!-- 출석 탭 -->
            <table cellspacing="0" class="tab-table" id="table-1" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">일자</th><th class="t-td-1">종류</th><th class="t-td-2">학생코드</th><th class="t-td-3">학생이름</th><th class="t-td-4">규정출석시각</th>
					<th class="t-td-5">출석시각</th><th class="t-td-6">규정귀가시각</th><th class="t-td-7">귀가시각</th><th class="t-td-8">횟수(최근 한달)</th><th class="t-td-9">사유</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">지각</td><td class="t-td-2">000001</td><td class="t-td-3">이연희</td><td class="t-td-4">18:00</td>
                	<td class="t-td-5">18:30</td><td class="t-td-6">20:00</td><td class="t-td-7">20:00</td><td class="t-td-8">2</td><td class="t-td-9">그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>000001</td><td>이연희</td><td>18:00</td>
                	<td>18:30</td><td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //출석 탭 -->
        
      
        
        <!-- 과제 탭 -->
            <table cellspacing="0" class="tab-table" id="table-2" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">과제부여일</th><th class="t-td-1">규정제출기한</th>
					<th class="t-td-2">과제내용</th><th class="t-td-3">개선 사항</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">2014-07-14</td>
					<td class="t-td-2">유제풀이</td><td class="t-td-3">과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                <tr><td>2014-07-08</td><td>2014-07-14</td><td>유제풀이</td><td>과제 제출형에서 한문제 이상 발표형으로 전환</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //과제 탭 -->
        
        
        <!-- 진도 탭 -->
            <table cellspacing="0" class="tab-table" id="table-3" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수업일자</th><th class="t-td-1">수업내용</th><th class="t-td-2">개선사항</th><th class="t-td-3">종합평가</th>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">부정적분의 기본성질</td>
                	<td class="t-td-2">미분에 대한 개념이해가 더 필요</td><td class="t-td-3">열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>미분의 기본성질</td><td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //진도 탭 -->
            
            
            </div>
        </div>
    </div>
</div>

</article>
</section>

</body>
</html>
