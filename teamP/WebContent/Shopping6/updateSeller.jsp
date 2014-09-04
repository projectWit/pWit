<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.AService"%>
<%@ page import="mem.wit.pShopping06.WSSellerDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="seller" class="mem.wit.pShopping06.WSSellerDTO"/>
<jsp:setProperty property="*" name="seller"/>


<%

	AService tst = new AService();

	int su = tst.updateSeller(seller);

	String strJson = "[";
	strJson += "{result:'"+su+"'}]";
%>
<%=strJson %>
