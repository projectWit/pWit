<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.C_PlaceDTO"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%><%
CodeDAO dao = new CodeDAO();
List<C_PlaceDTO> result = dao.CallPlace();
String str = "";
for(int i=0;i<result.size();i++) { 
	if(i==0) {
		str+= "<option value='"+result.get(i).getpId()+"' selected>"+result.get(i).getPlace()+"</option>";
	} else {
		str+= "<option value='"+result.get(i).getpId()+"'>"+result.get(i).getPlace()+"</option>";
	}
}
out.print(str);
%>