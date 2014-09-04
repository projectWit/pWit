<%@page import="java.util.ArrayList"%>
<%@page import="mem.wit.openex.OsetExamListDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript" src="OPENEXscript/OPENEX.js"></script>
<script type="text/javascript" src="OPENEXscript/SetQuestion.js"></script>
<script type="text/javascript" src="OPENEXscript/layerpopup.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		findInput();
	});
</script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
<style type="text/css">
</style>
<%-- <%
	int intLength = ((ArrayList<OsetExamListDTO>) request
			.getAttribute("selectSEList")).get(0)
			.getEX_QUESTIONSCOUNT();
	for (int i = 1; i <= intLength; i++) {
%>
<%
	}
%> --%>
</head>
<body>
	<section>
	<form name="setQueForm" action="/teamP/WIT_OPENEX_setExam_section7.op"
		method="get">
		<div id="layerbox" class="layerpop"
			style="width: 450px; height: 120px;">
			<article class="layerpop_area">
			<div class="title">OPENEX SETEXAM SYSTEM</div>
			<a href="javascript:popupClose();" class="layerpop_close"
				id="layerbox_close">ⓧ</a> <br>
			<div class="content">저장이 완료되었습니다</div>
			</article>
		</div>
		<div id="openex_setExam">
			<table align="center" style="display: none;">
				<tr>
					<td>시험 번호<input type="text"
						value="${selectSEList.get(0).EX_NO}" id="EX_NO" name="EX_NO"></td>
					<td>문항 수<input type="text"
						value="${selectSEList.get(0).EX_QUESTIONSCOUNT}"
						id="EX_QUESTIONSCOUNT" name="EX_QUESTIONSCOUNT"></td>
				</tr>
				<tr>
					<td>문제 번호<input type="text" id="QUE_QNO" name="QUE_QNO"></td>
					<td>정답<input type="text" id="QUE_RIGHTANSWER"
						name="QUE_RIGHTANSWER"></td>
				</tr>
			</table>
			<table align="center" border="0">
				<tr>
					<td colspan="5"><span>${selectSEList.get(0).MJ_NAME}</span> >
						<span>${selectSEList.get(0).MD_NAME}</span> > <span>${selectSEList.get(0).EX_MNNAME}</span></td>
				</tr>
				<tr>
					<td colspan="5"><br> <span style="font-size: 15px;">제목
							: ${selectSEList.get(0).EX_TITLE}</span><br> <span>시간 제한 :
							${selectSEList.get(0).EXTIMELIMIT} 분</span> / <span>${selectSEList.get(0).EX_QUESTIONSCOUNT}
							문제</span> / <span>출제 난이도 : ${selectSEList.get(0).DIF_GRADE}</span> <br></td>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;"><span>사용자 주제
							입력 : <input type="text" name="QUE_USERSUBJECT"
							id="QUE_USERSUBJECT"
							style="width: 200px; border-radius: 10px 10px 0 0;">
					</span><span>배점 : <input type="text" placeholder="배점" size="7"
							id="QUE_SCORE" name="QUE_SCORE"
							style="margin-left: 10px; height: 20px; border-radius: 10px 10px 0 0;"></span></td>
				</tr>
				<tr>
					<td>
						<div id="openex_setExam_excountbox">
							<div id="openex_setExam_excount" style="font-size: 13px;">
								<p style="border-bottom: 1px solid black;">
									현재 총배점<br> <input type="text" class="hdInput" value="0"
										id="sumQueCnt" readonly="readonly"> 점
								<p>
									<input type="button" value="배점 반영해서 계산하기"
										onclick="location.reload()" style="width: 100%; height: 20px;"
										class="colorBtn3">
								</p>
								</p>
								<div
									style="height: 330px; width: 100%; overflow-y: scroll; border-top: 2px solid gray; border-bottom: 2px solid gray;">
									<c:forEach var="item" items="${selectSEList}"
										varStatus="status">
										<p>
											<a href="#" id="queCntP${status.index+1}"
												onclick="selQueCnt()"><input value="${status.index+1}"
												class="hdInput"> 번 문제 <input
												id="scoreAssign${status.index+1}" class="hdInput"
												readonly="readonly" value="${item.QUE_SCORE}"> 점 </a><input
												type="checkbox" class="radioInputVLine"
												id="queChk${status.index+1}" readonly="readonly"
												onclick="return(false)">
										</p>
										<hr>
									</c:forEach>
								</div>
								<!-- <input
									type="button" value="입력" class="colorBtn2"
									 cursor: pointer;"
									id="scoreAssignBtn"> -->
								<input type="button" value="현재 문항 저장" class="colorBtn3"
									id="setQSubmit1"
									style="width: 100%; height: 34px; border-radius: 0 0 10px 10px;">
							</div>
						</div>
					</td>
					<td colspan="4"><div id="openex_setExam_content">
							<textarea rows="25" cols="100" placeholder="왼쪽에서 문제를 먼저 선택하세요"
								name="QUE_CONTENT" id="QUE_CONTENT"></textarea>
						</div></td>
				</tr>
				<tr>
					<td>①</td>
					<td>②</td>
					<td>③</td>
					<td>④</td>
					<td>⑤</td>
				</tr>
				<tr>
					<td><input type="text" name="QUE_EXAMPLE1" id="QUE_EXAMPLE1"
						class="inputRadius"></td>
					<td><input type="text" name="QUE_EXAMPLE2" id="QUE_EXAMPLE2"
						class="inputRadius"></td>
					<td><input type="text" name="QUE_EXAMPLE3" id="QUE_EXAMPLE3"
						class="inputRadius"></td>
					<td><input type="text" name="QUE_EXAMPLE4" id="QUE_EXAMPLE4"
						class="inputRadius"></td>
					<td><input type="text" name="QUE_EXAMPLE5" id="QUE_EXAMPLE5"
						class="inputRadius"></td>
				</tr>
				<tr>
					<td><input type="radio" name="radioSelect" class="radioSelect"
						id="radioSelect1" value="1"></td>
					<td><input type="radio" name="radioSelect" class="radioSelect"
						id="radioSelect2" value="2"></td>
					<td><input type="radio" name="radioSelect" class="radioSelect"
						id="radioSelect3" value="3"></td>
					<td><input type="radio" name="radioSelect" class="radioSelect"
						id="radioSelect4" value="4"></td>
					<td><input type="radio" name="radioSelect" class="radioSelect"
						id="radioSelect5" value="5"></td>
				</tr>
				<tr align="center" id="openex_setExam_submit">
					<td colspan="5"><input type="submit" value="완료"
						class="colorBtn" id="setQSubmit2"></td>
				</tr>
			</table>
		</div>
	</form>
	</section>
</body>
</html>