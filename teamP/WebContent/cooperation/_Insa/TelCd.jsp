<%@page import="mem.wit.Insa.TelDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.HeadDTO" %>
<%@page import="java.util.List"%> 
<%
InsaDAO dao = new InsaDAO();
List<TelDTO> result = dao.TelCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getTaCode()
				+ "' selected>" + result.get(i).getTaNum()
				+ "</option>" + "-" + " " + "-" + " ";
	} else {
		str += "<option value='" + result.get(i).getTaCode() + "'>"
				+ result.get(i).getTaNum() + "</option>" + "-" + " " + "-" + " ";
	}
}
out.print(str);
 %>
  
