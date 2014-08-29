
<%@page import="mem.wit.accounting.ACC_FixedAssetsDAO"%>
<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="dto" class="mem.wit.accounting.ACC_FixedAssetsDTO" />
<jsp:setProperty property="*" name="dto" /><%
request.setCharacterEncoding("UTF-8");
ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
ACC_FixedAssetsDAO dao = context.getBean("acc_FixedAssetsDAO", ACC_FixedAssetsDAO.class);
int su = dao.add(dto);
String msg="", url="";
if(su!=0){
	msg = "입력성공"; url="FixedAssetInsert.jsp";
}else{
	msg = "입력실패"; url="FixedAssetInsert.jsp";
}	
%>
<script>
alert("<%=msg%>");
location.href = "<%=url%>";
</script>