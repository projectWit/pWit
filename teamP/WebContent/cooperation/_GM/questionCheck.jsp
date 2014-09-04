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
.bl_no {
    width: 40px;       
    text-align  : center;
}
.bl_icon {
    width: 30px;       
    text-align  : center;
}
.bl_product {
    width: 70px;       
    text-align  : center;
}
.bl_subject {
    text-align  : center;
}
.bl_name {
     width : 70px;
    text-align  : center;
}
.bl_date {
    width   : 70px;
    text-align  : center;
}
.bl_hits {
    width       : 60px;
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
<body>
<script type="text/javascript">
function sendQuestionBoardPage(qId) {
	location.href="questionDetail.jsp&qId="+qId;
}
</script>
<table width="900px" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><!-- LIST HEADER --> 
			<!-- SEARCH FORM START -->
			
			<table border=0 width='900px'>
				<tr>
					<td id='bl_count'> 문의 글 : <c:out value="${fn:length(list)}" />건</td>
					<td id='bl_search'></td>
				</tr>
			</table>
			
			<!-- SEARCH FORM END --></td>
	</tr>
	<tr>
		<td align="center"><!-- LIST TITLE -->
			
			<table id='bl_table' border='0' cellpadding='0' cellspacing='0' width='100%'>
				<tr>
					<td class='bl_title bl_no'>No</td>
					<td class='bl_title bl_icon'>&nbsp;</td>
					
					<td class='bl_title bl_subject'>Content</td>
					<td class='bl_title bl_name'>Name</td>
					
					<td class='bl_title bl_hits'>Answer</td>
				</tr>
				<!-- INLINE NOTICE --> 
				
							 
				<!-- LIST REPEAT --> 
				<c:forEach var="item" items="${list }" >
				<tr class="bl_oddline" onclick='sendQuestionBoardPage(${list.qId})' style="cursor:pointer">
					<td class='bl_list bl_no'>${list.qId }</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif" style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >${list.qTitle }</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>${list.mName }</div></td>
					<td class='bl_list bl_date'>${list.qDate }</td>
					<td class='bl_list bl_hits'>${list.stateName } </td>
				</tr>
				</c:forEach>				 
				<!-- LIST REPEAT END -->
			</table>
			
			<!-- LIST END --></td>
	</tr>
	<tr>
		<!-- <td align="center"><br>
			
			PAGING START
			
			<table width='100%' border='0' cellpadding="0" cellspacing="0">
				<tr>
					<td id='bl_pages'> 
						
						 <span class="bl_curpage bl_pagetext">1</span> <span class="bl_pagetext"><a href="#">2</a></span>
						
						 </td>
					<td id='bl_linkbutton'>   </td>
				</tr>
			</table>
			
			PAGING END</td> -->
	</tr>
</table>
</body>
</html>