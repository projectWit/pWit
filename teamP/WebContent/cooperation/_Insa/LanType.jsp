<%@page import="mem.wit.Insa.LanTypeDTO"%> 
<%@page import="mem.wit.Insa.LanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%
LanDAO dao = new LanDAO();
List<LanTypeDTO> result = dao.lantype();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getLantypeCd()
				+ "' selected>" + result.get(i).getLanName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getLantypeCd() + "'>"
				+ result.get(i).getLanName() + "</option>";
	}
}
out.print(str);
 %>
  
