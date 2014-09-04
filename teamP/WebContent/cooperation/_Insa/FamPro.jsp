<%@page import="org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page import="mem.wit.Insa.FamDTO"%>
<%@page import="mem.wit.Insa.FamDAO"%>
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
<jsp:useBean id="famDTO" class="mem.wit.Insa.FamDTO"></jsp:useBean>
<jsp:setProperty property="*" name="famDTO" />
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@192.168.18.235:1521:XE";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, "pwit", "asdf");
	stmt = conn.createStatement();

	String fName, fRelation, fFinGrad, fJob, fCompany;
	int fhtcd, frtcd, fJumin1, fJumin2;
	Map<String, String[]> parameters = request.getParameterMap();
	for (int i = 0; i < parameters.size() / 9; i++) {
		//주민앞
		fJumin1 = Integer.parseInt(request.getParameter("fJumin1" + i));
		//주민뒤
		fJumin2 = Integer.parseInt(request.getParameter("fJumin2" + i));
		// 이름
		fName = request.getParameter("fName" + i);
		// 관계
		fRelation = request.getParameter("fRelation" + i);
		// 학력
		fFinGrad = request.getParameter("fFinGrad" + i);
		// 직업
		fJob = request.getParameter("fJob" + i);
		// 회사
		fCompany = request.getParameter("fCompany" + i);
		// 동거코드
		fhtcd = Integer.parseInt(request.getParameter("fhtcd" + i));
		// 부양코드
		frtcd = Integer.parseInt(request.getParameter("rtcd" + i));


		String sql = "insert into FAMILY(fSeq, fJumin1, fJumin2, fName, fRelation, fFinGrad, fJob, fCompany, fHtCd, rtCd, eId)";
		sql += "values(Seq_fam.NEXTVAL,'" + fJumin1 + "' , '" + fJumin2
				+ "', '" + fName + "', '" + fRelation + "', '"
				+ fFinGrad + "', '" + fJob + "', '" + fCompany
				+ "', '" + fhtcd + "', '" + frtcd + "', 'test8')";
		stmt.execute(sql);
	}
	String url1 = "family.jsp";
%>
<script>
location.href="<%=url1%>";
</script>


</head>
</html>