<%@page import="mem.wit.Insa.LanSpeakLvDTO"%> 
<%@page import="mem.wit.Insa.LanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%
LanDAO dao = new LanDAO();
List<LanSpeakLvDTO> result = dao.lanspeak();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getSpeaklvCd()
				+ "' selected>" + result.get(i).getSpeaklvName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getSpeaklvCd() + "'>"
				+ result.get(i).getSpeaklvName() + "</option>";
	}
}
out.print(str);
 %>
  
