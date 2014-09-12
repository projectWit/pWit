<%@page import="mem.wit.Insa.BhCdDTO"%> 
<%@page import="mem.wit.Insa.PerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<% 
	PerDAO dao = new PerDAO();
	List<BhCdDTO> result = dao.bhType();
	String str = "";
	for (int i = 0; i < result.size(); i++) {
		if (i == 0) {
			str += "<input type='radio' name = 'BhType' value= "
					+ result.get(i).getBhCode() + " />"
					+ result.get(i).getBhName() + " ";
		} else {
			str += "<input type='radio' name = 'BhType' value= "
					+ result.get(i).getBhCode() + " />"
					+ result.get(i).getBhName();
		}
	}
	out.print(str);
%>

