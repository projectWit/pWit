<%@page import="org.aspectj.apache.bcel.generic.MULTIANEWARRAY"%>
<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy;" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<jsp:useBean id="insaDTO" class="mem.wit.Insa.InsaDTO"></jsp:useBean>
<jsp:setProperty property="*" name="insaDTO" />
<%
	InsaDAO dao = InsaDAO.getInstance();
	
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String fileName = "";
    File file = null;
    String savePath = "C:/ck/git2/pWit/teamP/WebContent/cooperation/_Insa/saveimg"; //<- 요기를 바꿔주면 다운받는 경로가 바뀝니다.
    
    Enumeration files = null;
    
    int maxSize = 5 * 1024 * 1024; // 최대 업로드 파일 크기 5MB(메가)로 제한
    MultipartRequest multi = new MultipartRequest(request,
            savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy()); 
    try {
    
     fileName = multi.getFilesystemName("ePhoto"); // 파일의 이름 얻기
     files = multi.getFileNames();
     String name = (String)files.nextElement();         
     file = multi.getFile(name);
     if (fileName == null) { // 파일이 업로드 되지 않았을때
    	 System.out.print("파일 업로드 되지 않았음");
     } else { // 파일이 업로드 되었을때   
         System.out.println("File Name  : " + fileName);
         System.out.println("FullName : "+savePath+fileName);
     }//else
    } catch (Exception e) {
        System.out.print("예외 발생 : " + e);
    }//catch

// 파일 저장 완료입니다.
insaDTO.seteId(multi.getParameter("eId"));
insaDTO.seteKName(multi.getParameter("eKName"));
insaDTO.seteCName(multi.getParameter("eCName"));
insaDTO.seteEName(multi.getParameter("eEName"));
insaDTO.seteJumin1(multi.getParameter("eJumin1"));
insaDTO.seteJumin2(multi.getParameter("eJumin2"));
insaDTO.setEhId(Integer.parseInt(multi.getParameter("ehId")));
insaDTO.seteJoinDate(multi.getParameter("eJoinDate"));
insaDTO.seteInTypeCd(Integer.parseInt(multi.getParameter("eInTypeCd")));
insaDTO.setePosCd(Integer.parseInt(multi.getParameter("ePosCd")));
insaDTO.seteDutyCd(Integer.parseInt(multi.getParameter("eDutyCd")));
insaDTO.seteDropDate(multi.getParameter("eDropDate"));
insaDTO.seteDropRsn(multi.getParameter("eDropRsn"));
insaDTO.seteDepCd(Integer.parseInt(multi.getParameter("eDepCd")));
insaDTO.seteAddr2(multi.getParameter("eAddr2"));
insaDTO.setePwd(multi.getParameter("ePwd"));
insaDTO.seteTel(multi.getParameter("eTel"));
insaDTO.seteMobile(multi.getParameter("eMobile"));

	insaDTO.setePhoto(fileName);
	String tel = dao.TelTotal(insaDTO.geteTel()) + "-"
			+ multi.getParameter("eTel2") + "-"
			+ multi.getParameter("eTel3");
	insaDTO.seteTel(tel);
	
	String mobile = dao.MobileTotal(insaDTO.geteMobile()) + "-"
			+ multi.getParameter("eMobile2") + "-"
			+ multi.getParameter("eMobile3");
	insaDTO.seteMobile(mobile);
	String email = multi.getParameter("eEmail1") + "@" + multi.getParameter("eEmail2");
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
		url = "InsaInsert.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>	";
</script>
</head>
</html>