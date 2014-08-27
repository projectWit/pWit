<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<jsp:include page="WIT_OPENEX_main_header.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		$('#OPENEX_headerMenu3').css('color', '#FFF');
		$('#OPENEX_headerMenu3').css('text-shadow', '0px 0 3px #FFF');
	});
</script>
</head>
<body>
	<jsp:include page="WIT_OPENEX_ranking_section.jsp"></jsp:include>
</body>
	<jsp:include page="WIT_OPENEX_main_footer.jsp"></jsp:include>
</html>