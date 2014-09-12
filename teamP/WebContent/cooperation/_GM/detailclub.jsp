<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ page import="com.wit.member.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#tableList {
	border: 1px solid;
	border-collapse: collaps
	e;
	border-bottom-color: black;
	border-bottom-width: 2px;
	border-top-color: black;
	border-top-width: 2px;
	border-left-width: 0px;
	border-right-width: 0px;
}

#Pageing {
	margin: auto;
	margin-top: 15px;
	float: center;
	width: 715px;
	height: 20px;
	padding: 0;
	background: none;
	font-size: 12px;
	text-align: center;
}

.tdtitle {
	background-color: #dbdbdb;
}

input {
	margin-left: 10px;
	height: 17px;
	font-size: 12px;
	vertical-align: middle;
}

textarea {
	margin-left: 10px;
	font-size: 12px;
	margin-top: 5px;
	margin-bottom: 5px;
}

td {
	border-bottom: 1px solid #bdbdbd;
	height: 30px;
	font-size: 12px;
}

th {
	background-color: #F6F6F6;
	border-bottom: 1px solid #bdbdbd;
}

.list_btn {
	margin: auto;
	float: center;
	width: 715px;
	height: 47px;
	padding-top: 10px;
	text-align: center;
}

input.rightnone {
	margin-left: 10px;
	padding: 0 1px 1px 1px;
	height: 16px;
	border: 1px solid #808080;
	border-right: none;
	font-size: 12px;
	line-height: 1.5em;
	vertical-align: middle;
	background: #eff7fd;
}

img {
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: middle;
}
</style>
<script type="text/javascript"	src="/teamP/cooperation/_GM/script/calendar_beans_v2.0.js"	charset="utf-8"></script>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/teamP/cooperation/_GM/script/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var url = 'GMSport.jsp';
	$.post(url, function(data) {
		responseText = data;
		$('#sId').append(responseText);
	});
});
function sendList() {
	 history.back(); 
	 retrurn; 
}

//-->
</script>
</head>
<body>
<%
Member member = (Member) session.getAttribute("member");
%>
	<!-----------------------------------바디 시작---------------------------------------------------->
	<div id="sideRight" style="width: 750px">
		<h3>동호회 상세 정보</h3>
		
		<br/>
		
		<table width="715px" align="center" id="tableList">
			<colgroup>
				<col class="cell01">
				<col class="cell04">
				<col>
			<tbody>
				<tr>
					<th>동호회명</th>
					<td>${alist.get(0).cName }</td>

				</tr>
				<tr>
					<th><label>개설일</label></th>
					<td>
					${alist.get(0).cJoinDay.substring(0,10) }
					</td>
				</tr>
				<tr>
					<th><label for="cPresident">회장</label></th>
					<td>${alist.get(0).cPresident }</td>
				</tr>
				<tr>
					<th><label for="cPresident">회장 연락처</label></th>
					<td>${alist.get(0).cPTel }</td>
				</tr>
				<tr>
					<th><label for="cManagerName">총무</label></th>
					<td>${alist.get(0).cManager }</td>
				</tr>
				<tr>
					<th><label for="cManagerName">총무연락처</label></th>
					<td>${alist.get(0).cMTel }</td>
				</tr>
				<tr>
					<th><label for="sId">종목</label></th>
					<td>${alist.get(0).sName }</td>
				</tr>

				<tr>
					<th><label for="cHomepage">홈페이지 주소</label></th>
					<td>
					${alist.get(0).cHomepage }
					</td>
				</tr>

				<tr>
					<th><label for="sEDay">앰블럼</label></th>
					<td><img src='../../img/${alist.get(0).cEmblem }' width="200px" height="200px"/>
					</td>
				</tr>




			</tbody>
		</table>
		<br />
		<hr />
		<br />

		<div style="text-align:center">
			<input type="button" onclick="sendList()" value="목록" style="cursor:pointer; height:30px;"/>
		</div>
	</div>
	<br/>
	<br/>	

</body>

<!-----------------------------------바디 끝---------------------------------------------------->

</html>