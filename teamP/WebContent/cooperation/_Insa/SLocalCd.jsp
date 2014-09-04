<%@page import="mem.wit.Insa.SchDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.SLocalDTO" %>
<%@page import="java.util.List"%>
<%
SchDAO dao = new SchDAO();
List<SLocalDTO> result = dao.SLocal();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getLocalCd()
				+ "' selected>" + result.get(i).getLocalName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getLocalCd() + "'>"
				+ result.get(i).getLocalName() + "</option>";
	}
}
out.print(str);
 %>
  
