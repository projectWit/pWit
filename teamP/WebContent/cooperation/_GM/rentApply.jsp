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
	font-size:11px
}
.bl_list {
	height : 40px;
	border-top : 1px #DCDCDC solid;
}
TD.bl_list, .bl_list A, .bl_list A:link, .bl_list A:visited {
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
	font-size: 11px;
	color: #666;
}
#bl_search {
    text-align: right;
    line-height : 28px;
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
     width : 150px;
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
					<td id='bl_count'> 총 신청목록 : 30건 &nbsp;&nbsp;PAGE 1/2 </td>
					<td id='bl_search'><select><option>월별</option><option>연도별</option></select></td>
				</tr>
			</table>
			
			<!-- SEARCH FORM END --></td>
	</tr>
	<tr>
		<td align="center"><!-- LIST TITLE -->
			
			<table id='bl_table' border='0' cellpadding='0' cellspacing='0' width='100%'>
				<tr>
					<td class='bl_title bl_no'>No</td>
					<td class='bl_title bl_subject'>신청 목적</td>
					<td class='bl_title bl_name'>동호회명</td>
					<td class='bl_title bl_product'>종목</td>
					<td class='bl_title bl_date'>날짜</td>
					<td class='bl_title bl_hits'>비고</td>
				</tr>
				
				<!-- LIST REPEAT --> 
				<%
				for(int i=30;i>0;i++) {
				%>
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>30</td>
					<td class='bl_list bl_subject leftalign' colspan="1"><a href="#"  >[공지]쇼핑아이콘 비콘 종료 & 피핀 알리미 설치하기</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>Trigger</div></td>
					
					<td class='bl_list bl_product'>농구</td>
					<td class='bl_list bl_date'>2014-08-14</td>
					<td class='bl_list bl_hits'><img src='img/icon_ok.gif' /></td>
				</tr>
				<%
				}
				%>
				 
				<!-- LIST REPEAT END -->
			</table>
			
			<!-- LIST END --></td>
	</tr>
	<tr>
		<td align="center"><br>
			
			<!-- PAGING START-->
			
			<table width='100%' border='0' cellpadding="0" cellspacing="0">
				<tr>
					<td id='bl_pages'> 
						
						 <span class="bl_curpage bl_pagetext">1</span> <span class="bl_pagetext"><a href="board.html?code=pippin1_board1&page=2">2</a></span>
						
						 </td>
				</tr>
			</table>
			
			<!-- PAGING END--></td>
	</tr>
</table>
</body>
</html>