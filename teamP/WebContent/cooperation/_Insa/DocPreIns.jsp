<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="mem.wit.Insa.DocPDAO"%>
<%@page import="mem.wit.Insa.DocPDTO"%>
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

td {
	text-align: center;
}

.ckNo {
	text-align: left;
	font-family: "맑은 고딕";
	font-size: 20px;
	height: 50px;
}

.ck {
	font-family: "맑은 고딕";
	font-size: 20px;
	height: 50px;
}

.ck1 {
	font-family: "맑은 고딕";
	font-size: 30px;
}
</style>
<%
	DocPDAO dao = new DocPDAO();
	DocPDTO dto = new DocPDTO();
	List dtoL = dao.docpSelect();
	dto = (DocPDTO) dtoL.get(0);
%>
</head>
<body>
	<form>
		<table width="900px" align="center">
			<tr>
				<td class="ckNo"><b>No.<%=dto.getpSeq()%></b></td>
			</tr>
		</table>
		<table border="1" width="900px" height="1000px" align="center">
			<col width="8%" />
			<col width="12%" />
			<col width="8%" />
			<col width="12%" />


			<tr height="200px">
				<th colspan="4"><h1>재 직 증 명 서</h1></th>
			</tr>
			<tr class="ck">
				<td>소속</td>
				<td id="Belong">영업팀</td>
				<td>직책</td>
				<td id="Duty">사원</td>
			</tr>

			<tr class="ck">
				<td>성명</td>
				<td id="Name">호날두</td>
				<td>주민등록번호</td>
				<td id="Jumin">123456-1234567</td>
			</tr>

			<tr class="ck">
				<td>입사일자</td>
				<td colspan="3" id="InDt">2013-08-13</td>
			</tr>

			<tr class="ck">
				<td>전화번호</td>
				<td colspan="3" id="Phone">010 - 1234 - 5678</td>
			</tr>
			<tr class="ck">
				<td>재직기간</td>
				<td colspan="3" id="Date">2013-08-13 ~ 2014-08-13</td>
			</tr>

			<tr class="ck">
				<td>주요업무</td>
				<td colspan="3" id="Main">내가 에이스</td>
			</tr>
			<tr class="ck">
				<td>기타사항</td>
				<td colspan="3" id="ETC">특별할게있나?</td>
			</tr>
			<tr class="ck1">
				<td align="center" colspan="4">상기와 같이 재직하였음을 증명합니다.<br /> <br />
					2014년 08월 15일<br /> <br /> <br /> 회 사 : (주) WIT<br /> 대 표 : ㅋㅋㅋ
				</td>
		</table>
	</form>
</body>
</html>