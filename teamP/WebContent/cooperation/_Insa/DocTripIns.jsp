<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1 {
	font-family: "맑은 고딕"
}

font {
	font-family: "맑은 고딕";
	font-size: 12px;
}
td{
	text-align : center;
}
.ck{
font-family: "맑은 고딕";
	font-size: 20px;
	height: 50px;
}
.ck1{
font-family: "맑은 고딕";
	font-size: 30px;	
}
.ckNo {
	text-align: left;
	font-family: "맑은 고딕";
	font-size: 20px;
	height: 50px;
}
</style>
</head>
<body>
<table width="900px" align="center">
			<tr>
				<td class="ckNo"><b>No.</b></td>
			</tr>
		</table>
	<table border="1" width="900px" height="1000px" align="center">
		<col width="8%" />
		<col width="8%" />		
		<col width="12%" />
		<col width="8%" />
		<col width="12%" />
		
		
		<tr height = "200px">
			<th colspan="5"><h1>출 장 증 명 서</h1></th>
		</tr>
		<tr class = "ck">
			<td>소속</td>
			<td colspan = "2" id = "Belong">영업팀</td>
			<td >직책</td>
			<td id = "Duty">사원</td>
		</tr>

		<tr class = "ck">
			<td>성명</td>
			<td colspan = "4" id = "Name">호날두</td>		
		</tr>
		
		<tr class = "ck">
			<td>일자</td>
			<td colspan="4" id = "Date">2013-08-13</td>
		</tr>
		
		<tr class = "ck">
			<td>전화번호</td>
			<td colspan="4" id = "Phone">010 - 1234 - 5678</td>
		</tr>
		<tr class = "ck">
			<td>업무기간</td>
			<td colspan="4" id = "TripDt">2014-08-13 ~ 2014-08-14</td>
		</tr>

		<tr class = "ck">
			<td>방문자</td>
			<td colspan="4" id = "">내가 에이스</td>
		</tr>
		
		<tr class = "ck">
		<td rowspan="2">동행자</td>
			<td>소속</td>
			<td id = "DBelong">영업팀</td>
			<td>직책</td>
			<td id ="DDuty">사원</td>
		</tr>
		<tr class = "ck">
			<td>성명</td>
			<td colspan = "3" id = "DName">베일</td>		
		</tr>		
		
		<tr class = "ck1">
			<td align="center" colspan="5">상기와 같이 출장하였음을 증명합니다.<br /> <br /> 2014년
				08월 15일<br />
			<br />
			<br /> 회 사 : (주) WIT<br/>
			 대 표 : ㅋㅋㅋ
			</td>
	</table>
</body>
</html>