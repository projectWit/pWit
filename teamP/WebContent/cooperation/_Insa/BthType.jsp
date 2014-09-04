<%@page import="mem.wit.Insa.PerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.BthTypeDTO" %>
<%@page import="java.util.List"%>
<%
PerDAO dao = new PerDAO(); 
List<BthTypeDTO> result = dao.bthType();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<input type='radio' name = 'BthType' value= " + result.get(i).getBthCode() + " />" +
					result.get(i).getBthName() + " ";
	} else {
		str += "<input type='radio' name = 'BthType' value= " + result.get(i).getBthCode() + " />" +
				result.get(i).getBthName();
	}
}
out.print(str);
 %>
  
