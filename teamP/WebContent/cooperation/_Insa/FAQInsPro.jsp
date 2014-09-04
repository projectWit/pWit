<%@page import="mem.wit.Insa.FAQDTO"%>
<%@page import="mem.wit.Insa.FAQDAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:useBean id="faqDTO" class="mem.wit.Insa.FAQDTO"></jsp:useBean>
<jsp:setProperty property="*" name="faqDTO" />
<%
	FAQDAO dao = FAQDAO.getInstance();
	faqDTO.setfIp(request.getRemoteAddr());
	int su = dao.faqInsert(faqDTO);

	out.print(su);
	String msg = "", url = "";
	if (su != 0) {
		msg = "FAQ 글쓰기 성공 확인";
		url = "BoaLetManFAQ.jsp";
	} else {
		msg = "FAQ 글쓰기 실패 확인";
		url = "FAQIns.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>	";
</script>
</head>
</html>