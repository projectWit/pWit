<%@page import="mem.wit.Insa.PerDAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="perDTO"  class = "mem.wit.Insa.PerDTO"></jsp:useBean>
<jsp:setProperty property="*" name="perDTO"/>

<%

PerDAO dao = PerDAO.getInstance();
//perDTO.seteId(request.getSession("세션아이디"));
int su = dao.perInsert(perDTO);

String msg = "", url = "";
if(su != 0)
{
	msg ="게시판 글쓰기 성공 확인";
	url = "Personal.jsp";
	}
else
{
	msg = "게시판 글쓰기 실패 확인";
	url = "Personal.jsp";
}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
