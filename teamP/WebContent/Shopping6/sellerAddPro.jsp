<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mem.wit.pShopping06.Test"%>
<%@ page import="mem.wit.pShopping06.WSSellerDTO"%>    
<%
    	request.setCharacterEncoding("utf-8");
    %>
<jsp:useBean id="seller" class="mem.wit.pShopping06.WSSellerDTO"/>
<jsp:setProperty property="*" name="seller"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Test tst = new Test();
System.out.println(seller.getSel_zipcode());
	//int su = tst.addSeller(seller);
	

%>
${seller.sel_id}
<hr/>
${su}
</body>
</html>