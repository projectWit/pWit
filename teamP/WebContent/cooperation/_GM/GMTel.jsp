<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.CdTelAreaDTO"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%><%
CodeDAO dao = new CodeDAO();
List<CdTelAreaDTO> result = dao.CallTel(); 
String str = "";
for(int i=0;i<result.size();i++) {
	if(i==0) {
		str+= "<option value='"+result.get(i).getTaCode()+"' selected>"+result.get(i).getTaNum()+"</option>";
	} else {
		str+= "<option value='"+result.get(i).getTaCode()+"'>"+result.get(i).getTaNum()+"</option>";
	}
}
out.print(str);
%>