<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body>

	<table width="100%" border="0"align="center" cellpadding="0" 
		cellspacing="0">
		<tr>
			<td align="center">
				<!-- LIST HEADER --> <!-- SEARCH FORM START -->

				<table border=0 width='100%'>
					<tr>
						<td id='bl_count'>총 게시물 : 30건 &nbsp;&nbsp;PAGE 1/2</td>
						<td id='bl_search'><input type=checkbox name=shname
							value="ok" onclick="change(1)">이름 <input type=checkbox
							name=ssubject value="ok" checked onclick="change(2)">제목 <input
							type=checkbox name=scontent value="ok" onclick="change(3)">내용
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 검색어 <input type=text
							name=stext size=10> <a
							href="JavaScript:document.form1.submit();"><img
								src='img/Find.gif' border=0 alt='검색'
								></a></td>
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
						<td class='bl_title bl_name'>Name</td>

						<td class='bl_title bl_hits'>hits</td>
					</tr>
					<!-- INLINE NOTICE -->

					<tr class="bl_noticeline">
						<td class="bl_list bl_no">:::</td>
						<td class="bl_list bl_icon"><img
							src="img/icon_alarm.gif"></td>
						<td class="bl_list" colspan=5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;질문하시기전 꼭! 필독해주세요 ^^</td>
					</tr>

					<!-- LIST REPEAT -->

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>30</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999970&num2=00000&lock=N">[공지]쇼핑아이콘
								비콘 종료 와 피핀 알리미 설치하기</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>3274</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>29</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999971&num2=00000&lock=N">[주문]
								TODAY10% 상품을 할인받는 방법&nbsp;&nbsp;</a></td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>6152</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>28</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif" style='margin-right: 5px;'
							 /><span class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999972&num2=00000&lock=N">[반품]
								반품 교환 방법&nbsp;&nbsp;</a></td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>34169</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>27</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999973&num2=00000&lock=N">[반품]
								반품이 안되는 상품</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>14199</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>26</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999974&num2=00000&lock=N">[반품]
								반품처리는 언제되나요?</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>9396</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>25</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999975&num2=00000&lock=N">[결제]
								입금확인</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>3219</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>24</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999976&num2=00000&lock=N">[결제]
								입금확인이 되지않아요</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>2324</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>23</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999977&num2=00000&lock=N">[결제]
								카드취소가 되지않아요</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>3627</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>22</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999978&num2=00000&lock=N">[배송]
								배송문의</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>10109</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>21</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999979&num2=00000&lock=N">[배송]
								송장번호 확인</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>2770</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>20</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999980&num2=00000&lock=N">[배송]
								묶음배송</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>2726</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>19</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999981&num2=00000&lock=N">[주문]
								주문시 알아두세요</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>4079</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>18</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999982&num2=00000&lock=N">[주문]
								주문 취소 처리를 원하는 경우</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>4466</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>17</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999983&num2=00000&lock=N">[주문]
								주문서가 이상해요</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>1405</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>16</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999984&num2=00000&lock=N">[주문]
								주문 후 상품이 품절되었을 때</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>1832</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>15</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999985&num2=00000&lock=N">[주문]
								적립금으로 결제</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>2279</td>
					</tr>

					<tr class="bl_oddline">
						<td class='bl_list bl_no'>14</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999986&num2=00000&lock=N">[주문]
								배송 메세지란은?</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>2218</td>
					</tr>

					<tr class="bl_evenline">
						<td class='bl_list bl_no'>13</td>
						<td class='bl_list bl_icon'><img
							src='img/notice_icon01.gif' border=0></td>

						<td class='bl_list bl_subject leftalign' colspan="1"><img
							src="img/arrowRight.gif"
							style='margin-right: 5px;'  /><span
							class='BoardBrandName'></span><a
							href="board.html?code=pippin1_board1&page=1&type=v&num1=999987&num2=00000&lock=N">[제품]
								세탁방법</a>&nbsp;&nbsp;</td>
						<td class='bl_list bl_name'><div
								style='padding-left: 2px; padding-right: 2px;'>
								호날두
							</div></td>

						<td class='bl_list bl_hits'>1581</td>
					</tr>

					<!-- LIST REPEAT END -->
				</table> <!-- LIST END -->
			</td>
		</tr>
		<tr>
			<td align="center"><br> <!-- PAGING START-->

				<table width='100%' border='0' cellpadding="0" cellspacing="0">
					<tr>
						<td id='bl_pages'><span class="bl_curpage bl_pagetext">1</span>
							<span class="bl_pagetext"><a
								href="board.html?code=pippin1_board1&page=2">2</a></span></td>
						<td id='bl_linkbutton'><a
							href="BoaLeftManIns.jsp"><img
								src='img/icon_write.gif' border=0 /></a>
						</td>
					</tr>
				</table> <!-- PAGING END--></td>
		</tr>
	</table>