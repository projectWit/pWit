<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BLACKLIS</title>
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

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><!-- LIST HEADER --> 
			<!-- SEARCH FORM START -->
			
			<table border=0 width='100%'>
				<tr>
					<td id='bl_count'>등록 동호회 : 6건</td>
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
					
					<td class='bl_title bl_subject'>동호회명</td>
					<td class='bl_title bl_name'>종목</td>
					
					<td class='bl_title bl_hits'>경고수</td>
				</tr>
					<!-- LIST REPEAT --> 
				
				<!-- 해당 동호회 클릭시 정보 보기로 이동 -->
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>6</td>
					<td class='bl_list bl_icon'><img src='img/default.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >배구사랑</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>배구</div></td>
					
					<td class='bl_list bl_hits'>4</td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>5</td>
					<td class='bl_list bl_icon'><img src='img/default.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >노인정 탁구부</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>탁구</div></td>
					
					<td class='bl_list bl_hits'>3</td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>4</td>
					<td class='bl_list bl_icon'><img src='img/default.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >약수터 배드민턴 클럽</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>배드민턴</div></td>
					
					<td class='bl_list bl_hits'>5</td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>3</td>
					<td class='bl_list bl_icon'><img src='img/default.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="board.html?code=pippin1_board1&page=1&type=v&num1=999985&num2=00000&lock=N"  >K 농구</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>농구</div></td>
					
					<td class='bl_list bl_hits'>3</td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>2</td>
					<td class='bl_list bl_icon'><img src='img/default.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >Y 태권도</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>태권도</div></td>
					
					<td class='bl_list bl_hits'>4</td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>1</td>
					<td class='bl_list bl_icon'><img src='img/default.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="board.html?code=pippin1_board1&page=1&type=v&num1=999987&num2=00000&lock=N"  >S 태권도</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>태권도</div></td>
					
					<td class='bl_list bl_hits'>6</td>
				</tr>
				 
				<!-- LIST REPEAT END -->
			</table>
			
			<!-- LIST END --></td>
	</tr>
	<tr>
	<td>&nbsp;
	</td>
	</tr>
</table>