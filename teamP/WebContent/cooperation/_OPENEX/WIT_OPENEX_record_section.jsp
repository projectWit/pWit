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
	src="/teamP/cooperation/_OPENEX/OPENEXscript/highcharts.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/highcharts-3d.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/_OPENEX/OPENEXscript/exporting.js"></script>
<link rel="stylesheet" type="text/css"
	href="/teamP/cooperation/_OPENEX/OPENEXcss/WIT_OPENEX_section.css">
</head>
<script type="text/javascript">
	$(function() {
		var cnt = $('#EX_QUESTIONSCOUNT').val();
		var sumScore = 0;
		var earnScore = 0;
		for (var i = 1; i <= cnt; i++) {
			sumScore += parseInt($('#QUE_SCORE' + i).val());
			if ($('#RIGHTANSWER' + i).val() == $('#USA_ANSWER' + i).val()) {
				$('#CHECK' + i).val("O");
				earnScore += parseInt($('#QUE_SCORE' + i).val());
			} else {
				$('#CHECK' + i).val("X");
			}
		}
		$('#sumScore').val(sumScore);
		$('#earnScore').val(earnScore);
		$('#percScore').val(earnScore * 100 / sumScore);

		var qCnt = $('#EX_QUESTIONSCOUNT').val();
		var userSub = new Array();
		var scoreList = new Array();
		/* var userScore = new Array(); */
		for (var i = 0; i < qCnt; i++) {
			userSub[i] = "'" + $('#QUE_USERSUBJECT' + (i + 1)).val() + "'";
			scoreList[i] = parseInt($('#QUE_SCORE' + (i + 1)).val());
		}
		$('#recordContainer').highcharts({
			chart : {
				type : 'line'
			},
			title : {
				text : '점수 분포도'
			},
			subtitle : {
				text : ''
			},
			xAxis : {
				categories : userSub
			},
			yAxis : {
				title : {
					text : 'score'
				}
			},
			plotOptions : {
				line : {
					dataLabels : {
						enabled : true
					},
					enableMouseTracking : false
				}
			},
			series : [ {
				name : '획득 점수',
				data : []
			}, {
				name : '배점',
				data : [ scoreList ]
			} ]
		});
	});
</script>
<style type="text/css">
#dvRecord {
font-size:12px;
	width: 800px;
	height: 100%;
	margin: 0 auto;
	padding-bottom: 20px;
}

table {
	margin: 0 auto;
	text-align: center;
	width: 800px;
	border: 1px solid gray;
	border-radius: 10px;
	padding-bottom: 10px;
	margin-bottom: 10px;
}

table tr {
	/* height:20px; */
	
}

input {
	border: 0;
	text-align: center;
	width: 120px;
}

.tdLine {
	border-bottom: 1px solid gray;
}

.title {
	border-radius: 10px;
	margin: 0 auto;
	font-size: 13px;
	color: white;
	font-weight: bold;
	background: rgb(96, 108, 136); /* Old browsers */
	background: -moz-linear-gradient(top, rgba(96, 108, 136, 1) 0%,
		rgba(63, 76, 107, 1) 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(96,
		108, 136, 1)), color-stop(100%, rgba(63, 76, 107, 1)));
	/* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, rgba(96, 108, 136, 1) 0%,
		rgba(63, 76, 107, 1) 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, rgba(96, 108, 136, 1) 0%,
		rgba(63, 76, 107, 1) 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, rgba(96, 108, 136, 1) 0%,
		rgba(63, 76, 107, 1) 100%); /* IE10+ */
	background: linear-gradient(to bottom, rgba(96, 108, 136, 1) 0%,
		rgba(63, 76, 107, 1) 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#606c88',
		endColorstr='#3f4c6b', GradientType=0); /* IE6-9 */
}
</style>
<body>
	<div id="dvRecord">
		<table align="center" style="display: none;">
			<tr>
				<td>문항 수</td>
				<td>성적 번호</td>
			<tr>
			<tr>
				<td><input type="text"
					value="${selecAcvREC.get(0).EX_QUESTIONSCOUNT}"
					id="EX_QUESTIONSCOUNT"></td>
				<td><input type="text" value="${selecAcvREC.get(0).REC_NO}"></td>
				<td><textarea rows="" cols="" id="ta"></textarea></td>
			</tr>
			<c:forEach var="item" items="${selectSEList}" varStatus="status">
				<tr>
					<td colspan="2"><input type="text"
						value="${item.QUE_USERSUBJECT}"
						id="QUE_USERSUBJECT${status.index+1}" style="width: 300px;"></td>
				</tr>
			</c:forEach>
		</table>
		<table align="center">
			<tr>
				<td colspan="5">${selectSEList.get(0).MJ_NAME}>
					${selectSEList.get(0).MD_NAME}> ${selectSEList.get(0).EX_MNNAME}</td>
				<td>${selectSEList.get(0).DIF_GRADE}</td>
			</tr>
			<tr>
				<td colspan="6"><hr></td>
			</tr>
			<tr>
				<td colspan="6" colspan="6">${selectSEList.get(0).EX_TITLE}</td>
			</tr>
			<tr>
				<td colspan="6"><hr></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${selectSEList.get(0).MID}</td>
				<td>추천 강좌</td>
				<td>${selectSEList.get(0).EX_REFERENCE}</td>
				<td>참고 자료</td>
				<td>${selectSEList.get(0).EX_RECOMMENDLECTURE}</td>
			</tr>
			<tr>
				<td colspan="6"><hr></td>
			</tr>
			<tr>
				<td class="title">당신의 점수</td>
				<td><input type="text" id="earnScore" readonly="readonly">점</td>
				<td class="title">백분율</td>
				<td><input type="text" id="percScore" readonly="readonly">%</td>
			</tr>
			<tr style="display: none">
				<td colspan="3">
					<div id="recordContainer"></div>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="title">문항번호</td>
				<td class="title">정답</td>
				<td class="title">사용자답</td>
				<td class="title">배점</td>
				<td class="title">체크</td>
			</tr>
			<c:forEach var="item" items="${selecAcvREC}" varStatus="status"
				end="${selecAcvREC.get(0).EX_QUESTIONSCOUNT-1}">
				<tr>
					<td><input type="text" value="${item.QUE_QNO}"
						id="QUE_QNO${status.index+1}" readonly="readonly"></td>
					<td><input type="text" value="${item.QUE_RIGHTANSWER}"
						id="RIGHTANSWER${status.index+1}" readonly="readonly"></td>
					<td><input type="text" value="${item.USA_ANSWER}"
						id="USA_ANSWER${status.index+1}" readonly="readonly"></td>
					<td><input type="text" value="${item.QUE_SCORE}"
						id="QUE_SCORE${status.index+1}"></td>
					<td><input id="CHECK${status.index+1}" readonly="readonly"></td>
				</tr>
				<tr>
					<td colspan="5"><hr></td>
				</tr>
			</c:forEach>
			<tr>
				<td class="title">총배점</td>
				<td colspan="4" align="right"><input type="text" id="sumScore"
					readonly="readonly">점</td>
			</tr>
		</table>
	</div>
</body>
</html>