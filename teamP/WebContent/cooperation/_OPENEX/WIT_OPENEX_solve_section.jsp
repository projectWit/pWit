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
<script type="text/javascript" src="OPENEXscript/SolveQuestion.js"></script>
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
</head>
<body>
	<section>
	<form name="solveForm" action="/teamP/WIT_OPENEX_solve_section2.op"
		method="get">
		<div id="layerbox" class="layerpop"
			style="width: 450px; height: 120px;">
			<article class="layerpop_area">
			<div class="title">OPENEX SOLVE SYSTEM</div>
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
					<td>시간 제한<input type="text" id="EXTIMELIMIT"
						name="EXTIMELIMIT" value="${selectSEList.get(0).EXTIMELIMIT}">
					</td>
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
							: <input type="text" name="QUE_USERSUBJECT" id="QUE_USERSUBJECT"
							value="${selectSEList.get(0).QUE_USERSUBJECT}"
							style="width: 200px; border: 0;" readonly="readonly">
					</span></td>
				</tr>
				<tr>
					<td>
						<div id="openex_setExam_excountbox">
							<div id="openex_setExam_excount" style="font-size: 10px;">
								<p
									style="border-bottom: 1px solid black; text-align: center; font-size: 14px; font-weight: bold;">
									남은 시간(초)</p>
								<p style="height: 23px">
									<input type="text" id="REC_TIME" name="REC_TIME"
										readonly="readonly" class="inputBoardNone"
										style="width: 50px; text-align: center;">
								</p>
								<p>
									<input type="button" value="답을 골라주세요"
										style="width: 100%; height: 20px;" class="colorBtn3">
								</p>
								<div
									style="height: 330px; width: 100%; overflow-y: scroll; border-top: 2px solid gray; border-bottom: 2px solid gray;">
									<c:forEach var="item" items="${selectSEList}"
										varStatus="status">
										<p>
											<a href="#" id="queCntP${status.index+1}"
												name="${item.QUE_QUENO}${status.index+1}"><input
												value="${status.index+1}" class="hdInput"> 번 문제 <input
												id="USA_ANSWER${status.index+1}" class="hdInput"
												readonly="readonly" name="USA_ANSWER${status.index+1}"
												value="0"> 번 </a><input type="checkbox"
												class="radioInputVLine" id="queChk${status.index+1}"
												onclick="return(false)"><input type="hidden"
												name="QUE_QUENO${status.index+1}" value="${item.QUE_QUENO}">
										</p>
										<hr>
									</c:forEach>
								</div>
								<input type="button" class="colorBtn3" id="setQSubmit1"
									style="width: 100%; height: 32px; border-radius: 0 0 10px 10px;">
							</div>
						</div>
					</td>
					<td colspan="4"><div id="openex_setExam_content">
							<textarea rows="25" cols="100" placeholder="왼쪽에서 문제를 먼저 선택하세요"
								name="QUE_CONTENT" id="QUE_CONTENT" readonly="readonly"></textarea>
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
						class="inputBoardNone" readonly="readonly"></td>
					<td><input type="text" name="QUE_EXAMPLE2" id="QUE_EXAMPLE2"
						class="inputBoardNone" readonly="readonly"></td>
					<td><input type="text" name="QUE_EXAMPLE3" id="QUE_EXAMPLE3"
						class="inputBoardNone" readonly="readonly"></td>
					<td><input type="text" name="QUE_EXAMPLE4" id="QUE_EXAMPLE4"
						class="inputBoardNone" readonly="readonly"></td>
					<td><input type="text" name="QUE_EXAMPLE5" id="QUE_EXAMPLE5"
						class="inputBoardNone" readonly="readonly"></td>
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
					<td colspan="5"><input type="submit" value="제출"
						class="colorBtn" id="setQSubmit2"></td>
				</tr>
			</table>
		</div>
	</form>
	</section>
</body>
</html>