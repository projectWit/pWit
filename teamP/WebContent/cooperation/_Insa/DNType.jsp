<%@page import="mem.wit.Insa.SchDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.DNTypeDTO" %>
<%@page import="java.util.List"%> 
<%
SchDAO dao = new SchDAO();
List<DNTypeDTO> result = dao.DNType();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getTypeCd()
				+ "' selected>" + result.get(i).getTypeName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getTypeCd() + "'>"
				+ result.get(i).getTypeName() + "</option>";
	}
}
out.print(str);
 %>
  
