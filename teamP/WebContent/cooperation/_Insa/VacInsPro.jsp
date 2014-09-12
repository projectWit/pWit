<%@page import="mem.wit.Insa.VacDAO"%>
<%@page import = "mem.wit.Insa.VacDTO" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:useBean id="vacDTO" class="mem.wit.Insa.VacDTO"> </jsp:useBean>
<jsp:setProperty property="*" name="vacDTO" />
<%
	VacDAO dao = VacDAO.getInstance();
	
	int su = dao.vacInsert(vacDTO);

	out.print(su);
	String msg = "", url = "";
	if (su != 0) {
		msg = "게시판 글쓰기 성공 확인";
		url = "BoardLeft.jsp";
	} else {
		msg = "게시판 글쓰기 실패 확인";
		url = "BoardIns.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>	";
</script>
</head>
</html>