<%@page import="com.wit.member.Employee"%>
<%@page import="com.wit.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT는 당신을 환영합니다!</title>
<!--[if lt IE 9]>
<script src="dist/html5shiv.js"></script>
<![endif]-->
<style type="text/css">
</style>

<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<%
Member member = (Member) session.getAttribute("member");
Employee employee = (Employee) session.getAttribute("employee");
//boolean login = member == null ? false : true;
boolean login = employee == null ? false : true;
String href1 = "#";
String href2 = "#";
String href3 = "#";
String href4 = "#";
String href5 = "#";
String logfunc = "";

if (login) { // 로그인 관리자 때 
  href1 = "InsaLeftMan.jsp";
  href2 = "ClockLeftMan.jsp";
  href3 = "BoardLeftMan.jsp";
  href4 = "DocLeftMan.jsp";
} else {
	logfunc = "showLogin()";
}
%>
</head>
<body>
<div style="width: 760px; margin: auto;">
	<div>
		<div style="float: left; margin-left: 30px;">
			<a href="<%=href1%>" onclick = "<%=logfunc%>"><img src="img/backinsa.png" width="350px"
				height="300px"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		
		<div>
			<a href="<%=href2%>" onclick = "<%=logfunc%>"><img src="img/backclock.png" width="350px"
				height="300px"></a>
		</div>
	</div>
	<br><br>
	<div>
		<div style="float: left;margin-left: 30px;">
			<a href="<%=href3%>" onclick = "<%=logfunc%>"><img src="img/backboard01.png" width="350px"
				height="300px"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		
		<div>
			<a href="<%=href4%>" onclick = "<%=logfunc%>"><img src="img/backdocument.png" width="350px"
				height="300px"></a>
		</div>
	</div>
</div>
</body>
</html>