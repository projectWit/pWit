<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.AService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="mem.wit.pShopping06.WSSellerDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
    %>

<%
	String sel_id = request.getParameter("sel_id");
	String sel_pwd = request.getParameter("sel_pwd");
	System.out.println(sel_id);
	
	AService tst = new AService();

	WSSellerDTO result = new WSSellerDTO();
	
	if(sel_id != null) {
		result = tst.getValidSeller(sel_id, sel_pwd);		
	}

	String strJson = "[";
	strJson += "{id:'"+result.getSel_id();
	strJson += "',pwd:'"+result.getSel_password();
	strJson += "',name:'"+result.getSel_name();
	strJson += "',tel1:'"+result.getSel_tel1();
	strJson += "',tel2:'"+result.getSel_tel2();
	strJson += "',email:'"+result.getSel_email();
	strJson += "',seq:'"+result.getSel_zipcode();
	strJson += "',addr:'"+result.getSel_addr();
	strJson += "'}]";	
%>
<%=strJson %>
