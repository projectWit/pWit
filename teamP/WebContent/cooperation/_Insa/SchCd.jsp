<%@page import="mem.wit.Insa.SchDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.SchCdDTO" %>
<%@page import="java.util.List"%> 
<%
SchDAO dao = new SchDAO();
List<SchCdDTO> result = dao.SchCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getSchCd()
				+ "' selected>" + result.get(i).getSchName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getSchCd() + "'>"
				+ result.get(i).getSchName() + "</option>";
	}
}
out.print(str);
 %>
  
