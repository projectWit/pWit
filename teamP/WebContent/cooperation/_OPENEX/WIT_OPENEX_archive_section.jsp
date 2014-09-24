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
	src="/teamP/cooperation/_OPENEX/OPENEXscript/OPENEX.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/highcharts.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/highcharts-3d.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/exporting.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/graphics.js"></script>
<link rel="stylesheet" type="text/css"
	href="/teamP/cooperation/_OPENEX/OPENEXcss/WIT_OPENEX_section.css">
</head>
<body>
	<div id="openex_archive">
		<div id="openex_archive_layout">
			<div class="openex_archive_dv">
				<table class="openex_archive_record">
					<tr>
						<td class="openex_archive_record_title">ID</td>
						<td>${acvList.get(0).MID}</td>
						<td rowspan="7"><img
							src="/teamP/cooperation/_OPENEX/img/profile.png"
							style="height: 200px; width: 180px;"></td>
					</tr>
					<tr>
						<td class="openex_archive_record_title">대화명</td>
						<td>${acvList.get(0).MNICKNAME}</td>

					</tr>
					<tr>
						<td class="openex_archive_record_title">주요 출제 분야</td>
						<td>IT 사회 경제</td>
					</tr>
					<tr>
						<td class="openex_archive_record_title">주요 학습 분야</td>
						<td>IT 자연과학 역사</td>
					</tr>
					<tr>
						<td class="openex_archive_record_title">출제 신뢰도</td>
						<td>87%</td>
					</tr>
					<tr>
						<td class="openex_archive_record_title">추천 랭킹</td>
						<td>상위 14.8%</td>
					</tr>
					<tr>
						<td class="openex_archive_record_title">출제 등급</td>
						<td>${acvList.get(0).SEG_NAME}</td>
					</tr>
					<tr>
						<td class="openex_archive_record_title">풀이 등급</td>
						<td>${acvList.get(0).SVG_NAME}</td>
					</tr>
					<tr>
						<td colspan="3" class="openex_archive_record_title">자기소개</td>
					</tr>
					<tr>
						<td colspan="3">${acvList.get(0).ACV_COMMENT}<input
							type="button" value="수정"></td>
					</tr>
				</table>

			</div>
			<div class="openex_archive_dv">
				<table id="openex_archive_comment"
					class="openex_archive_recordTable" align="center">
					<tr>
						<td class="openex_archive_record_title" colspan="4">코멘트</td>
					</tr>
					<tr>
						<td>등록된 코멘트가 없습니다</td>
					</tr>
					<tr>
						<td>
							<div style="overflow-y: scroll; height: 308px;">
								<c:forEach var="item" items="${acvcList}">
									<div class="acv_comment">
										<p>${item.MNICKNAME}</p>
										<p>
											<textarea rows="4" cols="80">${item.ACVC_COMMENT}</textarea>
										</p>
										<span
											style="text-align: left; width: 350px; float: left; padding-left: 10px;">${item.ACVC_DATE}</span><span
											style="text-align: right;">${item.ACVC_IP}</span>
									</div>
								</c:forEach>
							</div>
						</td>
					</tr>
				</table>
				<table id="openex_archive_graph" class="openex_archive_record"
					align="center">
					<tr>
						<td colspan="4" id="graph_space" align="center"><img
							src="/teamP/cooperation/_OPENEX/img/mainimg4.png"
							style="width: 80%; height: 99%"></td>
					</tr>
					<tr id="openex_archive_record_graphBtn">
						<td><a href="#"><input type="button" value="성적 조회"
								onclick="graph1()" class="colorBtn"></a></td>
						<td><a href="#"><input type="button" value="통계"
								onclick="graph2()" class="colorBtn"></a></td>
						<td><a href="#"><input type="button" value="오답노트"
								onclick="record_search()" class="colorBtn"></a></td>
						<td><a href="WIT_OPENEX_solve.jsp"><input type="button"
								value="다시 풀기" class="colorBtn"></a></td>
					</tr>
				</table>
			</div>
			<div class="openex_archive_h3"></div>
			<div id="slideTogBox_se" class="openex_archive_dv">
				<div id="slideTogBtn_se" class="openex_archive_record_title">최근
					출제 리스트</div>
				<table id="slideTogCtn_se" class="openex_archive_recordTable">
					<tr>
						<td colspan="9"></td>
					</tr>
					<c:forEach var="item" items="${selecAcvSE}" end="4"
						varStatus="status">
						<tr id="openex_archive_setExam_list"
							id="openex_archive_record_list_solve">
							<td>${item.EX_NO}</td>
							<td><label><a href="#"> ${item.MJ_NAME}</a> > </label> <label><a
									href="#">${item.MD_NAME}</a></label></td>
							<td><a href="#" onclick="graphTr()">${item.EX_TITLE}</a><span>[23]</span></td>
							<td>${item.EX_QUESTIONSCOUNT}문제</td>
							<td>${item.EXTIMELIMIT}분</td>
							<td>1명</td>
							<td>${item.DIF_GRADE}</td>
							<td>75.4%</td>
							<td>${item.EX_DATE}</td>
						</tr>
						<tr>
							<td colspan="10"><hr></td>
						</tr>
					</c:forEach>
					<tr class="pageNos">
						<td colspan="10">
							<%
								for (int i = 1; i < 3; i++) {
							%> <span><a href="#"><%=i%></a></span> <%
 	}
 %> <a href="#">[다음]</a>
						</td>
					</tr>
				</table>
			</div>
			<div id="slideTogBox_sv" class="openex_archive_dv">
				<div id="slideTogBtn_sv" class="openex_archive_record_title">최근
					성적 리스트</div>
				<table id="slideTogCtn_sv" class="openex_archive_recordTable">
					<c:forEach var="item" items="${selecAcvSOL}" end="4"
						varStatus="status">
						<tr id="openex_archive_solve_list">
							<td>${item.REC_NO}</td>
							<td><label><a href="#">${item.MJ_NAME}</a> > </label> <label><a
									href="#"> ${item.MD_NAME}</a></label></td>
							<td><a href="#" onclick="graphTr()">${item.EX_TITLE}</a><span>[23]</span></td>
							<td>${item.EX_QUESTIONSCOUNT}문제</td>
							<td>${item.EXTIMELIMIT}분</td>
							<td>${item.EXTIMELIMIT*60-item.REC_TIME}초소모</td>
							<td>${item.DIF_GRADE}</td>
							<td>46.4%</td>
							<td>${item.REC_DATE}</td>
						</tr>
						<tr>
							<td colspan="10"><hr></td>
						</tr>
					</c:forEach>
					<tr class="pageNos">
						<td colspan="10">
							<%
								for (int i = 1; i < 2; i++) {
							%> <span><a href="#"><%=i%></a></span> <%
 	}
 %> <a href="#"></a>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>