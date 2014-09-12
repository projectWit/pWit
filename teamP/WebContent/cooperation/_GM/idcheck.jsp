<%@page import="mem.wit.gm.CodeDAO"%><%@page import="mem.wit.gm.MemberDTO"%><%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Id Check</title>
<style>
.cs_main .notice_box .twrap {
	float: left;
	width: 500px;
	height: 250px;
	overflow: hidden;
	margin-right: 29px;
}

.cs_main .notice_box {
	float: left;
	width: 500px;
	height: 250px;
	padding-left:20px;
}

.cs_contents {
	width: 500px;
	height: 250px;
	overflow: hidden;
	position: relative;
}

.cs_wrap {
	width: 500px;
	height: 250px;
	color: #777;
	overflow: hidden;
}

#MainContents {
	overflow: hidden;
	position: relative;
	width: 500px;
	height: 250px;
}
#result {
	margin:auto;
}

.cs_main .notice_box h3,.cs_main .depositor_board h3 {
	float: left;
	width: 375px;
	overflow: hidden;
	border-bottom: 1px solid #72413b;
}


.cs_main .notice_board,.cs_main .depositor_board {
	float: left;
	width: 375px;
	table-layout: fixed;
	padding-top: 7px;
}


.cs_main .notice_box h3 a,.cs_main .depositor_board h3 a {
	float: right;
	width: 160px;
	margin-top: 8px;
}
</style>
</head>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
window.moveTo(0, 10);
function searchId() {
	if(document.frm.mId.value==""){
		alert("ID를 입력해 주세요");
		document.frm.mID.focus();
		return;
	}
	document.frm.submit();
}
function insertId(id, name) {
	window.opener.clubInsFrm.cManager.value=id;
	window.opener.clubInsFrm.cManagerName.value=name;
	window.close();
	}
</script>
<%
String mId = request.getParameter("mId");
String vChk = request.getParameter("chk");
if(vChk==null)
	vChk = "y";
CodeDAO dao = new CodeDAO();
List dtoL = dao.CheckId(mId);
%>
<body>
<form action="idcheck.jsp" method="post" name="frm" >
	<div class="cs_main" id="MainContents">
		<div class="cs_wrap">
			<div class="cs_contents">
				<div class="notice_box">
					<div class="twrap">
						<h3>ID를 입력해 주세요	</h3>
						<table class="notice_board" cellspacing="0" cellpadding="0"	valign="middle">

							<tbody>
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"></td>

								</tr>
								<tr>
									<td align="center" colspan="2"
										style="height: 10px; overflow: hidden;">ID : <input
										type="text" name="mId" id="mId"><input type="button" value="찾기" onclick="searchId()"/></td>
								</tr>
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"></td>

								</tr>
								<input type="hidden" name="chk" value="n" />
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"></td>
								</tr>
							</tbody>
						</table>
	<table style="width:450px;height:100px; text-align:center;"><tr><td colspan="3"></td></tr>
	<%
		
	if(vChk.equals("n")){
		if(dtoL.size()==0){%>
			<tr><td align="center" colspan="3"><br>검색된 결과가 없습니다.</td></tr>
		<%}
		else {
			MemberDTO dto = (MemberDTO)dtoL.get(0); 
		%>
		<tr><td align="center" colspan="3"><br>※ 검색후 , 클릭하면 저장됩니다.</td></tr>
		<tr><td height="1" bgcolor="#990000" colspan="3"></td></tr>
		<tr align="center">
		<td width="100px">ID</td>
		<td width="120px">NAME</td>
		<td width="120px">MOBILE</td>
		</tr>
		<tr><td height="1" bgcolor="#990000" colspan="6"></td></tr>
		<tr align="center" class="cur01" onclick="insertId('<%=dto.getmId()%>','<%=dto.getmName() %>')" style="cursor:pointer;">
		<td>
		<span ><%=dto.getmId() %></span>
		</td>
		<td><%=dto.getmName() %></td>
		<td><%=dto.getmMobile()%></td>
		</tr>
	
	<%	}
	}
	%>
</table>
					</div>
				</div>
			</div>
		</div>
	</div>
<input type="button" onclick="javascript:self.close()" value="닫 기" style="width: 50px; height: 25px;">


</form>
</body>
</html>