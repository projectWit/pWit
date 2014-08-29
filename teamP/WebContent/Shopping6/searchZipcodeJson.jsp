<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.Test"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="mem.wit.pShopping06.ZipcodesDTO"%>    
<%
	request.setCharacterEncoding("utf-8");
%>

<% 
	String dong = request.getParameter("dongName");

	System.out.println(dong);
	
	Test tst = new Test();
	List<ZipcodesDTO> zips = new ArrayList<ZipcodesDTO>();
	zips = tst.searchZipcode(dong);

	String strJson = "[";
	String ri=" ";
	String bunji = " ";
 	for(int i=0; i<zips.size(); i++) {
 		if((ri=zips.get(i).getRi())==null) ri=" ";		
 		if((bunji=zips.get(i).getBunji())==null) bunji=" ";		

		strJson += "{zipcode:'"+zips.get(i).getZipcode()
			+"',sido:'"+zips.get(i).getSido()
			+"',gugun:'"+zips.get(i).getGugun()
			+"',dong:'"+zips.get(i).getDong()
			+"',ri:'"+ri
			+"',bunji:'"+bunji
			+"',seq:'"+zips.get(i).getSeq()
			+"'},";
	}
	strJson += "]";
%>
<%=strJson %>
