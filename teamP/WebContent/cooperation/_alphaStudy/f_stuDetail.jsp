<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
calendarIDs = ['birthDate'];		// 달력이 추가될 태그의 id
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

<div class="page-title"><span class="bullet-title">학생 상세</span></div>

<div class="content-container">

<form method="post" action="" name="stuForm" id="stuForm">
    <table cellspacing="0" class="info-table">
    	<tr><td class="table-photo" rowspan="7" style="border-bottom: 1px solid transparent;'"><img src="/teamP/cooperation/_alphaStudy/img/photo_none2.gif"></td>
        	<td class="table-label">학생코드</td><td class="table-input"><input type="text" size=20 value="000001" id="test1"></td>
            <td class="table-label" rowspan="3">주소</td><td class="table-input" rowspan="3"><input type="text" size=5>-<input type="text" size=5> <input type="button" value="우편번호찾기"><textarea rows="1" style="margin-right: 0px; padding-right: 0px; width: 97%;"></textarea><input type="text" size=30></td>
            <td class="table-label">부모님이름</td><td class="table-input"><input type="text" size=20 value="강동원"></td></tr>
        <tr><td class="table-label">이름</td><td class="table-input"><input type="text" size=20 value="이연희" id="test2"></td>
            <!-- <td class="table-label">주소</td><td class="table-input">000002</td> -->
            <td class="table-label">부모님휴대폰</td><td class="table-input"><select><option>010</option><option>011</option><option>016</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td></tr>
        <tr><td class="table-label">학교코드</td><td class="table-input"><input type="text" size=8 value="00005"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="압구정고등학교"></td>
            <!-- <td class="table-label">주소</td><td class="table-input">000002</td> -->
            <td class="table-label">부모님이메일</td><td class="table-input"><input type="text" size=10 value="yeonhee">@<input type="text" size=15 value="hanmail.net"></td></tr>
        <tr><td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10">학년 <input type="number" min="1" max="20" size="10">반</td>
            <td class="table-label">집전화</td><td class="table-input"><select><option>02</option><option>031</option><option>032</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td>
            <td class="table-label">환불계좌</td><td class="table-input"><input type="text" size=20 value="222-111111-33-555"> <select><option>우리은행</option><option>국민은행</option><option>신한은행</option></select></td></tr>
        <tr><td class="table-label">학생구분</td><td class="table-input"><select><option>미선택</option><option>초등학생</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td>
            <td class="table-label">본인휴대폰</td><td class="table-input"><select><option>010</option><option>011</option><option>016</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td>
            <td class="table-label">회원아이디</td><td class="table-input"><input type="text" size=20 value="yeonhee" readonly></td></tr>
        <tr><td class="table-label">재학구분</td><td class="table-input"><select><option>미선택</option><option>재학중</option><option>졸업</option></select></td>
            <td class="table-label">본인이메일</td><td class="table-input"><input type="text" size=10 value="yeonhee">@<input type="text" size=15 value="hanmail.net"></td>
            <td class="table-label">가입일</td><td class="table-input"><input type="text" size=15 id="joinDate" readonly></td></tr>
        <tr><td class="table-label">수강구분</td><td class="table-input"><select><option>미선택</option><option>수강중</option><option>미수강</option></select></td>
            <td class="table-label">생일</td><td class="table-input"><input type="text" size=15 id="birthDate"></td>
            <td class="table-label">탈퇴일</td><td class="table-input"><input type="text" size=15 id="dropDate" readonly></td></tr>
        <tr><td class="table-photo"><input type="button" value="사진 올리기"></td>
        	<td class="table-label">추천인</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">취미</td><td class="table-input"><input type="text" size=20 value="거울보기"></td>
            <td class="table-label"><!-- temp --></td><td class="table-input"><!-- temp --></td></tr>
        
    </table>
    <input type="submit" value="정보수정" class="buttons" id="stuSubmit"> <input type="button" value="학생삭제" class="buttons" id="stuDelete">
</form>

    <div class="tab-container">
    	<div class="tabs">
        	<a href="#" class="tab-active" style="margin-left: 10px;">강좌</a><a href="#">교재</a><a href="#">수납/회계</a><a href="#">출결</a><a href="#">성적</a><a href="#">과제</a><a href="#">진도</a><a href="#">보강</a>
            <div class="fill-remains"></div>
        </div>
   
        <div class="tab-content">
        	<div class="limit-table">
        	
        <!-- 강좌 탭 -->
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수강신청일</th><th class="t-td-1">강의코드</th><th class="t-td-2">강의명</th><th class="t-td-3">강사명</th><th class="t-td-4">수강료</th>
					<th class="t-td-5">수강상태</th><th class="t-td-6">수납방법</th><th class="t-td-7">일</th><th class="t-td-8">월</th>
					<th class="t-td-9">화</th><th class="t-td-10">수</th><th class="t-td-11">목</th><th class="t-td-12">금</th>
					<th class="t-td-13">토</th><th class="t-td-14">삭제</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-07</td><td class="t-td-1"><a href="@Study_lecDetail.jsp">00005</a></td><td class="t-td-2">발로 배우는 냄새나는 수학2</td><td class="t-td-3">강동원</td><td class="t-td-4">300,000</td>
                	<td class="t-td-5">수강중</td><td class="t-td-6">현금</td><td class="t-td-7">18:00</td><td class="t-td-8">18:00</td>
                	<td class="t-td-9">18:00</td><td class="t-td-10">18:00</td><td class="t-td-11">18:00</td><td class="t-td-12">18:00</td>
                	<td class="t-td-13">18:00</td><td class="t-td-14"><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                <tr><td>2014-07-07</td><td><a href="@Study_lecDetail.jsp">00005</a></td><td>혼자하는 수학</td><td>강동원</td><td>300,000</td>
                	<td>수강중</td><td>현금</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td><input type="button" value="삭제"></td></tr>
                
                
                   
                </tbody>
            </table>
        <!-- //강좌 탭 -->
        
        
        <!-- 교재 탭 -->
            <table cellspacing="0" class="tab-table" id="table-1" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">구입일</th><th class="t-td-1">교재명</th><th class="t-td-2">학교</th><th class="t-td-3">학년</th><th class="t-td-4">학기</th>
					<th class="t-td-5">출판사</th><th class="t-td-6">가격</th><th class="t-td-7">구입개수</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-07</td><td class="t-td-1">(실력)수학의 정석 - 적분과 통계</td><td class="t-td-2">고등학교</td><td class="t-td-3">2, 3</td><td class="t-td-4">전학기</td>
                	<td class="t-td-5">성지출판</td><td class="t-td-6">16,000</td><td class="t-td-7">1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                <tr><td>2014-07-07</td><td>(실력)수학의 정석 - 적분과 통계</td><td>고등학교</td><td>2, 3</td><td>전학기</td><td>성지출판</td>
                	<td>16,000</td><td>1</td></tr>
                   
                </tbody>
            </table>
        <!-- //교재 탭 -->
        
        
        <!-- 수납 탭 -->
            <table cellspacing="0" class="tab-table" id="table-2" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">일자</th><th class="t-td-1">종류</th><th class="t-td-2">항목명</th><th class="t-td-3">가격</th><th class="t-td-4">개수</th>
					<th class="t-td-5">수납/환불</th><th class="t-td-6">납부방법</th><th class="t-td-7">환불계좌</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-07</td><td class="t-td-1">수강료</td><td class="t-td-2">혼자하는 수학</td><td class="t-td-3">300,000</td><td class="t-td-4">1</td>
                	<td class="t-td-5">수납</td><td class="t-td-6">카드</td><td class="t-td-7"></td></tr>
                <tr><td>2014-07-07</td><td>교재비</td><td>수학의 정석</td><td>16,000</td><td>1</td><td>수납</td>
                	<td>현금</td><td></td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                <tr><td>2014-07-07</td><td>수강료</td><td>혼자하는 수학</td><td>300,000</td><td>12/30</td><td>환불</td>
                	<td>통장환불</td><td>444-555555-22-111</td></tr>
                   
                </tbody>
            </table>
        <!-- //수납 탭 -->
        
        
        <!-- 출석 탭 -->
            <table cellspacing="0" class="tab-table" id="table-3" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">일자</th><th class="t-td-1">종류</th><th class="t-td-2">강의명</th><th class="t-td-3">규정출석시각</th><th class="t-td-4">출석시각</th>
					<th class="t-td-5">규정귀가시각</th><th class="t-td-6">귀가시각</th><th class="t-td-7">횟수(최근 한달)</th><th class="t-td-8">사유</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">지각</td><td class="t-td-2">혼자하는 수학</td><td class="t-td-3">18:00</td><td class="t-td-4">18:30</td>
					<td class="t-td-5">20:00</td><td class="t-td-6">20:00</td><td class="t-td-7">2</td><td class="t-td-8">그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                <tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
				<tr><td>2014-07-08</td><td>지각</td><td>혼자하는 수학</td><td>18:00</td><td>18:30</td>
					<td>20:00</td><td>20:00</td><td>2</td><td>그냥</td></tr>
                   
                </tbody>
            </table>
        <!-- //출석 탭 -->
        
        
        <!-- 성적 탭 -->
            <table cellspacing="0" class="tab-table" id="table-4" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">시험일자</th><th class="t-td-1">시험종류</th><th class="t-td-2">과목</th><th class="t-td-3">평균점수</th><th class="t-td-4">획득점수</th>
					<th class="t-td-5">등급</th><th class="t-td-6">선생님 메모</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">연합고사</td><td class="t-td-2">수학</td><td class="t-td-3">40</td><td class="t-td-4">70</td>
					<td class="t-td-5">3</td><td class="t-td-6">머리는 좋은데 열심히 안 함</td></tr>
                <tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                   
                </tbody>
            </table>
        <!-- //성적 탭 -->
        
        
        <!-- 과제 탭 -->
            <table cellspacing="0" class="tab-table" id="table-5" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">과제부여일</th><th class="t-td-1">강좌명</th><th class="t-td-2">규정제출기한</th><th class="t-td-3">과제제출시각</th><th class="t-td-4">구분</th>
					<th class="t-td-5">과제내용</th><th class="t-td-6">한줄 평가</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">혼자하는 수학</td><td class="t-td-2">2014-07-14</td><td class="t-td-3">2014-07-11</td><td class="t-td-4">제출</td>
					<td class="t-td-5">유제풀이</td><td class="t-td-6">풀이 방법이 창의적이었음</td></tr>
                <tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                <tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
				<tr><td>2014-07-08</td><td>중간고사</td><td>수학</td><td>40</td><td>70</td>
					<td>2</td><td>머리는 좋은데 열심히 안 함</td></tr>
                   
                </tbody>
            </table>
        <!-- //과제 탭 -->
        
        
        <!-- 진도 탭 -->
            <table cellspacing="0" class="tab-table" id="table-6" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">수업일자</th><th class="t-td-1">강좌명</th><th class="t-td-2">수업내용</th><th class="t-td-3">개선사항</th><th class="t-td-4">종합평가</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">혼자하는 수학</td><td class="t-td-2">부정적분의 기본성질</td>
                	<td class="t-td-3">미분에 대한 개념이해가 더 필요</td><td class="t-td-4">열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>혼자하는 수학</td><td>미분의 기본성질</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //진도 탭 -->
        
        
        <!-- 보강 탭 -->
            <table cellspacing="0" class="tab-table" id="table-7" style="display: none;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">보강일자</th><th class="t-td-1">과목</th><th class="t-td-2">보강내용</th><th class="t-td-3">개선사항</th><th class="t-td-4">종합평가</th></tr>
                </div>
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">2014-07-08</td><td class="t-td-1">수학</td><td class="t-td-2">중간고사 대비</td>
                	<td class="t-td-3">미분에 대한 개념이해가 더 필요</td><td class="t-td-4">열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                <tr><td>2014-07-08</td><td>수학</td><td>중간고사 대비</td>
                	<td>미분에 대한 개념이해가 더 필요</td><td>열심히 노력하면 좋은 결과가 있을 것</td></tr>
                
                   
                </tbody>
            </table>
        <!-- //보강 탭 -->
            
            
            
            </div>
        </div>
    </div>
</div>

</article>
</section>

</body>
</html>
