<%@page import="org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@192.168.18.235:1521:XE";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, "pwit", "asdf");
	stmt = conn.createStatement();

	String InDt, OutDt, ComName, Position, SMajor, Reason, Dep;

	Map<String, String[]> parameters = request.getParameterMap();
	for (int i = 0; i < parameters.size() / 6; i++) {
		//입사일자
		InDt = request.getParameter("InDt" + i);
		//퇴사일자
		OutDt = request.getParameter("OutDt" + i);
		//회사이름
		ComName = request.getParameter("ComName" + i);
		//직위
		Position = request.getParameter("Position" + i);
		//부서
		Dep = request.getParameter("Duty" + i);
		//퇴사이유
		Reason = request.getParameter("Reason" + i);

		String sql = "insert into Career(cSeq, cjoindate, cdropdate, ccomname, cposname, cdepartment, cdroprsn, eid)";
		sql += "values(Seq_career.NEXTVAL,'" + InDt + "' , '" + OutDt
		+ "', '" + ComName + "', '" + Position + "', '"
		+ Dep + "', '" + Reason +"', 'test8')";
		stmt.execute(sql);
	}
	String url1 = "Career.jsp";
%>
<script>
location.href="<%=url1%>";
</script>


</head>
</html>