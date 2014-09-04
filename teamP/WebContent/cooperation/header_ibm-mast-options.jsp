<%@page import="com.wit.member.Employee"%>
<%@page import="com.wit.member.Power"%>
<%@page import="com.wit.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT는 당신을 환영합니다!</title>
</head>

<%
Member member = (Member)session.getAttribute("member");
boolean login = member==null ? false : true;

Employee employee = (Employee)session.getAttribute("employee");
boolean login2 = employee == null ? false : true;

String signin = null;
String register = null;
String regHref = "#";
if (login) {
	signin = "로그아웃";
	register = member.getmNickName();
} else if (login2) {
	signin = "로그아웃";
	register = employee.geteKName();
} else {
	signin = "WIT 로그인";
	register = "회원가입";
	regHref = "/teamP/cooperation/WIT_Main_register.jsp";
}

int powerStudy = 0;
int powerOpenex = 0;
int powerGm = 0;
int powerAccount = 0;
int powerPok  =0;
int powerInsa = 0;
int powerShop = 0;
Power power = (Power)session.getAttribute("power");
boolean admin = power==null ? false : true;

if (admin) {
	powerStudy = power.getaStudy();
	powerOpenex = power.getaOpenex();
	powerGm = power.getaGm();
	powerAccount = power.getaAcount();
	powerPok = power.getaPok();
	powerInsa = power.getaInsa();
	powerShop = power.getaShop();
} else {
	
}
%>

<body  id="ibm-com" class="v17">
<form id="loginStatusForm" method="get" action="/teamP/members/login" ><!-- onSubmit="window.location.reload()" -->
<%-- <input id="loginStatus" name="loginStatus" type="hidden" value="<%=login %>"> --%>
<input id="loginStatus" name="loginStatus" type="hidden" value="<%
if (login) {
	out.print(login);
} else {
	out.print(login2);
}
%>">
<input id="powerStudy" name="powerStudy" type="hidden" value="<%=powerStudy %>">
</form>
<!-- ibm-mast-options -->
	<div id="ibm-mast-options">
<div style="position: absolute;">scroll : </div><div id="scroll" style="position: absolute; margin-left: 40px;"></div>
<div style="position: absolute; left: 100px;">mouse : </div><div id="mouse" style="position: absolute; left: 150px;"></div>
		<ul>
			<li id="ibm-geo"><a href="#">한국어</a></li>
			<li id="ibm-sso"><span><p id="ibm-welcome-msg">환영합니다</p> <span style="display: inline;">
				<span class="ibm-greeting-hasp">[</span> 
				<span> <span class="ibm-sso-link"><a href="#" class="ibm-sso-signin"><%=signin %></a></span> 
				<span class="ibm-sso-link"> / <a href="<%=regHref %>" class="ibm-sso-register"><%=register %></a></span></span> 
				<span class="ibm-greeting-hasp">]</span>
			</span></span></li>
		</ul>
	</div>
<!-- //ibm-mast-options -->
</body>
</html>