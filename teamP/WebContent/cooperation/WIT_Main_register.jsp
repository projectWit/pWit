<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="WIT_Reg_header.jsp"></jsp:include>
<script type="text/javascript">
smallHeader();
</script>
</head>
<body>
	<div id="section_register_main"
		style="margin: auto; width: 100%; height: 650px;">
		<table align="center"
			style="position: relative; top: 20px; bottom: 100px;">
			<tr>
				<td colspan="3"><img src="images/register_welcome.png" style="width: 600px;"></td>
			</tr>
			<tr>
				<td style="height: 100px;"></td>
			</tr>
			<tr>
				<td><a href="WIT_Main_register_common.jsp"> <img
						src="images/register_common.png"
						style="width: 250px; height: 250px;"></a></td>
				<td style="width: 100px;"></td>
				<td><a href="WIT_Main_register_company.jsp"><img
						src="images/register_company.png"
						style="width: 210px; height: 250px; margin: auto;"></a></td>
			</tr>
		</table>


	</div>
</body>
<jsp:include page="WIT_Main_footer.jsp"></jsp:include>
</html>