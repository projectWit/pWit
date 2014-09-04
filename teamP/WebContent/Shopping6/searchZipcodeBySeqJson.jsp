<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.AService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="mem.wit.pShopping06.ZipcodesDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
    %>

<%
	String str = request.getParameter("seq");

	int seq = 0;
	if( str != null) seq = Integer.parseInt(str);

	System.out.println(seq);
	
	AService tst = new AService();
	ZipcodesDTO zip = new ZipcodesDTO();
	zip = tst.searchZipcodeBySeq(seq);

	String strJson = "[";
	String ri=" ";
	String bunji = " ";

	if((ri=zip.getRi())==null) ri=" ";		
 	if((bunji=zip.getBunji())==null) bunji=" ";		
	
 	strJson += "{zipcode:'"+zip.getZipcode()
	+"',sido:'"+zip.getSido()
	+"',gugun:'"+zip.getGugun()
	+"',dong:'"+zip.getDong()
	+"',ri:'"+ri
	+"',bunji:'"+bunji
	+"',seq:'"+zip.getSeq()
	+"'}]";

%>
<%=strJson %>
