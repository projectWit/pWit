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
.bl_sport {
	width : 80px;
	text-align  : center;
}
.bl_confirm {
	width: 80px;
	text-align:center;
}
a:link {
	text-decoration: none;
}

</style>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var url = 'GMSport.jsp';
	$.get(url, function(data) {
		responseText = data;
		$('#sId').append(responseText);
	});	
});
$('#sId').change(function (e) {
	var url2="/teamP/searchLectureList.gm?sId="+$('#sId').val();
	$.get(url2, function(data) {
		$('#bl_table').empty();
		var item = $(data).find("lecId");
		var item2 = $(data).find("lecName");
		var item3 = $(data).find("sName");
		var item4 = $(data).find("tName");
		var item5 = $(data).find("place");
		var item6 = $(data).find("eKName");
		var item7 = $(data).find("eTel");
		var item8 = $(data).find("sSDay");
		var item9 = $(data).find("sEDay");
		var item10 = $(data).find("sNum");
		$('#bl_table').append("<tr><td class='bl_title bl_no'>No.</td> <td class='bl_title bl_subject'>강좌명</td><td class='bl_title bl_sport'>종목</td><td class='bl_title bl_type'>대상</td><td class='bl_title bl_place'>장소</td><td class='bl_title bl_name'>강사명</td><td class='bl_title bl_phone'>연락처</td><td class='bl_title bl_date'>시작일</td><td class='bl_title bl_dateend'>종료일</td><td class='bl_title bl_confirm'>신청하기</td></tr>"); 
		 for(var i=0; i<item.length; i++){
			 $('#bl_table').append("<tr class='bl_oddline'><td class='bl_list bl_no'>"+$(item[i]).text()+"</td><td class='bl_list bl_subject' colspan='1'><a href='#'  >"+$(item2[i]).text()+"</a></td><td class='bl_list bl_sport'>"+$(item3[i]).text()+"</td><td class='bl_list bl_type'>"+$(item4[i]).text()+"</td><td class='bl_list bl_place'>"+$(item5[i]).text()+"</td><td class='bl_list bl_name'>"+$(item6[i]).text()+"</td><td class='bl_list bl_phone'>"+$(item7[i]).text()+"</td><td class='bl_list bl_date'>"+$(item8[i]).text()+"</td><td class='bl_list bl_dateend'>"+$(item9[i]).text()+"</td><td class='bl_list bl_confirm'><input type='button' onclick='insertLReq("+$(item10[i]).text()+")' value='신청'/></td></tr>");
			 
		 }			
	});
});
function insertLReq(sNum) {
	location.href="/teamP/insertLReq.gm?sNum="+sNum;
}
</script>
<body>
<h3>원하는 강좌를 찾아보세요</h3>
			<p>고객님이 찾으시는 강좌의 분야를 선택해 주세요</p>
<table width="900px" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><!-- LIST HEADER --> 
			<!-- SEARCH FORM START -->
			<table border=0 width='900px'>
				<tr>
					<th><label for="sId">종목</label></th><td><select id="sId" name="sId" style="margin-left: 10px;"	>
					</select></td>
				</tr>

			</table>
			
			<!-- SEARCH FORM END --></td>
	</tr>
	<tr>
		<td align="center"><!-- LIST TITLE -->
			
			<table id='bl_table' border='0' cellpadding='0' cellspacing='0' width='100%'>
				
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