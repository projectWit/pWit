<%@page import="mem.wit.Insa.SchDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.SGradDTO" %> 
<%@page import="java.util.List"%>
<%
SchDAO dao = new SchDAO();
List<SGradDTO> result = dao.SGradCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getGradCd()
				+ "' selected>" + result.get(i).getGradName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getGradCd() + "'>"
				+ result.get(i).getGradName() + "</option>";
	}
}
out.print(str);
 %>
  
