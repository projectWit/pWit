<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.Test"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="mem.wit.pShopping06.WSMainCateDTO"%>    
<%
	request.setCharacterEncoding("utf-8");
%>

<% 
	Test tst = new Test();
	List<WSMainCateDTO> cates = new ArrayList<WSMainCateDTO>();
	cates = tst.getAllMainCates();

	String strJson = "[";
	for(int i=0; i<cates.size(); i++) {
		strJson += "{no:'"+cates.get(i).getMct_code()+"',maincate:'"+cates.get(i).getMct_name()+"'},";
	}
	strJson += "]";
%>
<%=strJson %>
