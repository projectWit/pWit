<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="WIT_GM_header.jsp"></jsp:include>
<script type="text/javascript">
$(document).ready(function(e) {
   $('#subTab-0').css("display", "block");
});
currentNavIndex = 3;
currentSubtabIndex = 2;
</script>
</head>
<body>

	<jsp:include page="member_lecture.jsp"></jsp:include>

</body>
<jsp:include page="WIT_GM_footer.jsp"></jsp:include>
</html>