<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.HIdDTO" %>
<%@page import="java.util.List"%>
<%
InsaDAO dao = new InsaDAO();
List<HIdDTO> result = dao.hId();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<input type='radio' name = 'ehId' value= '" + result.get(i).gethId() + "'  />" +
					result.get(i).gethName() + " ";
	} else {
		str += "<input type='radio' name = 'ehId' value= '" + result.get(i).gethId() + "' />" +
				result.get(i).gethName();
	}
}
out.print(str);
 %>
  
