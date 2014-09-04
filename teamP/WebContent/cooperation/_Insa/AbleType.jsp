<%@page import="mem.wit.Insa.PerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.AbleTypeDTO" %> 
<%@page import="java.util.List"%>
<%
PerDAO dao = new PerDAO();
List<AbleTypeDTO> result = dao.ableType();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<input type='radio' name = 'AbleType' value= " + result.get(i).getAbleCode() + " />" +
					result.get(i).getAbleName() + " ";
	} else {
		str += "<input type='radio' name = 'AbleType' value= " + result.get(i).getAbleCode() + " />" +
				result.get(i).getAbleName();
	}
}
out.print(str);
 %>
  
