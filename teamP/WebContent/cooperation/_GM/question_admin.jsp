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

<table width="900px" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><!-- LIST HEADER --> 
			<!-- SEARCH FORM START -->
			
			<table border=0 width='900px'>
				<tr>
					<td id='bl_count'> 총 문의 글 : 30건 &nbsp;&nbsp;PAGE 1/2 </td>
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
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>30</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif" style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[강좌] 수업준비좀....</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>강성조</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_standby.gif"/> </td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>29</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif" style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[강좌] 항목을 늘려줘..</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>조용근</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_standby.gif"/> </td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>28</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif" style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 확인부탁드립니다</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>강성조</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>27</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"><img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 확인부탁드립니다</a>>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>26</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 확인부탁드립니다</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>25</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 확인부탁드립니다</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>24</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 확인부탁드립니다</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>23</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 직원 할인 문의드립니다</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>22</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 아...이건 뭔가...</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>21</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 휴관일 명시된게 맞나요?</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>20</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 그런거임?</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>19</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 헐 대박...</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>18</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[강좌] 이 강사님 다음 수업은 언제인가요?</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>17</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[강좌] 강좌 분위기를 흐리는 수강생이 있습니다.</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>16</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 정수기 사용 문의</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>15</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head.gif"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[대관] 에어컨 이용질의</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_oddline">
					<td class='bl_list bl_no'>14</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head2.jpg"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 행사대관도 가능한가요?</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				
				<tr class="bl_evenline">
					<td class='bl_list bl_no'>13</td>
					<td class='bl_list bl_icon'><img src='/teamP/cooperation/_GM/img/question.gif' border=0></a></td>
					
					<td class='bl_list bl_subject leftalign' colspan="1"> <img src="/teamP/cooperation/_GM/img/board_head2.jpg"  style='margin-right:5px;' align='absmiddle' /><span class='BoardBrandName'></span><a href="#"  >[문의] 이용방법</a>&nbsp;&nbsp; </td>
					<td class='bl_list bl_name'><div style='padding-left:2px; padding-right:2px;'>손님</div></td>
					
					<td class='bl_list bl_hits'><img src="/teamP/cooperation/_GM/img/ico_complete.gif" /></td>
				</tr>
				 
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
						
						 <span class="bl_curpage bl_pagetext">1</span> <span class="bl_pagetext"><a href="#">2</a></span>
						
						 </td>
					<td id='bl_linkbutton'>   </td>
				</tr>
			</table>
			
			<!-- PAGING END--></td>
	</tr>
</table>
</body>
</html>