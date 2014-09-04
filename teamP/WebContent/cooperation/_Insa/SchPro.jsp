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

	String SchoolName, LanEtc, SDate, EDate, SMajor, Etc;
	int SchCd, DNType, SLocal, SGradCd;
	Map<String, String[]> parameters = request.getParameterMap();
	for (int i = 0; i < parameters.size() / 9; i++) {
		//학교등급구분
		SchCd = Integer.parseInt(request.getParameter("SchCd" + i));
		//학교이름
		SchoolName = request.getParameter("SchoolName" + i);
		//입학날짜
		SDate = request.getParameter("SDate" + i);
		//졸업날짜
		EDate = request.getParameter("EDate" + i);
		// 주간구분
		DNType = Integer.parseInt(request.getParameter("DNType" + i));
		// 전공
		SMajor = request.getParameter("SMajor" + i);
		// 지역구분
		SLocal = Integer.parseInt(request.getParameter("SLocal" + i));		
		// 특이사항
		Etc = request.getParameter("Etc" + i);
		// 졸업구분
		SGradCd = Integer.parseInt(request.getParameter("SGradCd" + i));		
	


		String sql = "insert into School(sSeq, sSchCd, sSchName, sJoinDate, sGradDate, sMajor, sLocCd, sEtc, sGradCd, sDNCd,EID)";
		sql += "values(Seq_sch.NEXTVAL,'" + SchCd + "' , '" + SchoolName
		+ "', '" + SDate + "', '" + EDate + "', '"
		+ SMajor + "', '" + SLocal +  "', '" + Etc +  "', '" + SGradCd +  "', '" + DNType +"', 'test8')";
		stmt.execute(sql);
	}
	String url1 = "School.jsp";
%>
<script>
location.href="<%=url1%>";
</script>


</head>
</html>