<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="WIT_Accounting_header.jsp" />
<link rel="stylesheet" type="text/css" href="css/Accounting.css">
<!-- <script type="text/javascript" src="../script/jquery-2.1.1.js"></script> -->
<script type="text/javascript">
$(document).ready(function(e) {
	   $('#subTab-0').css("display", "block");
	});
	currentNavIndex = 0;
	currentSubtabIndex = 0;
</script>
<script type="text/javascript">

</script>
</head>
<body>
	<div id="body">
		<div id="aSide">
		<jsp:include page="leftMenu.jsp" />
		</div>
		<div id="contents">
			<jsp:include page="trialBalance.jsp" />
		</div>
	</div>
</body>
<%-- <jsp:include page="WIT_Accounting_footer.jsp"></jsp:include> --%>
</html>