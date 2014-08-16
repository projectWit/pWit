<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<style type="text/css">

</style>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css">
<link rel="stylesheet" type="text/css" href="../css/calendar.css">
<script type="text/javascript">
calendarIDs = ['birthDate'];		// 달력이 추가될 태그의 id
</script>

<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_alphaStudy/css/stuCommon.css">
<script type="text/javascript" src="/teamP/cooperation/_alphaStudy/script/stuCommon.js"></script>

<script type="text/javascript">
$(document).ready(function(e) {
	
	$('#addCode').click(function(e) {
		var item = $('.tab-active');
		var index = $('.tabs a').index(item);
		$('#table-'+index+' .tabTable-td').append('<tr><td>2</td><td>00004</td><td><input type="text" style="width: 97%;"></td><td><select></select></td></tr>');

// 디비에서 학교 코드 긁어와서 for문으로 돌 부분 ============================
		$('#table-'+index+' .tabTable-td tr select').append('<option>중학교</option>');
		$('#table-'+index+' .tabTable-td tr select').append('<option>고등학교</option>');
// ============================================================
		newNo();
	});
	$('#modCode').click(function(e) {
		var item = $('.tab-active');
		var index = $('.tabs a').index(item);
		var modAreaText = $('#table-'+index+' .tabTable-td tr[class*="selected"] td.modArea').text(); //********** 여기 할 차례
		$('#table-'+index+' .tabTable-td tr[class*="selected"] td.modArea').html('<input type="text" style="width: 97%;" value="'+modAreaText+'">');
		$('#table-'+index+' .tabTable-td tr[class*="selected"] td.modArea input').select();
	});
	$('#upCode').click(function(e) {
		var item = $('.tab-active');
		var index = $('.tabs a').index(item);
		$('#table-'+index+' .tabTable-td tr[class*="selected"]').prev().before($('#table-'+index+' .tabTable-td tr[class*="selected"]'));
		newNo();
	});
	$('#downCode').click(function(e) {
		var item = $('.tab-active');
		var index = $('.tabs a').index(item);
		$('#table-'+index+' .tabTable-td tr[class*="selected"]').next().after($('#table-'+index+' .tabTable-td tr[class*="selected"]'));
		newNo();
	});
	$('#delCode').click(function(e) {
		var item = $('.tab-active');
		var index = $('.tabs a').index(item);
		$('#table-'+index+' .tabTable-td tr[class*="selected"]').remove();
		newNo();
	});
	
	
});
function newNo() {
	var item = $('.tab-active');
	var index = $('.tabs a').index(item);
	var length = $('#table-'+index+' .tabTable-td tr').length;
	
	for (var i=0; i< length; i++) {
		$('#table-'+index+' .tabTable-td tr').eq(i).children('td').eq(0).text(i+1);
	}
}
</script>
</head>

<body>

<section>
<article>

<div class="page-title"><span class="bullet-title">코드 목록</span></div>

<div class="content-container">

    <div class="tab-container" style="margin-top: 20px;">
    	<div class="tabs">
        	<a href="#" class="tab-active" style="margin-left: 10px;">학교</a><a href="#">학생구분</a><a href="#">재학구분</a><a href="#">수강구분</a>
        	<a href="#">과목</a><a href="#">교재</a><a href="#">시험종류</a><a href="#">등급</a><a href="#">강의실</a><a href="#">전화국번</a><a href="#">휴대폰국번</a>
            <div class="fill-remains"></div>
        </div>
   
        <div class="tab-content" style="height: 500px;">
        	<div class="limit-table" style="height: 450px;">
        	
        <!-- 강좌 탭 -->
            <table cellspacing="0" class="tab-table" id="table-0" style="">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">No.</th><th class="t-td-1">학교코드</th><th class="t-td-2">학교이름</th><th class="t-td-3">학교구분</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <tr><td class="t-td-0">1</td><td class="t-td-1">00005</td><td class="t-td-2">강남고등학교</td><td class="t-td-3">고등학교</td></tr>
                <tr><td>2</td><td>00004</td><td class="modArea">경기고등학교</td><td>고등학교</td></tr>
                <tr><td>3</td><td>00001</td><td class="modArea">서울고등학교</td><td>고등학교</td></tr>
                <tr><td>4</td><td>00002</td><td class="modArea">인천고등학교</td><td>고등학교</td></tr>
                <tr><td>5</td><td>00006</td><td class="modArea">광주고등학교</td><td>고등학교</td></tr>
                <tr><td>6</td><td>00007</td><td class="modArea">대구고등학교</td><td>고등학교</td></tr>
                <tr><td>7</td><td>00009</td><td class="modArea">부산고등학교</td><td>고등학교</td></tr>
                <tr><td>8</td><td>00008</td><td class="modArea">춘천고등학교</td><td>고등학교</td></tr>
                <tr><td>9</td><td>00003</td><td class="modArea">강원고등학교</td><td>고등학교</td></tr>
                <tr><td>10</td><td>00011</td><td class="modArea">용산고등학교</td><td>고등학교</td></tr>
                   
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
				<tr><th class="t-td-0">수업일자</th><th class="t-td-1">강좌명</th><th class="t-td-2">수업내용</th><th class="t-td-3">개선사항</th><th class="t-td-4">종합평가</th>
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
				<tr><th class="t-td-0">보강일자</th><th class="t-td-1">과목</th><th class="t-td-2">보강내용</th><th class="t-td-3">개선사항</th><th class="t-td-4">종합평가</th>
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
            
            <div style="margin-left: 5px;">
            	<input type="button" value="추가" class="buttons" id="addCode"> <input type="button" value="수정" class="buttons" id="modCode"> <input type="button" value="삭제" class="buttons" id="delCode">
            	<input type="button" value="위로" class="buttons" id="upCode"> <input type="button" value="아래로" class="buttons" id="downCode"> <input type="button" value="저장" class="buttons" id="codeSubmit">
            </div>
            
        </div>
    </div>
<div>

</article>
</section>

</body>
</html>
