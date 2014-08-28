<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.C_SportDTO"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%><%CodeDAO dao = new CodeDAO();
List<C_SportDTO> result = dao.CallSport();
String str = "";
for(int i=0;i<result.size();i++) {
	if(i==0) {
		str+= "<option value='"+result.get(i).getsId()+"' selected>"+result.get(i).getsName()+"</option>";
	} else {
		str+= "<option value='"+result.get(i).getsId()+"'>"+result.get(i).getsName()+"</option>";
	}
}
System.out.println(str);
out.print(str);%>