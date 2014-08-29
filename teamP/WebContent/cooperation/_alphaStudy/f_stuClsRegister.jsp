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
calendarIDs = ['joinDate', 'dropDate', 'birthDate'];		// 달력이 추가될 태그의 id
</script>

<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_alphaStudy/css/stuCommon.css">
<script type="text/javascript" src="/teamP/cooperation/_alphaStudy/script/stuCommon.js"></script>
<script type="text/javascript" src="/teamP/cooperation/script/focusInput.js"></script>

<style type="text/css">
</style>
<script type="text/javascript">
$(document).ready(function(e) {

	$('#subTitle-0').click(function(e) {
		$('#lecForm').slideToggle();
	});
	$('#subTitle-1').click(function(e) {
		$('#stuForm').slideToggle();
	});
	
	$('#regSubmit').click(function(e) {
		var conf = confirm('"'+$('#lecName').val()+'" 강의에 "'+$('#stuName').val()+'" 학생을 등록합니다.');
		e.preventDefault();
	});
	
	
	$('#lecResult table a').click(function(e) {
		$('#lecCode').val($(this).text());
//		alert($(this).parent().parent().children('td').eq(1).text());
		$('#lecName').val($(this).parent().parent().children('td').eq(1).text());
		$('#lecForm').hide();
		$('#lecResult').hide();
	});
	$('#stuResult table a').click(function(e) {
		$('#stuCode').val($(this).text());
		$('#stuName').val($(this).parent().parent().children('td').eq(1).text());
		$('#stuForm').hide();
		$('#stuResult').hide();
	});
});
</script>
</head>

<body>

<section>
<article>


<div class="content-container">

<a href="javascript:" id="subTitle-0"><div class="page-title"><span class="bullet-title"><span style="font-weight: bold; font-style: italic;">1. </span>강의 선택</span></div></a>

<form method="post" action="" name="lecForm" id="lecForm" style="display: none;">
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
    <!-- <div style="margin-top: 10px;"> -->
    <input type="submit" value="검색하기" class="buttons" id="lecSubmit"> <input type="reset" value="초기화" class="buttons" id="lecReset">
    <!-- </div> -->
</form>
    
    <div class="tab-container" id="lecResult" style="display: none;">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
   
        <div class="tab-content" style="border: 0px solid red;">
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
                <tr><td class="t-td-0"><a href="javascript:">00003</a></td><td class="t-td-1">혼자하는 수학2</td><td class="t-td-2">이연희</td><td class="t-td-3">수학</td><td class="t-td-4">고등학생</td>
                	<td class="t-td-5">3</td><td class="t-td-6">30</td><td class="t-td-7">102</td><td class="t-td-8">300,000</td>
                	<td class="t-td-9">18:00</td><td class="t-td-10">18:00</td><td class="t-td-11">18:00</td><td class="t-td-12">18:00</td>
                	<td class="t-td-13">18:00</td><td class="t-td-14">18:00</td><td class="t-td-15">18:00</td><td class="t-td-16">수학의 정석</td>
                	<td class="t-td-17"><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
                	<td>3</td><td>30</td><td>102</td><td>300,000</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>18:00</td>
                	<td>18:00</td><td>18:00</td><td>18:00</td><td>수학의 정석</td>
                	<td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">00001</a></td><td>혼자하는 수학</td><td>이연희</td><td>수학</td><td>고등학생</td>
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
    
    
    <!-- =================================================================================================== -->
    <!-- =================================================================================================== -->
    
    
<a href="javascript:" id="subTitle-1"><div class="page-title" style="margin-top: 50px;"><span class="bullet-title"><span style="font-weight: bold; font-style: italic;">2. </span>학생 선택</span></div></a>
  
<form method="post" action="" name="stuForm" id="stuForm" style="display: none;">  
    <table cellspacing="0" class="info-table" style="margin-top: 10px;">
    	<tr><td class="table-label">학생코드</td><td class="table-input"><input type="text" size=15 value="000001"> - <input type="text" size=15 value="000001"></td>
            <td class="table-label">주소</td><td class="table-input"><input type="text" size=30></td>
            <td class="table-label">부모님이름</td><td class="table-input"><input type="text" size=20 value="강동원"></td></tr>
        <tr><td class="table-label">이름</td><td class="table-input"><input type="text" size=20 value="이연희"></td>
            <td class="table-label" rowspan=2>생일</td><td class="table-input" rowspan=2><input type="date"> 부터 <input type="date"> 까지</td>
            <td class="table-label">부모님휴대폰</td><td class="table-input"><select><option>010</option><option>011</option><option>016</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td></tr>
        <tr><td class="table-label">학교코드</td><td class="table-input"><input type="text" size=8 value="00005"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="압구정고등학교"></td>
            <!-- <td class="table-label">주소</td><td class="table-input">000002</td> -->
            <td class="table-label">부모님이메일</td><td class="table-input"><input type="text" size=10 value="yeonhee">@<input type="text" size=15 value="hanmail.net"></td></tr>
        <tr><td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10">학년 - <input type="number" min="1" max="3" size="10">학년 <input type="number" min="1" max="20" size="10">반</td>
            <td class="table-label">집전화</td><td class="table-input"><select><option>02</option><option>031</option><option>032</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td>
            <td class="table-label">환불계좌</td><td class="table-input"><input type="text" size=20 value="222-111111-33-555"> <select><option>우리은행</option><option>국민은행</option><option>신한은행</option></select></td></tr>
        <tr><td class="table-label">학생구분</td><td class="table-input">
        		<select><option>미선택</option><option>초등학생</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select>
        		<select><option>미선택</option><option>초등학생</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select>
        		<select><option>미선택</option><option>초등학생</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td>
            <td class="table-label">본인휴대폰</td><td class="table-input"><select><option>010</option><option>011</option><option>016</option></select> <input type="tel" size=5 value="7777"> <input type="tel" size=5 value="7777"></td>
            <td class="table-label">회원아이디</td><td class="table-input"><input type="text" size=20 value="yeonhee" readonly></td></tr>
        <tr><td class="table-label">재학구분</td><td class="table-input"><select><option>미선택</option><option>재학중</option><option>졸업</option></select></td>
            <td class="table-label">본인이메일</td><td class="table-input"><input type="text" size=10 value="yeonhee">@<input type="text" size=15 value="hanmail.net"></td>
            <td class="table-label">가입일</td><td class="table-input"><input type="text" size=12 id="fromJoinDate"> - <input type="text" size=12 id="toJoinDate"></td></tr>
        <tr><td class="table-label">수강구분</td><td class="table-input"><select><option>미선택</option><option>수강중</option><option>미수강</option></select></td>
            <td class="table-label">생일</td><td class="table-input"><input type="text" size=12 id="fromBirthDate"> - <input type="text" size=12 id="toBirthDate"></td>
            <td class="table-label">탈퇴일</td><td class="table-input"><input type="text" size=12 id="fromDropDate"> - <input type="text" size=12 id="toDropDate"></td></tr>
        <tr><td class="table-label">추천인</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
            <td class="table-label">취미</td><td class="table-input"><input type="text" size=20 value="거울보기"></td>
            <td class="table-label"><!-- temp --></td><td class="table-input"><!-- temp --></td></tr>
        
    </table>
    <input type="submit" value="검색하기" class="buttons" id="stuSubmit"> <input type="reset" value="초기화" class="buttons" id="stuReset">
</form>  
    
    <div class="tab-container" id="stuResult" style="display: none;">
   		<div class="page-title"><span class="bullet-title">검색 결과</span></div>
   
        <div class="tab-content" style="border: 0px solid red;">
        	<select style="float: right; margin-right: 10px;"><option>10개씩 보기</option><option>20개씩 보기</option><option>30개씩 보기</option></select>
        	<div class="" style="overflow: visible; border: 0px solid transparent;">
            <table cellspacing="0" class="tab-table result-table" id="">
            	<div class="tabTable-th">
				<tr><th class="s-td-1">수강생코드</th><th class="s-td-2">이름</th><th class="s-td-3">학교</th><th class="s-td-4">학년</th>
                	<th class="s-td-5">수강상태</th><th class="s-td-6">주소</th><th class="s-td-7">연락처</th><th class="s-td-8">부모님 연락처</th>
                    <th class="s-td-9">가입일시</th><th class="s-td-10">삭제</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="s-td-1"><a href="javascript:">000001</a></td><td class="s-td-2">이연희</td><td class="s-td-3">압구정고등학교</td><td class="s-td-4">2</td>
                	<td class="s-td-5">수강중</td><td class="s-td-6">서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td class="s-td-7">010-7777-7777</td><td class="s-td-8">010-8888-8888</td>
                    <td class="s-td-9">temp</td><td class="s-td-10"><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                <tr><td><a href="javascript:">000002</a></td><td>한지민</td><td>신사여자고등학교</td><td>3</td><td>수강중</td>
                		<td>서울 강남구 압구정동 압구정 현대아파트 105동 2004호</td><td>010-1111-1111</td><td>010-8888-8888</td>
                		<td>temp</td><td><input type="button" value="삭제"></td></tr>
                		
                </tbody>
            </table>
            </div>
            
            <div class="paging">
            	<span><a href="#">이전 10개</a>...</span> <span><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> 
            		<a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a></span> <span>...<a href="#">다음 10개</a></span>
            </div>
        </div>
    </div>
    
	
	<div class="page-title" style="margin-top: 100px;"><span class="bullet-title">수강 등록 대상</span></div>
<form method="post" action="" id="regForm" name="regForm">
    <table cellspacing="0" class="info-table" style="margin-top: 10px; margin-bottom: 50px;">
    	<tr><td class="table-label">강의코드</td><td class="table-input"><input type="text" size=8 value="" id="lecCode" required><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=19 value="" id="lecName" required></td>
            <td class="table-label">학생코드</td><td class="table-input"><input type="text" size=15 value="" id="stuCode" required><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="" id="stuName" required></td>
            <td class="table-label"><input type="submit" value="등록하기" id="regSubmit"></td></tr>
    </table>
</form>

</div>

</article>
</section>

</body>
</html>
