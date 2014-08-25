<%@page import="common.MemberDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%
request.setCharacterEncoding("utf-8");
String username = request.getParameter("username");
String password_text = request.getParameter("password_text");
//String username = "test001";
//String password_text = "1111";
System.out.println("username : "+username);
System.out.println("password_text : "+password_text);
MemberDAO dao = new MemberDAO();

//result 0 : id 불일치
// result 1 : id 일치, pwd 불일치
// result 2 : id, pwd 모두 일치
int result = dao.checkLogIn(username, password_text);
String json = "[{\"result\":"+result+"}]";
out.print(json);
%>