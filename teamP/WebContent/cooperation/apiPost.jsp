<%@page import="com.wit.Proxy"%>
<%@page import="java.net.URLDecoder"%><%@page import="java.net.URLEncoder"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%><%
/* api proxy */

//String query = URLDecoder.decode(request.getParameter("query"), "euc-kr");
//String query = new String( request.getParameter("query").getBytes("ISO8859_1"), "euc-kr" );
//String query = URLDecoder.decode(request.getParameter("query"), "euc-kr");
request.setCharacterEncoding("utf-8");
String query = request.getParameter("query");
//String brType = request.getParameter("br_type");	// 브라우저 타입
//String brType = "fo";
//query = "가좌1동";
/* if (brType.equals("ie")) {
	request.setCharacterEncoding("euc-kr");
} */

Proxy proxy = new Proxy(); 
String strRtn = null;
/* if (brType.equals("ie")) {
	strRtn = proxy.getApiXml("http://biz.epost.go.kr/KpostPortal/openapi?regkey=95146e35d51b27fe61404973168174&target=post&query="+URLEncoder.encode(query,"EUC-KR"));
} else {
	strRtn = proxy.getApiXml("http://biz.epost.go.kr/KpostPortal/openapied?regkey=95146e35d51b27fe61404973168174&target=post&query="+URLEncoder.encode(query,"EUC-KR"));
} */
strRtn = proxy.getApiXml("http://biz.epost.go.kr/KpostPortal/openapied?regkey=95146e35d51b27fe61404973168174&target=post&query="+URLEncoder.encode(query,"EUC-KR"));
out.print(strRtn);
//out.print(query);
%>