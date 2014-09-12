<%@page import="mem.wit.Insa.PerDAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mem.wit.Insa.ArmyCdDTO" %>
<%@page import="java.util.List"%>
<%
PerDAO dao = new PerDAO();
List<ArmyCdDTO> result = dao.ArmyCd();
String str = "";
for (int i = 0; i < result.size(); i++) {
	if (i == 0) {
		str += "<option value='" + result.get(i).getArmyCode()
				+ "' selected>" + result.get(i).getArmyName()
				+ "</option>";
	} else {
		str += "<option value='" + result.get(i).getArmyCode() + "'>"
				+ result.get(i).getArmyName() + "</option>";
	}
}
out.print(str);
 %>
  
