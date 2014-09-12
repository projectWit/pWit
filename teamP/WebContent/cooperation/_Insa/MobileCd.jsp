<%@page import="mem.wit.Insa.MobileDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.List"%> 
<%
InsaDAO dao = new InsaDAO();
List<MobileDTO> result = dao.MobileCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getMblCode()
				+ "' selected>" + result.get(i).getMblNum()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getMblCode() + "'>"
				+ result.get(i).getMblNum() + "</option>";
	}
}
out.print(str);
 %>
  
