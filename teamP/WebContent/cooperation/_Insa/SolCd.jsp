<%@page import="mem.wit.Insa.PerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.SolCdDTO" %>
<%@page import="java.util.List"%> 
<%
PerDAO dao = new PerDAO();
List<SolCdDTO> result = dao.SolCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getSolCode()
				+ "' selected>" + result.get(i).getSolName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getSolCode() + "'>"
				+ result.get(i).getSolName() + "</option>";
	}
}
out.print(str);
 %>
  
