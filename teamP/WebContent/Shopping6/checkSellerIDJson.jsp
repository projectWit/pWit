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
	String sellerID = request.getParameter("sellerID");
	System.out.println(sellerID);
	
	AService tst = new AService();

	int result=0;
	
	if(sellerID != null) {
		result = tst.isSeller(sellerID);		
	}

	String strJson = "[";
	strJson += "{isSeller:'"+result+"'}]";
%>
<%=strJson %>
