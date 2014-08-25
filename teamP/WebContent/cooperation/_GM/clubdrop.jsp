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
.bl_date {
    width   : 70px;
    text-align  : center;
}
.bl_hits {
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
					<td id='bl_count'> 폐쇠 신청 동호회  </td>
				</tr>
			</table>
			
			<!-- SEARCH FORM END --></td>
	</tr>
	<tr>
		<td align="center"><!-- LIST TITLE -->
			
			<table id='bl_table' border='0' cellpadding='0' cellspacing='0' width='100%'>
				<tr>
					<td class='bl_title bl_no'>No</td>					
					<td class='bl_title bl_subject'>Club Name</td>
					<td class='bl_title bl_type'>Type</td>
					<td class='bl_title bl_name'>President</td>
					<td class='bl_title bl_hits'>State</td>
				</tr>
				<!-- INLINE NOTICE --> 
				 
				<!-- LIST REPEAT --> 
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>2</td>
					
					<td class='bl_list bl_subject' colspan="1"><a href="#"  >고쌤</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_type'>폴리택</td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>고썜</div></td>
					<td class='bl_list bl_hits'><input type="button" value="폐쇠"/></td>
				</tr>
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>1</td>
					
					<td class='bl_list bl_subject' colspan="1"><a href="#"  >Trigger</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_type'>농구</td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>강성조</div></td>
					<td class='bl_list bl_hits'><input type="button" value="폐쇠"/></td>
				</tr>
				<!-- LIST REPEAT END -->
			</table>
			
			<!-- LIST END --></td>
	</tr>
</table>
</body>
</html>