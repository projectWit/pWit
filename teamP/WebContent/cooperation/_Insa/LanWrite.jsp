<%@page import="mem.wit.Insa.LanWriteLvDTO"%> 
<%@page import="mem.wit.Insa.LanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%
LanDAO dao = new LanDAO();
List<LanWriteLvDTO> result = dao.lanwrite();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getWritelvCd()
				+ "' selected>" + result.get(i).getWritelvName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getWritelvCd() + "'>"
				+ result.get(i).getWritelvName() + "</option>";
	}
}
out.print(str);
 %>
  
