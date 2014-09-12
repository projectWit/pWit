<%@page import="mem.wit.Insa.PerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.MryTypeDTO" %>
<%@page import="java.util.List"%> 
<%
PerDAO dao = new PerDAO(); 
List<MryTypeDTO> result = dao.mryType();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<input type='radio' name = 'MryType' value= " + result.get(i).getMryCode() + " />" +
					result.get(i).getMryName() + " ";
	} else {
		str += "<input type='radio' name = 'MryType' value= " + result.get(i).getMryCode() + " />" +
				result.get(i).getMryName();
	}
}
out.print(str);
 %>
  
