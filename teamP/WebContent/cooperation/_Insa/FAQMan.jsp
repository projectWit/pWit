<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%@page import="mem.wit.Insa.FAQDTO"%>
<%@page import="mem.wit.Insa.FAQDAO"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#boardtable TABLE {
	border-collapse: collapse;
}

#boardtable IMG {
	border: 0px;
}

#bl_table {
	border-bottom: 1px solid #dcdcdc;
}

.bl_title {
	border-top: 1px solid #dcdcdc;
	border-bottom: 1px solid #dcdcdc;
	color: #A3A0A2;
	font-weight: bold;
	background-color: #FCFCFC;
	text-align: center;
	height: 40px;
	font-family: "Verdana", dotum, '돋움';
	font-size: 11px
}

.bl_list {
	height: 40px;
	border-top: 1px #DCDCDC solid;
}

TD.bl_list,.bl_list A,.bl_list A:link,.bl_list A:visited {
	font-family: "Verdana", dotum, '돋움';
	font-size: 12px;
	color: #8C8C8C;
}

.bl_commentNum {
	font-size: 8pt;
	font-weight: 800;
}

.bl_pagetext,.bl_pagetext A,.bl_pagetext A:visited,.bl_pagetext A:link,.bl_pagetext A:hover
	{
	color: #737172;
	font-family: Arial;
}

.bl_curpage,.bl_curpage A,.bl_curpage A:visited,.bl_curpage A:link {
	color: #ff7e00;
	font-family: Arial;
}

#bl_count {
	text-align: left;
	line-height: 28px;
	font-family: Tahoma, "돋움", Verdana;
	font-size: 11px;
	color: #666;
}

#bl_search {
	text-align: right;
	line-height: 28px;
	font-family: Tahoma, "돋움", Verdana;
	font-size: 11px;
	color: #666;
}

.bl_no {
	width: 40px;
	text-align: center;
}

.bl_icon {
	width: 30px;
	text-align: center;
}

.bl_product {
	width: 70px;
	text-align: center;
}

.bl_subject {
	text-align: center;
}

.bl_name {
	width: 70px;
	text-align: center;
}

.bl_date {
	width: 70px;
	text-align: center;
}

.bl_hits {
	width: 60px;
	text-align: center;
}

.leftalign {
	text-align: left;
}

#bl_linkbutton {
	width: 70px;
	text-align: right;
}

#bl_pages {
	text-align: center;
	font-family: '맑은 고딕';
	font-size: 11px;
	height: 40px;
}
</style>
<%
	FAQDAO dao = new FAQDAO();
	FAQDTO dto = new FAQDTO();
	List dtoL = dao.faqSelList();
%>
<script type="text/javascript">
	function valSend(gubun, no) {
		document.FMFrm.gubun.value = gubun;
		document.FMFrm.no.value = no;
		document.FMFrm.submit();
	}
</script>
<body>
<form action = "FAQManMain.jsp" name = "FMFrm">
	<input type="hidden" name="gubun" />
	<input type="hidden" name="no" />
	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td align="center">
				<!-- LIST HEADER --> <!-- SEARCH FORM START -->
				<h1>자주묻는질문</h1>
				<table border=0 width='100%'>
					<tr>
						<td id='bl_count'>총 게시물 : <%=dao.totalCnt()%>건
							&nbsp;&nbsp;PAGE 1/2
						</td>
						<td id='bl_search'><input type=checkbox name=shname
							value="ok" onclick="change(1)">이름 <input type=checkbox
							name=ssubject value="ok" checked onclick="change(2)">제목 <input
							type=checkbox name=scontent value="ok" onclick="change(3)">내용
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 검색어 <input type=text
							name=stext size=10> <a
							href="JavaScript:document.form1.submit();"><img
								src='img/Find.gif' border=0 alt='검색'></a></td>
					</tr>
				</table> <!-- SEARCH FORM END -->
			</td>
		</tr>
		<tr>
			<td align="center">
				<!-- LIST TITLE -->

				<table id='bl_table' border='0' cellpadding='0' cellspacing='0'
					width='100%'>
					<tr>
						<td class='bl_title bl_no'>No</td>
						<td class='bl_title bl_icon'>&nbsp;</td>

						<td class='bl_title bl_subject'>Content</td>
						<td class='bl_title bl_date'>Date</td>
						<td class='bl_title bl_name'>Name</td>

						<td class='bl_title bl_hits'>hits</td>
					</tr>
					<!-- INLINE NOTICE -->

					<tr class="bl_noticeline">
						<td class="bl_list bl_no">:::</td>
						<td class="bl_list bl_icon"><img src="img/icon_alarm.gif"></td>
						<td class="bl_list" colspan=5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;질문하시기전
							꼭! 필독해주세요 ^^</td>
					</tr>

					<!-- LIST REPEAT -->
					<%
						for (int i = 0; i < dtoL.size(); i++) {
							dto = (FAQDTO) dtoL.get(i);
					%>
					<tr class="bl_oddline">
						<td class='bl_list bl_no'><%=dto.getfSeq()%></td>
						<td class='bl_list bl_icon'><img src='img/notice_icon.gif'
							border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"
							style="cursor: pointer"
							onClick="valSend('listT', '<%=dto.getfSeq()%>')"><%=dto.getfTitle()%>&nbsp;&nbsp;
						</td>
						<td class='bl_title bl_Date'>
							<%
								String str = dto.getfDate();
									String result = str.substring(0, 10);
									out.print(result);
							%>
						</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'><%=dto.geteId()%></div></td>

						<td class='bl_list bl_hits'><%=dto.getfCnt()%></td>
					</tr>
					<%
						}
					%>

					<!-- LIST REPEAT END -->
				</table> <!-- LIST END -->
			</td>
		</tr>
		<tr>
			<td align="center"><br> <!-- PAGING START-->

				<table width='100%' border='0' cellpadding="0" cellspacing="0">
					<tr>
						<td id='bl_pages'><span class="bl_curpage bl_pagetext">1</span>
							<span class="bl_pagetext"><a href="FAQ">2</a></span></td>
						<td id='bl_linkbutton'><a href="BoaLeftMFIns.jsp"><img
								src='img/icon_write.gif' border=0 /></a></td>
					</tr>
				</table> <!-- PAGING END--></td>
		</tr>
	</table>
	</form></body></html>