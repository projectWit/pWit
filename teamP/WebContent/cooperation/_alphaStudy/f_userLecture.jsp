<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	font-size: 11px;
	color: #666;
}
html {
	overflow-y: scroll;
}
ul {
	list-style: none;
}
img {
	border: none;
	vertical-align: top;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, input {
	font-family: "돋움", Dotum, "굴림" ,Gulim, Arial;
}
ol, ul {
	list-style: none;
}
li {
	list-style: none;
}
fieldset, img {
	border: 0;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, input {
	font-family: "돋움", Dotum, "굴림" ,Gulim, Arial;
}
#reNwrap2013Sub #reNcontainer #reNlnb {
	float: left;
	width: 220px;
	margin: 0 15px 10px 0;
	z-index: 9;
}
#reNwrap2013Sub #reNcontainer {
	position: relative;
	width: 995px;
	margin: 9px auto 0;
	font-size: 12px;
	z-index: 9;
}
#reNwrap2013Sub {
	width: 100%;
	min-width: 995px;
	height: auto !important;
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_headerArea_sub.gif') no-repeat 50% top;
}
.mB10 {
	margin-bottom: 10px !important;
}
#reNlnb .lnbMenuArea {
	width: 220px;
	font-size: 12px;
	z-index: 10;
}
#reNlnb .commMenuArea {
	overflow: hidden;
	width: 220px;
	margin-bottom: -5px;
}
#reNlnb .lnbAdArea {
	overflow: hidden;
	width: 210px;
	height: 210px;
	padding: 4px;
	border: 1px solid #b2b2b2;
	text-align: center;
}
ol, ul {
	list-style: none;
}
li {
	list-style: none;
}
#reNlnb .commMenuArea li {
	overflow: hidden;
	width: 220px;
	margin-bottom: 5px;
}
a {
	cursor: pointer;
}
a:link, a:visited {
	color: #666;
	text-decoration: none;
}
a:link {
	color: #4b4b4b;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:link {
	color: #353535;
	text-decoration: none;
}
fieldset, img {
	border: 0;
}
img {
	vertical-align: top;
}
.vT {
	vertical-align: top;
}
#reNlnb .lnbMenuArea .lnbTit {
	clear: both;
	position: relative;
	width: 220px;
	height: 43px;
	z-index: 11;
}
#reNlnb .lnbMenuArea .lnbMenu {
	overflow: hidden;
	width: 218px;
	border-top: 1px solid #b4b3b3;
	border-right: 1px solid #b4b3b3;
	border-left: 1px solid #b4b3b3;
}
#reNlnb .lnbMenuArea .lnbImgMenu {
	width: 214px;
	padding: 2px 2px 0;
	border-right: 1px solid #b4b3b3;
	border-bottom: 1px solid #b4b3b3;
	border-left: 1px solid #b4b3b3;
}
#reNlnb .lnbMenuArea .lnbImgMenu li {
	overflow: hidden;
	width: 214px;
	height: 31px;
	margin-bottom: 2px;
}
#reNlnb .lnbMenuArea .lnbImgMenu li a {
	display: block;
	width: 190px;
	height: 31px;
	padding-right: 24px;
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/mark_imgMenu.gif') no-repeat right top;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList {
	width: 218px;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList li {
	overflow: hidden;
	width: 218px;
}
a:visited {
	text-decoration: none;
}
.ipsiCommonSchedule .sList_tit2 .yearIpsi_Schedule .ipsiMonth a:link, a:visited, a:hover, a:active {
	color: #454545;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList li a {
	display: block;
	overflow: hidden;
	width: 156px;
	height: 41px;
	padding: 1px 37px 0 25px;
	font-size: 12px;
	font-weight: bold;
	line-height: 41px;
	letter-spacing: -1px;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList li a.menuD {
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_lnb_arrD_gray.gif') no-repeat left top;
	color: #525050;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList li .icoNew, #reNlnb .lnbMenuArea .lnbMenu ul.menuList li .icoUp {
	margin-top: 16px;
	margin-top: 15px\9;
	#margin-top:2px: ;
	_margin-top: 2px;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li .icoNew, #reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li .icoUp {
	margin-top: 5px !important;
	margin-top: 3px\9 !important;
	#margin-top:1px !important: ;
	_margin-top: 1px !important;
}
:root #reNlnb .lnbMenuArea .lnbMenu ul.menuList li .icoNew, :root #reNlnb .lnbMenuArea .lnbMenu ul.menuList li .icoUp {
	margin-top: 14px \0/IE9;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList li a.menuB {
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_lnb_arrB_gray.gif') no-repeat left top;
	color: #525050;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList_s {
	width: 168px;
	padding: 10px 25px;
	border-bottom: 1px solid #b4b3b3;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li {
	overflow: hidden;
	width: 168px;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li a {
	display: block;
	width: 161px;
	height: 20px;
	padding: 0 0 0 7px;
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/ico/ico_arrR_blue.gif') no-repeat left 7px;
	color: #373434;
	font-size: 12px;
	font-weight: normal;
	line-height: 20px;
	letter-spacing: 0px;
	height: 19px\9 !important;
	padding-top: 1px\9 !important;
	#height:19px !important: ;
	#padding-top:1px !important: ;
	_height: 19px !important;
	_padding-top: 1px !important;
}
:root #reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li a {
	heigth: 19px ;
	padding-top: 1px \0/IE9;
}
:root #reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li .icoNew, :root #reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li .icoUp {
	margin-top: 2px \0/IE9;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList li a.menuB:hover, #reNlnb .lnbMenuArea .lnbMenu ul.menuList li a.menuB:active, #reNlnb .lnbMenuArea .lnbMenu ul.menuList li.on a.menuB {
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_lnb_arrB_blue.gif') no-repeat left top;
	color: #fff;
}
#reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li a:hover, #reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li a:active, #reNlnb .lnbMenuArea .lnbMenu ul.menuList_s li.on a {
	color: #489ecd;
	font-weight: bold;
	letter-spacing: -1px;
}

.mB15 {
	margin-bottom: 15px !important;
}
.arealLecTab {
	float: left;
	width: 754px;
	padding-left: 6px;
	border: 3px solid #638fd1;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/bg_arealTab.gif') repeat-x left 50%;
}
#reNwrap2013Sub #reNcontainer #reNcontents {
	float: left;
	width: 760px;
	padding-bottom: 60px;
	z-index: 9;
}
#reNwrap2013Sub #reNcontainer {
	position: relative;
	width: 995px;
	margin: 9px auto 0;
	font-size: 12px;
	z-index: 9;
}
#reNwrap2013Sub {
	width: 100%;
	min-width: 995px;
	height: auto !important;
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_headerArea_sub.gif') no-repeat 50% top;
}
ol, ul {
	list-style: none;
}
li {
	list-style: none;
}
.arealLecTab li {
	float: left;
	height: 26px;
	padding: 6px 4px 5px 0;
	color: #2f2f2f;
	font-size: 12px;
	line-height: 26px;
	text-align: center;
}
a {
	cursor: pointer;
}
a:link, a:visited {
	color: #666;
	text-decoration: none;
}
a:link {
	color: #4b4b4b;
	text-decoration: none;
}
a:link {
	color: #353535;
	text-decoration: none;
}
.arealLecTab li a {
	display: block;
	height: 26px;
	padding-left: 10px;
	padding-top: 1px\9;
	#padding-top:1px: ;
	_padding-top: 1px;
	color: #2f2f2f;
	font-weight: bold;
	line-height: 27px;
}
.arealLecTab li a span {
	padding-right: 10px;
}
.arealLecTab li a:hover, .arealLecTab li a:active, .arealLecTab li.on a {
	display: block;
	overflow: hidden;
	height: 26px;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/bg_arealTabOnL.gif') no-repeat left top;
	color: #fff;
}
.arealLecTab li a:hover span, .arealLecTab li a:active span, .arealLecTab li.on a span {
	display: block;
	height: 26px;
	height: 24px\9;
	padding-top: 2px\9;
	margin-top: -1px\9;
	#height:24px: ;
	#padding-top:2px: ;
	#margin-top:-1px: ;
	_height: 24px;
	_padding-top: 2px;
	_margin-top: -1px;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/bg_arealTabOnR.gif') no-repeat right top;
	line-height: 26px;
}

#reNwrap2013Sub #reNcontainer #reNcontents {
	float: left;
	width: 760px;
	padding-bottom: 60px;
	z-index: 9;
}
#reNwrap2013Sub #reNcontainer {
	position: relative;
	width: 995px;
	margin: 9px auto 0;
	font-size: 12px;
	z-index: 9;
}
#reNwrap2013Sub {
	width: 100%;
	min-width: 995px;
	height: auto !important;
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_headerArea_sub.gif') no-repeat 50% top;
}
input {
	outline-style: none;
}
.mB5 {
	margin-bottom: 5px !important;
}
.highSearchArea {
	clear: both;
	overflow: hidden;
}
.highSearchArea .searchInfo {
	overflow: hidden;
	padding: 4px 10px;
	border: 1px solid #e7eef5;
	background-color: #f4f7fa;
}
.highSearchArea .searchOption {
	overflow: hidden;
	padding: 10px;
	border-right: 1px solid #e7eef5;
	border-bottom: 1px solid #e7eef5;
	border-left: 1px solid #e7eef5;
	background-color: #fff;
}
select, input.iText, textarea {
	font-family: Dotum;
	font-size: 1em;
	padding: 3px 2px 2px 2px;
	border: 1px solid #B0B0B0;
	margin: 0;
}
.iBorderS {
	height: 20px;
	padding: 1px;
	border: 1px solid #b0b0b0;
	font-size: 12px;
	color: #000;
}
.pT5 {
	padding-top: 5px !important;
}
.iBorderT {
	height: 18px;
	border: 1px solid #b0b0b0;
	color: #000;
}
a {
	cursor: pointer;
}
a:link, a:visited {
	color: #666;
	text-decoration: none;
}
a:link {
	color: #4b4b4b;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:link {
	color: #353535;
	text-decoration: none;
}
fieldset, img {
	border: 0;
}
img {
	vertical-align: top;
}
.fR {
	float: right;
}
a:visited {
	text-decoration: none;
}
.ipsiCommonSchedule .sList_tit2 .yearIpsi_Schedule .ipsiMonth a:link, a:visited, a:hover, a:active {
	color: #454545;
}



//==========================================================================
#reNwrap2013Sub #reNcontainer #reNcontents {
	float: left;
	width: 760px;
	padding-bottom: 60px;
	z-index: 9;
}
#reNwrap2013Sub #reNcontainer {
	position: relative;
	width: 995px;
	margin: 9px auto 0;
	font-size: 12px;
	z-index: 9;
}
#reNwrap2013Sub {
	width: 100%;
	min-width: 995px;
	height: auto !important;
	background: url('http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/bg_headerArea_sub.gif') no-repeat 50% top;
}
#reNcontainer #reNcontents .categoryNavi {
	position: relative;
	height: 25px;
	margin-bottom: 20px;
	padding-top: 1px;
	border-bottom: 1px solid #dbdbdb;
	color: #666;
	text-align: left;
	line-height: 1.2;
}
.mB15 {
	margin-bottom: 15px !important;
}
.arealLecTab {
	float: left;
	width: 754px;
	padding-left: 6px;
	border: 3px solid #638fd1;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/bg_arealTab.gif') repeat-x left 50%;
}
.mB5 {
	margin-bottom: 5px !important;
}
.contOptionArea, .tbOptionArea {
	clear: both;
	position: relative;
	overflow: hidden;
}
.tbArea {
	clear: both;
	position: relative;
}
.fR {
	float: right;
}
a {
	cursor: pointer;
}
a:link, a:visited {
	color: #666;
	text-decoration: none;
}
a:link {
	color: #4b4b4b;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:link {
	color: #353535;
	text-decoration: none;
}
fieldset, img {
	border: 0;
}
img {
	vertical-align: top;
}
.lms2Basic_tb {
	border: 0;
	border-collapse: collapse;
	border-top: 2px solid #6c81b4;
	table-layout: fixed;
	empty-cells: show;
}
address, caption, cite, code, dfn, em, var {
	font-style: normal;
	font-weight: normal;
}
table th, table td {
	word-break: break-all;
}
.txtL {
	text-align: left !important;
}
.txtL {
	text-align: left !important;
}
.txtL {
	text-align: left !important;
}
.lms2Basic_tb td {
	padding: 8px 3px 6px;
	border-bottom: 1px solid #e7eef5;
	color: #454545;
	font-size: 12px;
	line-height: 14px;
	text-align: center;
}
input {
	outline-style: none;
}
.lms2Basic_tb td .lecStatus {
	display: block;
	width: 60px;
	margin: 0 auto;
	color: #666;
	text-align: center;
}
.lms2Basic_tb td .lecStatus .mvNum {
	color: #d60e2b;
	font-weight: bold;
}
.lms2Basic_tb td .lecTit {
	margin-bottom: 2px;
	color: #4b4b4b;
	font-weight: bold;
	line-height: 16px;
}
.lms2Basic_tb td .lecAddInfo {
	height: 15px;
	padding-top: 5px;
}
ol, ul {
	list-style: none;
}
li {
	list-style: none;
}
.lms2Basic_tb td .lecAddInfo li {
	float: left;
	height: 12px;
	margin-left: 10px;
	padding: 2px 0 0 10px;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/vline_darkGray.gif') no-repeat left 3px;
	line-height: 12px;
}
.lms2Basic_tb td .lecAddInfo li.first {
	margin-left: 0px;
	padding-left: 0px;
	background: none;
}
.lms2Basic_tb td .lecAddInfo li a {
	display: block;
	height: 13px;
	padding-top: 1px;
	padding-top: 2px\9;
	line-height: 12px;
}
:root .lms2Basic_tb td .lecAddInfo li a {
	padding-top: 3px \0/IE9;
}
.lms2Basic_tb td .lecAddInfo li.lecInfo, .lms2Basic_tb td .lecAddInfo li.lecInfo a {
	font-weight: bold;
	color: #0281b4;
}
.lms2Basic_tb td .lecAddInfo li a .icoDisk {
	margin-top: -2px;
	margin-top: -3px\9;
}
:root .lms2Basic_tb td .lecAddInfo li a .icoDisk {
	margin-top: -4px \0/IE9;
}
.lms2Basic_tb td .lecTchPhoto {
	display: block;
	overflow: hidden;
	width: 61px;
	height: 61px;
	margin: 0 auto;
	border: 1px solid #dadada;
	text-align: center;
}
.lms2Basic_tb td .lecTchName {
	display: block;
	width: 60px;
	margin: 0 auto;
	padding-top: 5px;
	text-align: center;
	letter-spacing: -2px;
}
.lms2Basic_tb td .lecStatus .captionNum {
	color: #007c8b;
	font-weight: bold;
}
.lms2Basic_tb td .lecAddInfo li a .icoBook {
	margin-top: -3px;
	margin-top: -4px\9;
}
:root .lms2Basic_tb td .lecAddInfo li a .icoBook {
	margin-top: -5px \0/IE9;
}
.lms2Basic_tb thead th {
	padding: 10px 0 8px;
	border-bottom: 1px solid #e7eef5;
	background: #f4f7fa url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/vline_lms2Basic_tb_th.gif') no-repeat left 50%;
	color: #000641;
	font-size: 12px;
	font-weight: normal;
	text-align: center;
	line-height: 14px;
}
.lms2Basic_tb thead th.first {
	background-image: none;
}
.tbOptionArea .txt {
	font-size: 11px;
	color: #000641;
	line-height: 18px;
}
.fL {
	float: left;
}
select, input.iText, textarea {
	font-family: Dotum;
	font-size: 1em;
	padding: 3px 2px 2px 2px;
	border: 1px solid #B0B0B0;
	margin: 0;
}
.iBorderS {
	height: 20px;
	padding: 1px;
	border: 1px solid #b0b0b0;
	font-size: 12px;
	color: #000;
}
.highSearchArea {
	clear: both;
	overflow: hidden;
}
.highSearchArea .searchInfo {
	overflow: hidden;
	padding: 4px 10px;
	border: 1px solid #e7eef5;
	background-color: #f4f7fa;
}
.highSearchArea .searchOption {
	overflow: hidden;
	padding: 10px;
	border-right: 1px solid #e7eef5;
	border-bottom: 1px solid #e7eef5;
	border-left: 1px solid #e7eef5;
	background-color: #fff;
}
.pT5 {
	padding-top: 5px !important;
}
.iBorderT {
	height: 18px;
	border: 1px solid #b0b0b0;
	color: #000;
}
.arealLecTab li {
	float: left;
	height: 26px;
	padding: 6px 4px 5px 0;
	color: #2f2f2f;
	font-size: 12px;
	line-height: 26px;
	text-align: center;
}
.arealLecTab li a {
	display: block;
	height: 26px;
	padding-left: 10px;
	padding-top: 1px\9;
	#padding-top:1px: ;
	_padding-top: 1px;
	color: #2f2f2f;
	font-weight: bold;
	line-height: 27px;
}
.arealLecTab li a span {
	padding-right: 10px;
}
.arealLecTab li a:hover, .arealLecTab li a:active, .arealLecTab li.on a {
	display: block;
	overflow: hidden;
	height: 26px;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/bg_arealTabOnL.gif') no-repeat left top;
	color: #fff;
}
.arealLecTab li a:hover span, .arealLecTab li a:active span, .arealLecTab li.on a span {
	display: block;
	height: 26px;
	height: 24px\9;
	padding-top: 2px\9;
	margin-top: -1px\9;
	#height:24px: ;
	#padding-top:2px: ;
	#margin-top:-1px: ;
	_height: 24px;
	_padding-top: 2px;
	_margin-top: -1px;
	background: url('http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/bg_arealTabOnR.gif') no-repeat right top;
	line-height: 26px;
}
a:visited {
	text-decoration: none;
}
.ipsiCommonSchedule .sList_tit2 .yearIpsi_Schedule .ipsiMonth a:link, a:visited, a:hover, a:active {
	color: #454545;
}
#reNcontainer #reNcontents .categoryNavi a {
	display: inline-block;
	margin-top: -1px;
	margin-top: 0\9;
	color: #666;
}
:root #reNcontainer #reNcontents .categoryNavi a {
	margin-top: 2px;
}
</style>

<script type="text/javascript">
$(document).ready(function(e) {
	$('#btnAtndLec').click(function(e) {
		$('#applyForm').submit();
	});
});
</script>
</head>
<body><div id="reNwrap2013Sub" style="margin-top: 100px;">
<div id="reNcontainer">

	<div class="lnbArea" id="reNlnb">
							<div class="lnbMenuArea mB10">					
							<div class="lnbTit"><a href="#"><img alt="고3·N수" src="http://image.ebsi.co.kr/ebsi/images/reNskin2013/layout/reNlnb05_tit.gif"></a></div>
					<div class="lnbMenu">
						<ul class="menuList" id="lnbList">
						<li class=" on subMnu">
							<a class="subMnu menuB" href="#none">영역별</a>
							<ul class="menuList_s" style="display: block;">
								<li><a href="#">국어</a></li>
								<li><a href="#">수학</a></li>
								<li><a href="#">영어</a></li>
								<li class=" on"><a href="#">사회탐구</a></li>
								<li><a href="#">과학탐구</a></li>
								<li><a href="#">직업탐구</a></li>
								<li><a href="#">제2외국어</a></li>
							</ul>
						</li>
						<li>
							<a class=" menuD" href="#">시리즈별</a>
						</li>
						<li>
							<a class=" menuD" href="#">선생님별</a>
						</li>
						<li class=" subMnu">
							<a class="menuB" href="#none">시즌추천강좌</a>
							<ul class="menuList_s" style="display: block;">
								<li><a href="#">7030 Final 실전모의고사&nbsp;<img class="icoNew" alt="new" src="http://image.ebsi.co.kr/ebsi/images/reNpotalUI/layout/lnbicon_new.gif"></a></li>
								<li><a href="#">수능완성</a></li>
								<li><a href="#">해법 N제</a></li>
								<li><a href="#">인터넷수능</a></li>
								<li><a href="#">수능특강</a></li>
							</ul>
						</li>
						<li>
							<a class=" menuD" href="#">통합Q&amp;A&nbsp;<img class="icoNew" alt="hot" src="http://image.ebsi.co.kr/ebsi/images/reNpotalUI/layout/lnbicon_hot.gif"></a>
						</li>
						<li>
							<a class=" menuD" href="#">수능개념 FAQ&nbsp;<img class="icoNew" alt="new" src="http://image.ebsi.co.kr/ebsi/images/reNpotalUI/layout/lnbicon_new.gif"></a>
						</li>
						</ul>
					</div>							
				</div>			
<script type="text/javascript">new lnbMenu();</script>

	</div>
	
	
	
	<div id="reNcontents">
		<div class="arealLecTab mB15">
				<ul>
					<li class="on"><a href="#none" data-clas-code=""><span>전체</span></a></li>
					<li><a href="#none" data-clas-code="A50003"><span>사회문화</span></a></li>
					<li><a href="#none" data-clas-code="A50004"><span>한국지리</span></a></li>
					<li><a href="#none" data-clas-code="A50006"><span>경제</span></a></li>
					<li><a href="#none" data-clas-code="A50007"><span>세계지리</span></a></li>
					<li><a href="#none" data-clas-code="A50009"><span>세계사</span></a></li>
					<li><a href="#none" data-clas-code="A50012"><span>법과정치</span></a></li>
					<li><a href="#none" data-clas-code="A50013"><span>동아시아사</span></a></li>
					<li><a href="#none" data-clas-code="A50014"><span>한국사</span></a></li>
					<li><a href="#none" data-clas-code="A50015"><span>윤리와사상</span></a></li>
					<li><a href="#none" data-clas-code="A50016"><span>생활과윤리</span></a></li>
					</ul>
		</div>
		
		<form name="sfrm" id="sfrm" method="post">
			<input name="targetCode" id="targetCode" type="hidden" value="D300">
			<input name="categoryCode" id="categoryCode" type="hidden" value="A500">

			<input name="dtlCateCd" id="dtlCateCd" type="hidden" value="">
			<input name="sortOrd" id="sortOrd" type="hidden" value="lec_stt_dt">
			<input name="searchDisplayYn" id="searchDisplayYn" type="hidden" value="Y">
			<input name="openYear" id="openYear" type="hidden" value="2014">
			
			<!-- 고급검색 -->
			<div class="highSearchArea mB5">
				<div class="searchInfo">
					<span class="fR"><a href="#none"><img name="btnSpecSrch" id="btnSpecSrch" alt="고급검색" src="http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/btn_highSearch.gif"></a></span>
				</div>
				<div class="searchOption">
										
					<select name="series" class="iBorderS" id="series" style="width: 200px;">
						<option value="">-시리즈 전체-</option>
						<option value="PRO_781">9월 모의평가 해설강의</option>
						<option value="PRO_777">One Point Lesson 현장강의</option>
						<option value="PRO_776">9월 모의평가 대비 EBS 리허설</option>
						<option value="PRO_775">7030 파이널 실전모의고사</option>
						<option value="PRO_772">고3 여름방학 대 특강</option>
						<option value="PRO_769">7월 학력평가 해설강의</option>
						<option value="PRO_765">수능완성</option>
						<option value="PRO_760">6월 모의평가 해설강의</option>
						<option value="PRO_751">EBS N제</option>
						<option value="PRO_753">6월모평대비 특강 및 모의고사</option>
						<option value="PRO_752">사탐 알짜 특강</option>
						<option value="PRO_747">4월 학평 해설강의</option>
						<option value="PRO_744">3월 학평 해설강의</option>
						<option value="PRO_740">3월 학평 대비 특강(고3)</option>
						<option value="PRO_697">수능특강</option>
						<option value="PRO_723">수능기출플러스</option>
						<option value="PRO_704">수능개념</option>
						<option value="PRO_701">예비 고3 특강</option>
						</select>
					
					<select name="learnStepCd" class="iBorderS" id="learnStepCd" style="width: 100px;">
						<option value="">-학습단계-</option>
						<option value="ASL01">수능입문</option>
							<option value="ASL02">개념완성</option>
							<option value="ASL03">실력완성</option>
							<option value="ASL04">문제풀이</option>
							<option value="ASL05">최종마무리</option>
						</select>
					
					<select name="tchrId" class="iBorderS" id="tchrId" style="width: 80px;">
						<option value="">-선생님-</option>
						<option value="@*09st-so00">강봉균</option>
						<option value="@*09st-so02">강승희</option>
						<option value="@ebsint_so103">고아름</option>
						<option value="@*ebsint_so87">권용기</option>
						<option value="@ebstv_so40">김건태</option>
						<option value="@*ebsint_so65">김성묵</option>
						<option value="@*ebsint_so96">김종익</option>
						<option value="@*ebsint_so97">김준우</option>
						<option value="@ebsint_so106">김한나</option>
						<option value="@ebsint_so102">김현진</option>
						<option value="@*ebsint_so88">류성완</option>
						<option value="@*ebsint_so82">문병일</option>
						<option value="@*ebsint_so72">민병권</option>
						<option value="@*ebstut_so99">박봄</option>
						<option value="@*ebsint_so69">박정연</option>
						<option value="@*09st-so01">송기택</option>
						<option value="@*ebsint_so31">신승진</option>
						<option value="@*ebsint_so99">윤민희</option>
						<option value="@ebsint_so100">윤초롱</option>
						<option value="@*ebsint_so42">윤희석</option>
						<option value="@*ebsint_so89">이남승</option>
						<option value="@ebsint_so101">이다지</option>
						<option value="@ebsint_so104">이윤지</option>
						<option value="@*ebsint_so71">이지영</option>
						<option value="ebstv_so13">이희명</option>
						<option value="@*ebsint_so73">최경석</option>
						<option value="@*ebsint_so92">최양진</option>
						<option value="@ebstv_so39">최적</option>
						<option value="ebstut_so31">최태성</option>
						<option value="@*ebsint_so95">한도균</option>
						<option value="@*ebsint_so86">황승민</option>
						<option value="@ebsint_so107">황진상</option>
						</select>
					
					<div class="pT5">
						<select name="searchType" class="iBorderS" id="searchType" style="width: 90px;">
							<option value="">-직접검색-</option>
							<option value="sbjtNm"> -강좌명- </option>
							<option value="bookNm"> -교재명- </option>
							<option value="tchrNm"> -선생님- </option>
						</select>
						
						<input name="keyWord" class="iBorderT" id="keyWord" style="width: 430px;" type="text" maxlength="30" value="">
						<a href="#none"><img name="btnSrch" id="btnSrch" alt="검색" src="http://image.ebsi.co.kr/ebsi/images/potalUI/btn/btn_search.gif"></a>
					</div>
				</div>
			</div>
			<!-- //고급검색 -->		
			</form>
			
			<div class="tbOptionArea mB5">
				<p class="txt mB5">* 총 <strong>${fn:length(lschduleList)}</strong>개 강좌</p>
				<div class="fL">
					<select name="_openYear" class="iBorderS" id="_openYear" style="width: 65px;">
						<option value="">-년도-</option>
						<option value="2014" selected="">2014</option>
						<option value="2013">2013</option>
						<option value="2012">2012</option>
						<option value="2011">2011</option>
						<option value="2010">2010</option>
						<option value="2009">2009</option>
						</select>
					
					<select name="_sortOrd" class="iBorderS" id="_sortOrd" style="width: 100px;">
						<option selected="selected" value="lec_stt_dt">최신강좌순</option>
						<option value="cre_date">최신등록순</option>
						<option value="hit_cnt">인기순</option>
					</select>
				</div>
				<div class="fR">
					<a href="#none"><img name="btnAtndLec" id="btnAtndLec" alt="선택 강좌 수강 신청" src="http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/btn_selLecApply_orange.gif" /></a>
				</div>
			</div>
			
		<form method="post" action="/teamP/study/user/applying" id="applyForm">
			<!-- 리스트 -->
			<div class="tbArea">
				<table width="100%" class="lms2Basic_tb mB15" summary="강좌목록을 선생님,대상/학습단계,강좌명,탑재현황(자막현황),맛보기로 나열">
					<caption>강좌목록</caption>
					<colgroup>
						<col width="11%"><col width="12%"><col width="52%"><col width="10%"><col width="7%"><col width="8%">
					</colgroup>
					<thead>
						<tr>
							<th class="first">형태/<br>&nbsp;&nbsp;&nbsp;분류</th>
							<th>강사명</th>
							<th>강의명</th>
							<th>교재</th>
							<th>수강료</th>
							<th id="applyAtnd">수강신청</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="lecSchedule" items="${lschduleList }" begin="${pagingModel.startRecord-1 }" end="${pagingModel.endRecord-1 }" step="1" varStatus="status">
					<tr>
							<td>${lecSchedule.lecture.slName }<br>${lecSchedule.lecture.lcName }</td>
							<td>
								<!-- 비연합강좌인경우 -->
										<span class="lecTchPhoto"><img width="61" height="61" onerror="OnImageNotFound(this)" alt="" src="http://image.ebsi.co.kr/images/teacher_new/@/@_ebsint_so89_2.jpg"></span>
										<span class="lecTchName">${lecSchedule.lecture.eKname }</span>
									</td>
							<td class="txtL">
								<div class="lecSort mB5">
									<img alt="NEW" src="http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/ico_lecNew.gif"><!-- <img alt="완강" src="http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/ico_lecFinish.gif"><img alt="자막" src="http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/ico_lecCaption.gif"> --></div>
								<p class="lecTit">
									<a href="#">${lecSchedule.lecture.sbjName }</a>
										</p>
								<div class="lecAddInfo">
									<ul>
										<li class="first lecInfo">
										<a href="javascript:Fn_PopupCenter('S20140000730','sbjtInfo');">
											강의시간</a>
										</li>
									<c:forEach var="lecDay" items="${lecSchedule.lecDay}"  varStatus="status3">
					                	<li>${lecDay.dName } : ${lecDay.ltFromTime } - ${lecDay.ltToTime }</li>
				                	</c:forEach>
										<!-- <li>
											<a href="#" target="_blank">비교재안내&nbsp;<img class="icoDisk" alt="파일아이콘" src="http://image.ebsi.co.kr/ebsi/images/potalUI/lecture/icon_disk.jpg"></a>
												</li> -->
										</ul>
								</div>
							</td>
							<td>
								<span class="lecStatus"><span class="mvNum">${lecSchedule.lecture.tbName }</span> - </span>
								<span class="lecStatus"><span class="captionNum">${lecSchedule.lecture.sbjName2 }</span> ${lecSchedule.lecture.cName }</span></td>
							<td>
								${lecSchedule.lsCost}
									</td>
							<td>
							<input name="chkSbjt" id="chkSbjt_${lecSchedule.lsId}" type="checkbox" value="${lecSchedule.lsId}" />
							</td>
						</tr>
					</c:forEach>
					
					</tbody>
				</table>
			</div>
			<!-- //리스트 -->
		</form>
		
	</div>
	
	
</div>
</div></body>
</html>
