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

	String LanQual, LanEtc;
	int LanType, LanRead, LanWrite, LanSpeak;
	Map<String, String[]> parameters = request.getParameterMap();
	for (int i = 0; i < parameters.size() / 6; i++) {
		//외국어명
		LanType = Integer.parseInt(request.getParameter("LanType" + i));
		//독해
		LanRead = Integer.parseInt(request.getParameter("LanRead" + i));
		// 작문
		LanWrite = Integer.parseInt(request.getParameter("LanWrite" + i));
		// 회화
		LanSpeak = Integer.parseInt(request.getParameter("LanSpeak" + i));
		// 자격증
		LanQual = request.getParameter("LanQual" + i);
		// 특이사항
		LanEtc = request.getParameter("LanEtc" + i);
	


		String sql = "insert into Language(lanSeq, lanTYPE, lanReadLvCd, lanWriteLvCd, lanSpkLvCd, lanQual, lanEtc, eId)";
		sql += "values(Seq_lan.NEXTVAL,'" + LanType + "' , '" + LanRead
		+ "', '" + LanWrite + "', '" + LanSpeak + "', '"
		+ LanQual + "', '" + LanEtc + "', 'test8')";
		stmt.execute(sql);
	}
	String url1 = "Language.jsp";
%>
<script>
location.href="<%=url1%>";
</script>


</head>
</html>