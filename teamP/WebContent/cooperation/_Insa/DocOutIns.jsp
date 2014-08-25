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
	height: 70px;
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
<form>
<table width="900px" align="center">
			<tr>
				<td class="ckNo"><b>No.</b></td>
			</tr>
		</table>
	<table border="1" width="900px" height="1000px" align="center">
		<col width="8%" />	
		<col width="12%" />
		<col width="8%" />
		<col width="12%" />
		
		
		<tr height = "200px">
			<th colspan="4"><h1>퇴 직 증 명 서</h1></th>
		</tr>
		<tr class = "ck">
			<td>소속</td>
			<td>영업팀</td>
			<td>직책</td>
			<td>사원</td>
		</tr>

		<tr class = "ck">
			<td>성명</td>
			<td id = "Name">호날두</td>
			<td>주민등록번호</td>
			<td id = "Jumin">123456-1234567</td>
		
		</tr>
	
		
		<tr class = "ck">
			<td>주소</td>
			<td colspan="3" id = "Juso">서울시 용산구 xx동 xx아파트</td>
		</tr>
		
		<tr class = "ck">
			<td>입사일자</td>
			<td colspan="3" id = "InDt">2014-08-13</td>
		</tr>

		<tr class = "ck">
			<td>퇴사일자</td>
			<td colspan="3" id = "OutDt">2014-08-13</td>
		</tr>

		<tr class = "ck">
			<td>퇴직사유</td>
			<td colspan="3" id = "Reason">그냥 그만둠</td>
		</tr>
		<tr class = "ck1">
			<td align="center" colspan="4">위 사실을 확인합니다.<br /> <br /> 2014년
				08월 15일<br />
			<br />
			<br /> 회 사 : (주) WIT<br/>
			 대 표 : ㅋㅋㅋ
			</td>
	</table>
	</form>
</body>
</html>