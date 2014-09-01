<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.MemberDTO"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%><%CodeDAO dao = new CodeDAO();
String id=request.getParameter("mId");
List<MemberDTO> result = dao.CheckId("admin_openex");
String str = "<table style='border:1px solid #bbc5ce; font-family:맑은 고딕;  text-align:center; width:400px;'><tr style='background: #e2f0fc;' ><td>아이디</td><td>이름</td><td>연락처</td></tr>";
for(int i=0;i<result.size();i++) {
	str+= "<tr onclick='insertId("+result.get(i).getmId()+")'><td>"+result.get(i).getmId()+"</td><td>"+result.get(i).getmName()+"</td><td>"+result.get(i).getmMobile()+"</td></tr>";
}
str+= "</table>";
out.print(str);%>