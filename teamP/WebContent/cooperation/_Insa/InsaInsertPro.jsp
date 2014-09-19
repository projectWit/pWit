<%@page import="org.aspectj.apache.bcel.generic.MULTIANEWARRAY"%>
<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%> 
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy;"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:useBean id="insaDTO" class="mem.wit.Insa.InsaDTO"></jsp:useBean>
<jsp:setProperty property="*" name="insaDTO" />
<%
	InsaDAO dao = InsaDAO.getInstance();

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String realFolder = "";
	String filename1 = "";
	int maxSize = 1024 * 1024 * 5;
	String encType = "UTF-8";
	String savefile = "img";
	ServletContext scontext = getServletContext();
	realFolder = scontext.getRealPath(savefile);
	MultipartRequest multi = new MultipartRequest(request, realFolder,
			maxSize, encType, new DefaultFileRenamePolicy());
	try {

		Enumeration<?> files = multi.getFileNames();
	     String file1 = (String)files.nextElement();
	     filename1 = multi.getFilesystemName(file1);
	     
	} catch (Exception e) {
		System.out.print("예외 발생 : " + e);
	}//catch
	String fullpath = filename1;

	// 파일 저장 완료입니다.
	insaDTO.seteId(multi.getParameter("eId"));
	insaDTO.seteKName(multi.getParameter("eKName"));
	insaDTO.seteCName(multi.getParameter("eCName"));
	insaDTO.seteEName(multi.getParameter("eEName"));
	insaDTO.seteJumin1(multi.getParameter("eJumin1"));
	insaDTO.seteJumin2(multi.getParameter("eJumin2"));
	insaDTO.setEhId(Integer.parseInt(multi.getParameter("ehId")));
	insaDTO.seteJoinDate(multi.getParameter("eJoinDate"));
	insaDTO.seteInTypeCd(Integer.parseInt(multi
			.getParameter("eInTypeCd")));
	insaDTO.setePosCd(Integer.parseInt(multi.getParameter("ePosCd")));
	insaDTO.seteDutyCd(Integer.parseInt(multi.getParameter("eDutyCd")));
	insaDTO.seteDropDate(multi.getParameter("eDropDate"));
	insaDTO.seteDropRsn(multi.getParameter("eDropRsn"));
	insaDTO.seteDepCd(Integer.parseInt(multi.getParameter("eDepCd")));
	insaDTO.seteAddr2(multi.getParameter("eAddr2"));
	insaDTO.setePwd(multi.getParameter("ePwd"));
	insaDTO.seteTel(multi.getParameter("eTel"));
	insaDTO.seteMobile(multi.getParameter("eMobile"));

	insaDTO.setePhoto(fullpath);
	String tel = dao.TelTotal(insaDTO.geteTel()) + "-"
			+ multi.getParameter("eTel2") + "-"
			+ multi.getParameter("eTel3");
	insaDTO.seteTel(tel);

	String mobile = dao.MobileTotal(insaDTO.geteMobile()) + "-"
			+ multi.getParameter("eMobile2") + "-"
			+ multi.getParameter("eMobile3");
	insaDTO.seteMobile(mobile);
	String email = multi.getParameter("eEmail1") + "@"
			+ multi.getParameter("eEmail2");
	insaDTO.seteEmail(email);
	insaDTO.setePostNum(Integer.parseInt(multi.getParameter("seq")));
	int su = dao.insaInsert(insaDTO);

	out.print(su);
	String msg = "", url = "";
	if (su != 0) {
		msg = "인사입력 성공 확인";
		url = "InsaLeftManList.jsp";
	} else {
		msg = "인사입력 실패 확인";
		url = "InsaLeftMan.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
</head>
</html>