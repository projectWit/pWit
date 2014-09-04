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
	List<WSSellerDTO> sellers = new ArrayList<WSSellerDTO>();
	
	String strJson = "[";
	if(sellerID == null) {
		sellers = tst.listSellers();
		String tel2 = " ";
		for(int i=0; i<sellers.size(); i++ ) {			
			if((tel2=sellers.get(i).getSel_tel2())==null) tel2=" ";
			if(i!=0) strJson += ",";
			strJson += "{id:'"+sellers.get(i).getSel_id();
			strJson += "',name:'"+sellers.get(i).getSel_name();
			strJson += "',tel1:'"+sellers.get(i).getSel_tel1();
			strJson += "',tel2:'"+sellers.get(i).getSel_tel2();
			strJson += "',email:'"+sellers.get(i).getSel_email();
			String addr1 = tst.getAddress(sellers.get(i).getSel_zipcode());
			System.out.println(addr1);
			strJson += "',addr:'"+addr1 + " " +sellers.get(i).getSel_addr();
			strJson += "',enterDate:'"+sellers.get(i).getSel_enterDate();
			strJson += "',level:'"+sellers.get(i).getSel_level();
			strJson += "'}";
		}
	}
	strJson += "]";
%>
<%=strJson %>
