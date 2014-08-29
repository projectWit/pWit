<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.FacilDTO"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%><%CodeDAO dao = new CodeDAO();
List<FacilDTO> result = dao.CallFacil();
String str = "";
for(int i=0;i<result.size();i++) {
	if(i==0) {
		str+= "<option value='"+result.get(i).getfId()+"' selected>"+result.get(i).getfName()+"</option>";
	} else {
		str+= "<option value='"+result.get(i).getfId()+"'>"+result.get(i).getfName()+"</option>";
	}
}
out.print(str);%>