<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.AService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="mem.wit.pShopping06.WSSubCateDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
    %>
<%
	int mct = Integer.parseInt(request.getParameter("mct"));

	AService tst = new AService();
	List<WSSubCateDTO> cates = new ArrayList<WSSubCateDTO>();
	cates = tst.getAllSubCates(mct);

	String strJson = "[";
	for(int i=0; i<cates.size(); i++) {
		strJson += "{no:'"+cates.get(i).getSct_code()+"',subcate:'"+cates.get(i).getSct_name()+"'},";
	}
	strJson += "]";
%>
<%=strJson %>
