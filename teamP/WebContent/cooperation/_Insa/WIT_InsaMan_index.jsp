<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="WIT_InsaMan_header.jsp"></jsp:include>
</head>
<script type="text/javascript">
	currentNavIndex = 0;
	currentSubtabIndex = 0;

	$(document).ready(
			function(e) {
				$('#subTab-' + currentNavIndex).css("display", "block");
				$($('#ibm-menu-links li a')[Index + 1]).addClass(
						'nav-active').css('text-shadow', '0px 0 3px #FFF').css(
						'color', '#FFF');
			});
</script>
<body>
	<jsp:include page="WIT_InsaMan_section.jsp"></jsp:include>
</body>
<jsp:include page="WIT_Insa_footer.jsp"></jsp:include>
</html>
