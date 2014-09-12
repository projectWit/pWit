<%@page import="mem.wit.Insa.LanReadLvDTO"%> 
<%@page import="mem.wit.Insa.LanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%
LanDAO dao = new LanDAO();
List<LanReadLvDTO> result = dao.lanread();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getReadlvCd()
				+ "' selected>" + result.get(i).getReadlvName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getReadlvCd() + "'>"
				+ result.get(i).getReadlvName() + "</option>";
	}
}
out.print(str);
 %>
  
