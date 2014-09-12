<%@page import="mem.wit.gm.ZipcodeDTO"%>
<%@page import="java.util.List"%>  
<%@page import="mem.wit.gm.ZipcodeDAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.cur01{cursor:pointer;}
body{
text-align: center;
font-family: "돋움", Dotum, sans-serif;
	line-height: 1.6em;
}
table {
	margin-left:10px;
	border-top:1px solid #990000; 
	border-bottom:1px solid #990000;
}

</style>
<script>
function donCheck() {
	if(document.zipForm.dong.value==""){
		alert("동 읍 면 이름을 입력하세요 ^^;");
		document.zipForm.dong.focus();
		return;
	}
	document.zipForm.submit();
}
function	remain_cst_addr(zipCode, cst_addr,seq)	{
	window.opener.member_zipForm.PostNum1.value = zipCode;
	window.opener.member_zipForm.Addr1.value = cst_addr;
	window.opener.member_zipForm.seq.value = seq;
	window.close();
}

</script>
<%
String vChk = request.getParameter("chk");
if(vChk==null)
	vChk = "y";
String vDong = request.getParameter("dong");
ZipcodeDAO dao = ZipcodeDAO.getInstance();
List dtoL = dao.zipSelect(vDong);

%>
</head>
<body  onload="zipForm.dong.focus()">
<p>우 편 번 호 찾 기</p>
<form action="zipCheck.jsp" name="zipForm" method="post">
<table  width="600px"height="100px">

<tr><td colspan="6">동이름 입력 : 
<input type="hidden" name="chk" value="n"/>
<input type="text" name="dong"/>
<input type="button" value="검색"
onClick="donCheck()"/>
</td></tr>

<%
if(vChk.equals("n")){
	if(dtoL.isEmpty()){%>
		<tr><td align="center" colspan="6"><br>검색된 결과가 없습니다.</td></tr>
	<%}
	else{%>
	<tr><td align="center" colspan="6"><br>※검색후 , 아래 우편번호를 클릭하면 자동으로 입력 됩니다</td></tr>
	<tr><td height="1" bgcolor="#990000" colspan="6"></td></tr>
	<tr align="center">
	<td width="90px">우편번호</td>
	<td width="60px">시  도</td>
	<td width="80px">구  군</td>
	<td width="90px"> 동  </td>
	<td> 리  </td>
	<td>번  지</td>
	</tr>
	<tr><td height="1" bgcolor="#990000" colspan="6"></td></tr>
	<%
	for(int i=0;i<dtoL.size();i++){
	ZipcodeDTO dto = (ZipcodeDTO)dtoL.get(i);
	String cst_addr = dto.getSido()+ dto.getGugun()+dto.getDong()+dto.getRi()+ dto.getBunji();
	%>
	<tr align="center" class="cur01">
		<td>
		<span onclick="remain_cst_addr('<%=dto.getZipcode() %>', '<%=cst_addr%>', '<%=dto.getSeq()%>')"> <%=dto.getZipcode() %></span>
		</td>
		<td><%=dto.getSido() %></td>
		<td><%=dto.getGugun() %></td>
		<td><%=dto.getDong() %></td>
		<td><%=dto.getRi() %></td>
		<td><%=dto.getBunji() %></td>
		<td><%=dto.getSeq()%></td>
		
		</tr>
	
<%	}
	}
}
%>


</table>
<div style="">
<a href="javascript:this.close()">닫기</a>
</div>
</form>
</body>
</html>