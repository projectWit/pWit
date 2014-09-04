<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#boardtable TABLE { border-collapse : collapse; }
#boardtable IMG { border : 0px; }
#bl_table {
	border-bottom  : 1px solid #dcdcdc;
}
.bl_title {
	border-top      : 1px solid #dcdcdc;
	border-bottom   : 1px solid #dcdcdc;
	color       : #A3A0A2;
	font-weight : bold;
	background-color : #FCFCFC;
	text-align  : center;
	height      : 40px;
	font-family: "Verdana", dotum, '돋움';
	font-size:11px
}
.bl_list {
	height : 40px;
	border-top : 1px #DCDCDC solid;
}
TD.bl_list, .bl_list A, .bl_list A:link, .bl_list A:visited {
	font-family: "Verdana", dotum, '돋움';
	font-size : 12px;
	color : #8C8C8C;
}
.bl_commentNum {
    font-size   : 8pt;
    font-weight : 800;
}
.bl_pagetext, .bl_pagetext A, .bl_pagetext A:visited, .bl_pagetext A:link, .bl_pagetext A:hover {
    color       : #737172;
    font-family : Arial;
}
.bl_curpage, .bl_curpage A, .bl_curpage A:visited, .bl_curpage A:link {
    color       : #ff7e00;
    font-family : Arial;
}
#bl_count {
	text-align: left;
	line-height : 28px;
	font-family: Tahoma, "돋움", Verdana;
	font-size: 11px;
	color: #666;
}
#bl_search {
    text-align: right;
    line-height : 28px;
	font-family: Tahoma, "돋움", Verdana;
	font-size: 11px;
	color: #666;
}
.bl_no {
    width: 40px;       
    text-align  : center;
}

.bl_type {
    width: 100px;       
    text-align  : center;
}
.bl_subject {
    text-align  : center;
}
.bl_type {
	width : 80px;
	text-align:center;
}
.bl_name {
    width : 100px;
    text-align  : center;
}
.bl_phone {
    width : 100px;
    text-align  : center;
}
.bl_date {
    width   : 100px;
    text-align  : center;
}
.bl_place {
    width       : 80px;
    text-align  : center;
}
.bl_hits {
    width       : 80px;
    text-align  : center;
}
.bl_dateend {
    width       : 100px;
    text-align  : center;
}
.leftalign {
    text-align  : left;
}
#bl_linkbutton {
    width : 70px;
    text-align : right;
}
#bl_pages {
	text-align : center;
	font-family: '맑은 고딕';
	font-size: 11px;
	height: 40px;
}
a:link {
	text-decoration: none;
}
</style>
<script type="text/javascript" src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
function updateLReq(chk, rNum) {
	location.href="/teamP/updateLReq.gm?rNum="+rNum+"&chk="+chk;
}
</script>
<body>

<table width="900px" border="0" align="center" cellpadding="0" cellspacing="0" >
	<tr>	
		<td align="center"><!-- LIST HEADER --> 
			<!-- SEARCH FORM START -->
			
			<table border=0 width='900px' >
				<tr>
					<td id='bl_count'> 신청 목록 : <c:out value="${fn:length(list)}" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="center">		
			<table id='bl_table' border='0' cellpadding='0' cellspacing='0' width='100%'>
				<tr>
					<td class='bl_title bl_no'>No</td>					
					<td class='bl_title bl_subject'>강좌명</td>
					<td class='bl_title bl_place'>종목</td>
					<td class='bl_title bl_name'>신청자</td>
					<td class='bl_title bl_date'>시작일</td>
					<td class='bl_title bl_dateend'>종료일</td>
					<td class='bl_title bl_type'>상태</td>
					<td class='bl_title bl_phone'>비고</td>
				</tr>

				<c:forEach var="item" items="${list }"  varStatus="status">
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>${item.sNum }</td>
					
					<td class='bl_list bl_subject' colspan="1"><a href="#"  >${item.lecName }</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_place'>${item.sName }</td>>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>${item.eKName }</div></td>
					<td class='bl_list bl_date'>${item.sSDay.substring(0,10) }</td>
					<td class='bl_list bl_dateend'>${item.sEDay.substring(0,10) }</td>
					<td class='bl_list bl_type'>${item.eTel }</td>
					<td class='bl_list bl_phone'><input type="button" onclick="updateLReq('in',${item.sNum})" value="등록" /> <input type="button" onclick="updateLReq('no',${item.sNum})" value="미납" /> </td>
				</tr>
				</c:forEach>
				<!-- LIST REPEAT END -->
			</table>
			
			<!-- LIST END --></td>
	</tr>
	<tr>
		<td align="center"><br>
			
			<!-- PAGING START-->
			
			<!-- <table width='100%' border='0' cellpadding="0" cellspacing="0">
				<tr>
					<td id='bl_pages'> 
						
						 <span class="bl_curpage bl_pagetext">1</span> <span class="bl_pagetext"><a href="board.html?code=pippin1_board1&page=2">2</a></span>
						
					</td>
				</tr>
			</table> -->
			
			<!-- PAGING END--></td>
	</tr>
</table>
<br/>
<br/>
</body>
</html>