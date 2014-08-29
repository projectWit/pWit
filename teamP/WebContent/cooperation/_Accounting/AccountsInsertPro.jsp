<%@page import="mem.wit.accounting.ACC_AccountsDTO"%>
<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="mem.wit.accounting.ACC_AccountsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="mem.wit.accounting.ACC_AccountsDTO" />
<jsp:setProperty property="*" name="dto" /><%
request.setCharacterEncoding("UTF-8");
ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
ACC_AccountsDAO dao = context.getBean("acc_AccountsDAO", ACC_AccountsDAO.class);
int su = dao.add(dto);
String msg="", url="";
if(su!=0){
	msg = "입력성공"; url="insertAccounts.jsp";
}else{
	msg = "입력실패"; url="insertAccounts.jsp";
}	
%>
<script>
alert("<%=msg%>");
location.href = "<%=url%>";
</script>
