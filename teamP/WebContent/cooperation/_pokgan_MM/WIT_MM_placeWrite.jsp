<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="ko" xml:lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Generator" content="XpressEngine 1.4.2.3" />
<meta name="module" content="board" />
<meta name="module_skin" content="webzine" />
<meta http-equiv="imagetoolbar" content="no" />
<title>WIT는 당신을 환영합니다!</title>
<jsp:include page="WIT_MM_header.jsp"></jsp:include>
<link rel="stylesheet"
	href="/teamP/cooperation/_pokgan_MM/css/place/script.css"
	type="text/css" charset="UTF-8" media="all" />
<link rel="stylesheet"
	href="/teamP/cooperation/_pokgan_MM/css/style.css" type="text/css"
	charset="UTF-8" media="all" />
<script type="text/javascript"
	src="/teamP/cooperation/_pokgan_MM/js/pok.js">
</script>
<link rel="alternate" type="application/rss+xml" title="Site RSS"
	href="/teamP/cooperation/_pokgan_MM/xml/place/rss.xml" />
<link rel="alternate" type="application/atom+xml" title="Site Atom"
	href="/teamP/cooperation/_pokgan_MM/xml/place/atom.xml" />
<style type="text/css">
div.autosourcing-stub {
	display: none
}
</style>
</head>
<body onload="PlaceWrite.mid.focus()">
	<form method="get" class="ta" name="PlaceWrite"
		action="WIT_MM_placeWritePro.jsp">
		<h2 align="center">♨ 글 쓰 기 ♨</h2>&nbsp;
		<table width="600" border="8" align="center">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="mid" size="37%" /></td>
				<td>이미지</td>
				<td><input type="text" name="mm_pic" size="37%" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan="3"><input type="text" name="mm_tit" size="85%" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="3"><textarea name="mm_con" rows="10" cols="84%"></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="4"><input type="submit"
					value="글올리기" /><input type="reset" value="다시쓰기" /><input
					type="button" value="목록으로" onclick="location='./WIT_MM_place.jsp'" /></td>
			</tr>
		</table>
		&nbsp;
	</form>
</body>
<jsp:include page="WIT_MM_footer.jsp"></jsp:include>
</html>