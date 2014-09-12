<%@page import="java.util.List"%>
<%@page import="mem.wit.gm.CodeDAO"%> 
<%@page import="mem.wit.gm.ClubDTO"%>
<%@page import="com.wit.member.Member"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%

String realFolder = "";
String filename1 = "";
int maxSize = 1024*1024*5;
String encType = "UTF-8";
String savefile = "img";
ServletContext scontext = getServletContext();
realFolder = scontext.getRealPath(savefile);

MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
try {

	Enumeration<?> files = multi.getFileNames();
   String file1 = (String)files.nextElement();
   filename1 = multi.getFilesystemName(file1);

} catch (Exception e) {
   System.out.print("예외 발생 : " + e);
}//catch
String fullpath = filename1;
Member member = (Member) session.getAttribute("member");
ClubDTO dto = new ClubDTO();
dto.setcName(multi.getParameter("cName"));
dto.setsId(Integer.parseInt(multi.getParameter("sId")));
dto.setcHomepage(multi.getParameter("cHomepage"));
dto.setcEmblem(fullpath);
dto.setcPresident(member.getmId());
dto.setcManager(multi.getParameter("cManager"));
CodeDAO dao = new CodeDAO();
String result = dao.InsertClub(dto);
System.out.println("1");
response.sendRedirect("http:/teamP/cooperation/_GM/Member_GM_Club.jsp");
%>