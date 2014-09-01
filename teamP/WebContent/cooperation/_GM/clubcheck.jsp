<%@page import="java.util.List" %><%@ page import="mem.wit.gm.ClubDTO" %><%@page import="mem.wit.gm.CodeDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Id Check</title>
<style>
#MainContents {
	overflow: hidden;
	position: relative;
	width: 600px;
	height: 200px;
}
#result {
	margin:auto;
}
 .notice_board{
	width: 475px;
	table-layout: fixed;
	padding-top: 7px;
	text-align:center;
}
</style>
</head>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
window.moveTo(0, 10);

function SendClubNo(cId) {
	window.opener.frmInput.cId.value=cId;
	window.close();
}
</script>
<body>
<%String id=request.getParameter("mId");
  CodeDAO dao = new CodeDAO();
  List<ClubDTO> result = dao.CheckClub(id);
  System.out.println("동호회 수 : "+result.size());  %>
<form name="chkfrm" method="post">
<h3><%=id %>님이 가입하신 동호회 목록입니다.<br/>하나만 선택해 주세요</h3>
<table class="notice_board" cellspacing="0" cellpadding="0"	valign="middle" style='border:1px solid #bbc5ce; font-family:맑은 고딕;'>
	
	<tbody>
		<tr style='background: #e2f0fc;'><td>동호회명</td><td>종목</td></tr>
		
		<%
		if(result.size()==0) {
			%><tr><td colspan="2">등록된 동호회가 없습니다. 확인후 다시 신청해 주세요</td></tr><%
		} else {
		for(int i=0;i<result.size();i++) {%>
		<tr onclick="SendClubNo('<%=result.get(i).getcId()%>')" style="cursor:pointer;"><td><%=result.get(i).getcName() %></td><td><%=result.get(i).getsName() %></td></tr>
		<%} 
		}%>
	</tbody>
</table>
<input type="button" onclick="window.close()" value="닫기"/>
</form>
</body>
</html>