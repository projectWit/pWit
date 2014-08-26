<%@page import="com.wit.member.Member"%>
<%@page import="com.wit.myBatis.MemberMapper"%>
<%@page import="com.wit.MyBatis"%>
<%@page import="common.MemberDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%
request.setCharacterEncoding("utf-8");
String username = request.getParameter("username");
String password_text = request.getParameter("password_text");
//String username = "test001";
//String password_text = "1111";
System.out.println("username : "+username);
System.out.println("password_text : "+password_text);
String resource = "com/wit/myBatis/myBatisConfig.xml";

// 세션 생성
MyBatis myBatis = new MyBatis(resource);	

// 맵퍼에서 필요한 쿼리 실행
MemberMapper memberMapper = myBatis.getMapper(MemberMapper.class);
Member member = memberMapper.login(username, password_text);

// 커밋, 세션 종료
myBatis.closeSession();

//result 0 : id 불일치
// result 1 : id 일치, pwd 불일치
// result 2 : id, pwd 모두 일치
int result = 0;
if (member == null) {	
	// id와 일치하는 레코드가 없음. id 불일치
} else {
	System.out.println("mId : "+member.getmId()+", mPwd : "+member.getmPwd());
	if (member.getmPwd().equals(password_text)) { 
	result = 2;	// id와 일치하고 pwd도 일치
	} else {	
	result = 1;	// id일치, pwd불일치
	}
}
String json = "[{\"result\":"+result+"}]";
System.out.println(json);
out.print(json);
%>