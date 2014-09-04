<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-ui.js"></script>
<script type="text/javascript" src="OPENEXscript/getTextColor.js"></script>
<link rel="stylesheet" type="text/css"
	href="OPENEXcss/WIT_OPENEX_section.css">
<script type="text/javascript">
	$(function() {
		$('[id^=EX_TITLE]').click(
				function() {
					var EX_NO = this.id;
					$('#resultEX_NO').empty();
					$('#resultEX_NO').val((EX_NO).substr('8', '5'));
					location.href = 'WIT_OPENEX_solve.jsp?EX_NO='
							+ $('#resultEX_NO').val();
				});
	});
</script>
</head>
<body>
	<form name="openex_list_board" action="WIT_OPENEX_list_section2.jsp">
		<div id="openex_list">
			<table align="center" id="openex_list_table" border="0">
				<tr style="height: 25px;">
					<td colspan="12" id="openex_list_subject"><label>
							${selectBoardList.get(0).MJ_NAME} > </label> <label>
							${selectBoardList.get(0).MD_NAME} </label></td>
				</tr>
				<tr class="listSelectBox">
					<td colspan="12"><a href="WIT_OPENEX_list.jsp"><input
							type="button" value="게시판으로 돌아가기" class="colorBtn3"
							style="height: 20px; text-align: center; border-radius: 5px"></a>
						<select name="listSelectBox" onchange="changeListSelected()">
							<option>선택</option>
							<option value="10">10개씩 보기</option>
							<option value="20">20개씩 보기</option>
							<option value="50">50개씩 보기</option>
					</select></td>
				</tr>
				<tr style="display: none">
					<td><input type="text" id="resultEX_NO" name="EX_NO"></td>
				</tr>
				<tr id="openex_list_title">
					<td>no</td>
					<td style="width: 100px;">사용자 분류</td>
					<td style="width: 400px;">제목</td>
					<td>조회 수</td>
					<td>추천 수</td>
					<td>문항 수</td>
					<td>제한 시간</td>
					<td>난이도</td>
					<td>정답률</td>
					<td style="width: 150px">작성자</td>
					<td style="width: 200px">작성 시간</td>
				</tr>
				<c:forEach var="item" items="${selectBoardList}" varStatus="status">
					<tr class="openex_list_content">
						<td>${item.EX_NO}</td>
						<td><a href="#"><label
								id="thirdCategory${status.index+1}"> ${item.EX_MNNAME} </label></a></td>
						<td class="openex_list_content_title"><a href="#"><input
								type="button" class="CategoryImagesCss"
								id="CategoryImagesCss${status.index+1 }"
								value="${item.EX_MNNAME}"></a><a id="EX_TITLE${item.EX_NO}" style="cursor: pointer;">${item.EX_TITLE}</a><span>[0]</span></td>
						<td>${item.EX_READCOUNT}</td>
						<td>${item.EX_RECOMMENDCOUNT}</td>
						<td>${item.EX_QUESTIONSCOUNT}</td>
						<td>${item.EXTIMELIMIT}</td>
						<td>${item.DIF_GRADE}</td>
						<td>0%</td>
						<td><a href="#">${item.MNICKNAME}</a></td>
						<td>${item.EX_DATE}</td>
					</tr>
				</c:forEach>
			</table>
			<table align="center" border="0">
				<tr>
					<td>
						<%
							for (int i = 1; i < 10; i++) {
						%> <span><a href="#"><%=i%></a></span> <%
 	}
 %> <a href="#">[다음 10개]</a>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>