<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.AService"%>
<%@ page import="mem.wit.pShopping06.WSProductDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="prd" class="mem.wit.pShopping06.WSProductDTO"/>
<jsp:setProperty property="*" name="prd"/>


<%
	AService tst = new AService();

	System.out.println(prd.getPrd_name());
	System.out.println(prd.getPrd_mainCate());
	System.out.println(prd.getPrd_subCate());
	System.out.println(prd.getPrd_sellerID());
	
	
	int prd_code = tst.addProduct(prd);

	String strJson = "[";
	strJson += "{prd_code:'"+prd_code+"'}]";
%>
<%=strJson %>
