<%@page import="mem.wit.Insa.PerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.ClsCdDTO" %>
<%@page import="java.util.List"%> 
<%
PerDAO dao = new PerDAO(); 
List<ClsCdDTO> result = dao.ClsCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getClsCode()
				+ "' selected>" + result.get(i).getClsName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getClsCode() + "'>"
				+ result.get(i).getClsName() + "</option>";
	}
}
out.print(str);
 %>
  
