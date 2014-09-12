<%@page import="mem.wit.Insa.FRTCDDTO"%> 
<%@page import="mem.wit.Insa.FamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%
FamDAO dao = new FamDAO();
List<FRTCDDTO> result = dao.frtcd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getFrtCode()
				+ "' selected>" + result.get(i).getFrtName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getFrtCode() + "'>"
				+ result.get(i).getFrtName() + "</option>";
	}
}
out.print(str);
 %>
  
