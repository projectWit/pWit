<%@page import="mem.wit.Insa.BoaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.CodeDAO" %>
<%@ page import = "mem.wit.Insa.HeadDTO" %>
<%@page import="java.util.List"%>
<%
BoaDAO dao = new BoaDAO();
List<HeadDTO> result = dao.HeadCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getHeadCd()
				+ "' selected>" + result.get(i).getHeadName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getHeadCd() + "'>"
				+ result.get(i).getHeadName() + "</option>";
	}
}
out.print(str);
  %>
  
