<%@page import="mem.wit.Insa.BoaDAO"%>
<%@page import = "mem.wit.Insa.BoaDTO" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:useBean id="boaDTO" class="mem.wit.Insa.BoaDTO"></jsp:useBean>
<jsp:setProperty property="*" name="boaDTO" />
<%
	BoaDAO dao = BoaDAO.getInstance();
	boaDTO.setbIp(request.getRemoteAddr());
	
	int su = dao.boaInsert(boaDTO);

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