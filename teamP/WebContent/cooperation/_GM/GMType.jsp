<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.C_TypeDTO"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%><%
CodeDAO dao = new CodeDAO();
List<C_TypeDTO> result = dao.CallType(); 
String str = "";
for(int i=0;i<result.size();i++) {
	if(i==0) {
		str+= "<option value='"+result.get(i).gettId()+"' selected>"+result.get(i).gettName()+"</option>";
	} else {
		str+= "<option value='"+result.get(i).gettId()+"'>"+result.get(i).gettName()+"</option>";
	}
}
out.print(str);
%>