<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<jsp:useBean id="insaDTO" class="mem.wit.Insa.InsaDTO"></jsp:useBean>
<jsp:setProperty property="*" name="insaDTO" />
<%
	InsaDAO dao = InsaDAO.getInstance();

	String tel = request.getParameter("eTel1") + "-"
			+ request.getParameter("eTel2") + "-"
			+ request.getParameter("eTel3");
	insaDTO.seteTel(tel);
	
	String mobile = request.getParameter("eMobile") + "-"
			+ request.getParameter("eMobile2") + "-"
			+ request.getParameter("eMobile3");
	insaDTO.seteMobile(mobile);
	
	String email = request.getParameter("eEmail1") + "@" + request.getParameter("eEmail2");
	insaDTO.seteEmail(email);
	
	insaDTO.setePostNum(Integer.parseInt(request.getParameter("seq")));
	int su = dao.insaUpdate(insaDTO);

	out.print(su);
	String msg = "", url = "";
	if (su != 0) {
		msg = "인사수정 성공 확인";
		url = "InsaLeft.jsp";
	} else {
		msg = "인사수정 실패 확인";
		url = "InsaUpd.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>	";
</script>
</head>
</html>