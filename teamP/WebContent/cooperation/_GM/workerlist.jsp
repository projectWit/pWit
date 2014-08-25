<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.bl_name {
    width : 100px;
    text-align  : center;
}
.bl_phone {
    width : 100px;
    text-align  : center;
}
.bl_date {
    width   : 70px;
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
.bl_state {
    width       : 80px;
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

<table width="900px" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><!-- LIST HEADER --> 
			<!-- SEARCH FORM START -->
			
			<table border=0 width='900px'>
				<tr>
					<td id='bl_count'> 직원 수 : 10 명 &nbsp;&nbsp; </td>
				</tr>
			</table>
			
			<!-- SEARCH FORM END --></td>
	</tr>
	<tr>
		<td align="center"><!-- LIST TITLE -->
			
			<table id='bl_table' border='0' cellpadding='0' cellspacing='0' width='100%'>
				<tr>
					<td class='bl_title bl_no'>직원번호</td>					
					<td class='bl_title bl_type'>부서</td>
					<td class='bl_title bl_place'>직책</td>
					<td class='bl_title bl_name'>직원명</td>
					<td class='bl_title bl_phone'>연락처</td>
					<td class='bl_title bl_date'>입사일</td>
					<td class='bl_title bl_state'>비고</td>
				</tr>
				<!-- INLINE NOTICE --> 
				 
				<!-- LIST REPEAT --> 
				<%
				for(int i=10;i>0;i--) {
				%>
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>111111</td>
					<td class='bl_list bl_type'>복지부</td>
					<td class='bl_list bl_place'>대리</td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>고쌤</div></td>
					<td class='bl_list bl_phone'>010-1111-1234</td>
					
					<td class='bl_list bl_hits'>2014-08-17</td>
					<td class='bl_list bl_state'>정규직</td>
				</tr>
				 <%
				}
				 %>
				<!-- LIST REPEAT END -->
			</table>
			
			<!-- LIST END --></td>
	</tr>
</table>
</body>
</html>