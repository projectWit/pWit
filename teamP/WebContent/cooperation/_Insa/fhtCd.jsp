<%@page import="mem.wit.Insa.FHTCDDTO"%> 
<%@page import="mem.wit.Insa.FamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%
FamDAO dao = new FamDAO();
List<FHTCDDTO> result = dao.fhtcd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getFhtCode()
				+ "' selected>" + result.get(i).getFhtName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getFhtCode() + "'>"
				+ result.get(i).getFhtName() + "</option>";
	}
}
out.print(str);
 %>
  
