<%@ page import="mem.wit.MM.placeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="plaDTO" class="mem.wit.MM.placeDTO" />
<jsp:setProperty property="*" name="plaDTO"/>
<%
placeDAO dao = placeDAO.getInstance();
plaDTO.setMm_ip(request.getRemoteAddr());
int su = dao.placeWrite(plaDTO);
//out.print(su);
String msg="", url="";
if(su!=0){
	msg = "게시판 글쓰기가 성공했소!!";
	url = "WIT_MM_place.jsp";
}else{
	msg = "게시판 글쓰기가 실패했소!!";
	url = "WIT_MM_placeWrite.jsp";
}
%>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
