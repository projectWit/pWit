<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 
<%@page import="mem.wit.Insa.FAQDTO"%>
<%@page import="mem.wit.Insa.FAQDAO"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="CONTENT-TYPE" content="text/html; charset=EUC-KR">
<title>FAQ</title>
<meta http-equiv="ImageToolbar" content="No" />
<!--META name="robots" content="noindex,nofollow"-->
<style type="text/css">
#addinfo_out_box {
	border: 1px solid #E0DEDF;
	width: 100%;
	margin-bottom: 8px;
	padding: 12px;
}

#addinfo_box {
	width: 100%;
}

#addinfo_box td {
	border: none;
}

#addinfo_box td#addinfo_top_title {
	padding: 5px 0 3px;
}

#addinfo_box td.addinfo_title {
	width: 30%;
	vertical-align: top;
	font-weight: bold;
	color: #222222;
}

#addinfo_box td.addinfo_value {
	vertical-align: top;
	width: 70%;
	padding: 0px 10px 2px 5px;
}

#addinfo_box td.addinfo_view_val {
	
}

#addinfo_text {
	color: #9B9B9B;
	font-size: 9pt;
	height: 20px;
	text-align: left;
}

.addinfo_contents {
	height: 15px;
	margin-top: 2px;
	margin-left: 5px;
	font-size: 8pt;
	color: #8F8F8F;
}

input.addinfo_upd_inputs {
	width: 90%;
}

.addinfo_padding {
	padding-left: 5px;
	padding-right: 5px;
	padding-top: 5px;
}

#addinfo_text {
	margin-top: 7px;
}
</style>
<style>
TABLE {
	border-collapse: collapse;
}

/* 글쓰기 영역 style */
#bw_table {
	width: 100%;
	padding: 0px;
	font-size: 9pt;
	font-family: "Verdana", dotum, '돋움';
	border-style: solid;
	border-color: #e0dedf;
	border-width: 1px 0 1px 0;
	background-color: #FCFCFC;
	border-top: 1px solid #dcdcdc;
	border-bottom: 1px solid #dcdcdc;
}

#bw_table TD {
	height: 40px;
}

.bw_border_bottom {
	border-bottom: 1px solid #e0dedf;
}

.bw_border_top {
	border-top: 1px #e0dedf solid;
}

.bw_title_color {
	color: #333;
}

.bw_title {
	width: 56px;
	margin: 0px;
	text-align: left;
	font-family: "Verdana", dotum, '돋움';
}

.bw_title IMG {
	margin-left: 10px;
}

.bw_contentscolor {
	background-color: #FFFFFF;
}

#bw_button {
	text-align: right;
	margin-top: 8px;
	width: 100% px;
}

#bw_buttonfile {
	vertical-align: -5px;
}

#bw_table TD.bw_value {
	padding: 7px 0px 7px 0px;
}

.bw_notice {
	color: #737172;
	font-size: 8pt;
}

/* 입력 폼 style */
#bw_input_writer,#bw_input_passwd,#bw_input_email,#bw_input_subject,#bw_input_file,#bw_contents,#addinfo_out_box
	{
	border: 1px #e0e0e0 solid;
	color: #737172;
}

#bw_input_writer,#bw_input_passwd,#bw_writer {
	width: 110px;
}

#bw_writer {
	color: #5B5B5B;
}

#bw_input_email,#bw_input_subject,#bw_input_file {
	width: 316px;
}

#bw_contents {
	width: 100%;
	padding: 5px;
	font-size: 9pt;
	margin-left: 10px;
}

.bw_autolock {
	padding-left: 5px;
}

#webEditor {
	padding-top: 3px;
	padding-bottom: 5px;
}

#bw_agree {
	width: 100%;
}

div#privercy_contract {
	padding: 10px 5px 0px 10px;
	width: 582px;
	height: 120px;
	overflow: scroll;
	border: 1px solid #e0dedf;
}
</style>

<style type="text/css">
<!--
td {
	font-size: 9pt;
	font-family: 굴림;
}

td.line {
	font-size: 1pt;
	font-family: 굴림;
}

.lims {
	font-size: 9pt;
	font-family: 굴림;
}

.woong {
	font-size: 9pt;
	font-family: 굴림;
}

.woong1 {
	font-size: 8pt;
	font-family: 굴림;
	line-height: 130%
}

.woong2 {
	font-size: 15pt;
	font-family: 굴림;
	line-height: 130%
}

.woong3 {
	font-size: 7pt;
	font-family: font-family : matchworks, tahoma;
	color: #444444;
	line-height: 130%
}

.woong4 {
	font-size: 11pt;
	font-family: 굴림;
	line-height: 130%
}

.line {
	font-size: 1px;
	line-height: 1px;
}

.input {
	border: solid 1;
	font-family: 굴림, verdana;
	font-size: 9pt;
	color: black;
	background-color: white;
	height: 19px
}

.input2 {
	border: solid 0;
	font-family: 굴림, verdana;
	font-size: 9pt;
	color: black;
	background-color: white;
	height: 16px
}

.textarea {
	border: solid 1;
	font-family: 굴림, verdana;
	font-size: 9pt;
	color: black;
	background-color: white
}

input {
	font-size: 9pt;
	font-family: 굴림;
}

BODY {
	font-size: 9pt;
	font-family: 굴림;
}

a {
	text-decoration: none;
	font-family: 굴림;
}

A:link {
	text-decoration: none;
	color: #040f6f;
	font-family: 굴림;
}

A:visited {
	text-decoration: none;
	color: #040f6f;
	font-family: 굴림;
}

A:hover {
	color: #dc143c;
	text-decoration: underline;
	font-family: 굴림;
}

a img {
	color: #FFFFFF
}

.price {
	border: 0px; color =#A00000;
	text-align: right;
}

.select {
	background-color: #669900;
	border: 1; solid #90C0FF;
	border-width: 1 font-size:9pt;
	color: #FFFFFF;
	font-family: 굴림;
}

.main_brandname1 {
	height: 30px;
}

.main_brandname2 {
	height: 30px;
}

.main_brandname3 {
	height: 30px;
}

.detail_image {
	margin-bottom: 20px;
}

.mtb_player {
	margin-top: 10px;
	margin-bottom: 10px;
}

.user_additional_info {
	font-size: 9pt;
	font-family: 굴림;
}

.info_orange {
	color: #F26622;
}

.info_rbrack {
	color: #303030;
}

.user_additional_title,.user_additional_title_must {
	vertical-align: top;
	padding-top: 5px;
	text-align: right;
	font-weight: bold;
	width: 100px;
	height: 24px;
}

.user_additional_title_must {
	color: #FF0000;
}

.user_additional_top_title {
	text-align: center;
	font-weight: bold;
	height: 24px;
}

.user_addtional_top {
	vertical-align: top;
	padding-top: 5px;
	text-align: right;
}

#delibasic {
	color: 76bf9a
}

#delipremium {
	color: 939bbb
}
/** 할인상품 취소선 span.mk_discount_box span.mk_origin_price 연속으로 있어야 한다 **/
span.mk_discount_box span.mk_origin_price {
	text-decoration: line-through;
}

.brstar {
	font-size: 8pt;
}

.leftbrand {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
	color: 3D3D3D;;
}

.leftboard {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.lefttel {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;;
	text-decoration: none;
}

.mainbrandname {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
	line-height: 120%;
}

.mainprice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;
	text-decoration: none;
	color: d0918d;
	line-height: 120%;
}

.mainbrand {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;;
	text-decoration: none;
	color: 000080;;
}

.mainspbrandname {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
	line-height: 120%;
}

.mainspprice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
	line-height: 120%;
}

.mainnotice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.maininfo {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.mainboard {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.maincusprice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: line-through;;
}

.mainreserve {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.mainaddsub_title {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.mainaddbrandname {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;
	text-decoration: none;
}

.mainaddprice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.mainaddeng_title {
	
}

.brandtitle {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;;
	text-decoration: none;
}

.brandsubtitle {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;
	text-decoration: none;
	color: F89B22;
}

.brandbrandname {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.brandprice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;;
	text-decoration: none;
	color: d0918d;;
}

.brandorg {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: line-through;
}

.brandproduct {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.brandconprice {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: bold;
	text-decoration: none;;
	color: d0918d;
}

.brandreserve {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.brandadd {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.brandsort {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
	color: FF0000;
}

.brandpage {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.brandcurpage {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
	color: FF0000;;
}

.brandaddsub_title {
	font-family: 굴림;
	font-size: 9pt;
	font-weight: normal;
	text-decoration: none;
}

.brandaddeng_title {
	
}

BODY {
	SCROLLBAR-FACE-COLOR: #FFFFFF;
	SCROLLBAR-HIGHLIGHT-COLOR: #CCCCCC;
	SCROLLBAR-SHADOW-COLOR: #CCCCCC;
	SCROLLBAR-3DLIGHT-COLOR: #FFFFFF;
	SCROLLBAR-ARROW-COLOR: #999999;
	SCROLLBAR-TRACK-COLOR: #FFFFFF;
	SCROLLBAR-DARKSHADOW-COLOR: #FFFFFF;
}

div.subtitle {
	z-index: 99;
	display: none;
	width: 160px;
	height: 200px;
	position: absolute;
	left: 0px;
	top: -130px;
	padding: 15px 15px 15px 15px;
}
/** 옵션 미리보기 기본 스타일, 변경시에는 앞에 #MK_opt_preview 를 붙여서 개별디자인에 넣으면 ok **/
.mk_option_preview_outer {
	display: inline;
}

.mk_option_preview {
	background-color: white;
}

.mk_prd_option_list {
	color: #404040;
	font-size: 8pt;
	font-family: dotum;
	list-style: none;
	padding: 3px 3px 0;
	background-color: white;
	border: 1px solid #7899C2;
	width: 170px;
	margin: 0;
	text-align: left;
}

.mk_prd_option_list LI {
	line-height: 1.4;
	margin: 5px 0;
	display: block;
}

.mk_prd_option_list .mk_bt_opt_close {
	text-align: right;
}

.mk_prd_option_list .option-soldout {
	color: red;
}

/** 옵션 미리보기 - 리스트 **/
.mk_prd_option_list LI UL {
	list-style: none;
	padding: 0;
	margin: 4px 0 0 10px;
}

.mk_prd_option_list LI UL LI {
	line-height: 1.4;
	padding: 0;
	margin: 0;
}

.mk_prd_option_list LI H3 {
	margin: 0;
	font-size: 9pt;
}
/** 옵션 미리보기 - 조합 **/
.mk_prd_option_list .option-name {
	padding: 2px;
	background-color: #D6E5F7;
	color: #405F95;
	border-left: 2px solid #BBC9E3;
}

.mk_prd_option_list .option-required {
	color: red;
}

/* 상품색상 */
.mk_color {
	margin: 2px 0;
}

.mk_color_list {
	padding: 0;
	margin: 0;
	display: inline;
	font-size: 0;
	line-height: 0;
	vertical-align: text-top;
	*vertical-align: middle;
}

.mk_color_list li {
	display: inline;
	margin-right: 5px;
}

.mk_color_list li span {
	display: inline-block;
}

.mk_color_list.size-lv1 li span {
	width: 7px;
	height: 7px;
}

.mk_color_list.size-lv2 li span {
	width: 9px;
	height: 9px;
}

.mk_color_list.size-lv3 li span {
	width: 11px;
	height: 11px;
}

.mk_color_list.size-lv4 li span {
	width: 13px;
	height: 13px;
}

.mk_color_align_left {
	text-align: left
}

.mk_color_align_center {
	text-align: center
}

.mk_color_align_right {
	text-align: right
}

#passimg {
	z-index: 100;
}
</style>
</head>


<link rel="shortcut icon" href="/shopimages/pippin1/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon-precomposed"
	href="/shopimages/pippin1/mobile_web_icon.png" />
<IFRAME id=loginiframe name=loginiframe style="display: none"
	scrolling=no></IFRAME>
<div id="basketpage" style="position: absolute; visibility: hidden;"></div>
<script type="text/javascript" src="/js/jquery.js"></script>



</head>
<body link=#0000ff alink=#0000ff vlink=#0000ff bgcolor=#FFFFFF
	topmargin=0 leftmargin=0 marginheight=0 marginwidth=0>

	<!--  boardtype 0Z indi -->
<body link="#0000ff" alink="#0000ff" vlink="#0000ff" topmargin="0"
	leftmargin="0" marginheight="0" marginwidth="0" bgcolor=#FFFFFF>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script>

	<center>



		<div id="ysfss_bar_container"
			style="position: absolute; top: 0px; left: 0px;"></div>


		<div id=maketop style='width: 100%'>

			<script type="text/javascript">
				
			</script>
			<div id="cot_tl_fixed" style="display: none">
				<div class="moreRegion_inner">
					<iframe name="auto_iframe" id="auto_iframe"
						src="/design/pippin1/shop_window/content.htm" frameborder="0"
						marginwidth="0" marginheight="0" scrolling="no" width="198"
						height="320"></iframe>
					<span class="more2"><a onClick="javascript:fn_tab('2');"><img
							src="/design/pippin1/shop_window/btn_close.jpg" alt="숨기기"
							width="17" height="49" /></a></span>
					<div style="clear: both"></div>
				</div>
			</div>
		</div>

		<a
			href="javascript:view('http://pnfcorp.imglink.kr/pippin1/notice/2012_Newyear_notice_banner.jpg','','width=400,height=380')"><img
			src="http://pnfcorp.imglink.kr/pippin1/notice/2012_Newyear_notice_banner.jpg"></a>

		<!-- BOARD WRITE -->
		<script type="text/javascript">
			function valSend(gubun, no) {
				document.FMFrm.gubun.value = gubun;
				document.FMFrm.gue_no.value = no;
				document.FMFrm.submit();
			}
		</script>
		<%
			int no = Integer.parseInt(request.getParameter("no"));
			FAQDAO dao = new FAQDAO();
			FAQDTO dto = new FAQDTO();
			List dtoL = dao.faqSelMain(no);
			dto = (FAQDTO) dtoL.get(0);
		%>
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td align="center"><table width="100%" border="0"
						cellspacing="0" cellpadding="0">
						<tr>
							<td><table id='bw_table' class='bw_border_bottom'
									cellspacing=0>
									<tr>
										<td class='bw_title_color bw_title'
											style="padding-left: 15px;">No.<%=dto.getfSeq()%></td>
										<td class='bw_title_color bw_title'
											style="padding-left: 15px;">name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=dto.geteId()%>
										</td>
										<td>
									</tr>


									<tr>
										<td colspan="3" bgcolor="#e0dedf" style="height: 1px;"></td>
									</tr>
									<tr>
										<td class='bw_title_color bw_title'
											style="padding-left: 15px;">title</td>
										<td class='bw_title_color'><span
											style="font-family: '굴림체'"><%=dto.getfTitle()%></span></td>
									</tr>
									<tr>
										<td class='bw_title_color bw_title'
											style="padding-left: 15px;">Contents</td>
										<td
											class='bw_value bw_border_top bw_border_bottom bw_contentscolor'
											colspan="3"><%=dto.getfContent()%></td>
									</tr>
									<tr>
									</tr>

								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td align="center"><div id='bw_button'>
						<a href="BoaLeftMFIns.jsp"><img src='img/icon_write.gif'
							border=0 alt='입력' /></a> <a href="BoaLeftManFAQ.jsp"><img
							src='img/icon_list.gif' border=0 alt='목록' /></a>
					</div></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
		<input type="hidden" name="b_score[1]" value=""> <input
			type="hidden" name="b_score[2]" value=""> <input
			type="hidden" name="b_score[3]" value=""> <input
			type="hidden" name="b_score[4]" value=""> <input
			type="hidden" name="b_score[5]" value=""><input type=hidden
			name=type value="i"> <input type=hidden name=data value="yes">
		<input type=hidden name=code value="pippin1"> <input
			type=hidden name=num1 value=""> <input type=hidden name=num2
			value=""> <input type=hidden name=page value="1"> <input
			type=hidden name=ok value="N"> <input type=hidden
			name=branduid value="" />

	</center>

</body>
</html>
