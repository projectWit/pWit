<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="mem.wit.accounting.ACC_TotalSlipDAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:useBean id="dto" class="mem.wit.accounting.ACC_TotalSlipDTO" />
     <jsp:setProperty property="*" name="dto" />
    <%
    ApplicationContext context = new GenericXmlApplicationContext(
			"mem/wit/accounting/Accounting.xml");
	ACC_TotalSlipDAO dao = context.getBean("acc_TotalSlipDAO",
			ACC_TotalSlipDAO.class);
    int su = dao.add(dto);
    String msg="", url="";
    if(su !=0){
    	msg="입력성공!";
    	url="insertSlips.jsp";
    }else{
    	msg = "입력실패";
    	url = "insertSlips.jsp";
    }
    %>
    <script>
    alert("<%=msg%>");
    location.href="<%=url%>";
    </script>