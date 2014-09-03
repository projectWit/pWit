<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>

<script type="text/javascript">
calendarIDs = ['suppDate'];		// 달력이 추가될 태그의 id
</script>

<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>

<body>

<section>
<article>



<div class="content-container">

<div class="page-title"><span class="bullet-title">보강 개설</span></div>

<form method="post" action="" name="regForm" id="regForm">
	<table cellspacing="0" class="info-table">
		<tr><td class="table-label">보강일자</td><td class="table-input"><input type="text" size=15 id="suppDate" name="suppDate"></td>
			<td class="table-label">강사</td><td class="table-input"><input type="text" size=15 value="000002"><a href="#"><img src="/teamP/cooperation/_alphaStudy/img/v7/icon/search.png" class="magnify"></a><input type="text" size=12 value="한지민"></td>
			<td class="table-label">학생구분</td><td class="table-input"><select><option>미선택</option><option>중학생</option><option>고등학생</option><option>대학생</option><option>일반인</option></select></td></tr>
		<tr><td class="table-label">보강시각</td><td class="table-input"><input type="time"></td>
			<td class="table-label">과목</td><td class="table-input"><select><option>미선택</option><option>국어</option><option>영어</option><option>수학</option></select></td>
			<td class="table-label">학년</td><td class="table-input"><input type="number" min="1" max="3" size="10"> 학년</td></tr>
		<tr><td class="table-label">보강내용</td><td class="table-input" colspan=5><textarea rows="3" style="margin-right: 0px; padding-right: 0px; width: 99%;"></textarea></td></tr>
		
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
