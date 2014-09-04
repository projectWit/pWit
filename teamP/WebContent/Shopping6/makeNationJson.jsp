<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.AService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="mem.wit.pShopping06.WSNationDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
    %>

<%
	AService tst = new AService();
	List<WSNationDTO> nations = new ArrayList<WSNationDTO>();
	nations = tst.getAllNations();

	/* String strJson = "[{no:'1',nation:'미국'},{no:'2',nation:'캐나다'}]"; */
	String strJson = "[";

	for(int i=0; i<nations.size(); i++) {
		strJson += "{no:'"+nations.get(i).getNat_code()+"',nation:'"+nations.get(i).getNat_name()+"'},";
	}
	strJson += "]";
%>
<%=strJson %>
