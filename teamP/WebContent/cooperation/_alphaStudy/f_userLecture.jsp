<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html class="dj_gecko dj_contentbox" xml:lang="en-US" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<style>
/* html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, li, fieldset, form, label, legend {
	margin: 0px;
	padding: 0px;
	border: 0px;
	outline: 0px;
	font-size: inherit;
	vertical-align: baseline;
} */
a {
	color: #00649d;
}
/* div, p, span, a, li, strong {
	font-family: Arial, sans-serif;
} */
#ibm-top {
	background: #FFF;
	margin-top: 74px;
	_margin-top: 0;
	min-width: 980px;
	_float: left;
}
body {
	line-height: 1.2;
}
/* @media screen, projection */
body {
	color: #000;
}
:focus {
	outline: 0px;
}
#ibm-pcon {
	width: 778px;
	margin: 20px auto;
	padding: 0 0 10px 202px;
	background: #FFF;
}
#ibm-pcon::after {
	content: ".";
	display: block;
	height: 0px;
	clear: both;
	visibility: hidden;
}
#ibm-content {
	float: left;
	width: 100%;
}
/* @media screen */
#ibm-content {
	position: inherit;
}
#ibm-my-menu, #ibm-common-menu, #ibm-primary-links a, #ibm-content, #ibm-page-tools a, #ibm-footer-module, #ibm-footer li a, #ibm-search-results p a, #ibm-search-results h2, #ibm-search-results h3, #ibm-search-results li p {
	font-size: 0.8em;
}
#ibm-navigation {
	position: relative;
	float: left;
	left: -182px;
	_left: 0px;
	margin: 14px 0% 0% -100%;
	_margin-left: -960px;
	padding: 1.1em 0 30px;
	width: 172px;
}
.flashtext, .ibm-access, #ibm-content-main form.ibm-column-form p span a span {
	position: absolute;
	left: -3000px;
	width: 500px;
}
ol, ul {
	border: 0px;
	outline: 0px;
	font-size: inherit;
	vertical-align: baseline;
}
#ibm-related-links, #ibm-esite-link {
	display: block;
}
/* #ibm-masthead ol, #ibm-masthead ul, #ibm-leadspace-head ol, #ibm-leadspace-head ul, #ibm-pcon ol, #ibm-pcon ul, #ibm-related-content ol, #ibm-related-content ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
} */
#ibm-navigation #ibm-primary-links {
	background: url('/i/v17/t/left_nav_base_solid.png') no-repeat bottom right #eee;
	background: url('/i/v17/t/left_nav_base_solid.png') no-repeat scroll bottom right, -o-radial-gradient(40px 200px, circle closest-corner, #f2f2f2 50%, #e8e9e9 100%);
	background: url('/i/v17/t/left_nav_base_solid.png') no-repeat scroll bottom right, -webkit-radial-gradient(40px 200px, circle closest-corner, #f2f2f2 50%, #e8e9e9 100%);
	background: url('/i/v17/t/left_nav_base_solid.png') no-repeat scroll bottom right, -ms-radial-gradient(40px 200px, circle closest-corner, #f2f2f2 50%, #e8e9e9 100%);
	background: url('/i/v17/t/left_nav_base_solid.png') no-repeat scroll bottom right, radial-gradient(40px 200px, circle closest-corner, #f2f2f2 50%, #e8e9e9 100%);
	padding-bottom: 30px;
	_background: url(/i/v17/t/left_nav_base_solid.png) no-repeat bottom right #eee;
}
#ibm-secondary-navigation {
	color: #666;
	padding-left: 0px;
	padding-top: 30px;
}
#ibm-secondary-navigation {
	padding: 10px 0 0 0;
}
#ibm-secondary-navigation ul li a {
	background: url(/i/v17/t/left_nav_bullet.png) no-repeat 0 8px;
	display: block;
	*zoom:1: ;
	_height: 1%;
	padding: 1px 4px 1px 7px;
	text-decoration: none;
}
#ibm-secondary-navigation h2, #ibm-secondary-navigation ul li a {
	font-size: 0.8em;
}
#ibm-parent-link a, #ibm-secondary-navigation ul {
	font-weight: normal;
}
#ibm-secondary-navigation li {
	padding-left: 0px;
}
#ibm-navigation li#ibm-parent-link a:link, #ibm-navigation li#ibm-parent-link a:visited, #ibm-secondary-navigation li a:link, #ibm-secondary-navigation li a:visited {
	color: #666;
}
#ibm-navigation #ibm-primary-links li {
	border-style: solid;
	border-left-width: 1px;
	border-right-width: 1px;
	border-color: #e0e0e0;
}
#ibm-navigation #ibm-primary-links #ibm-overview {
	border-width: 1px;
	border-style: solid;
	border-top-color: #d7d9dd;
	border-left-color: #a0a3a9;
	border-bottom-color: #575a5d;
	border-right-color: #92969b;
}
#ibm-navigation #ibm-primary-links a {
	padding: 7px 14px 6px 7px;
	color: #4b4b4b;
	display: block;
	text-decoration: none;
	*zoom:1: ;
	border-top: 1px solid #f4f4f5;
	border-bottom: 1px solid #d7d7d8;
	_height: 1%;
}
#ibm-navigation #ibm-primary-links a:hover {
text-decoration: none;
background-color: #9c9c9c;
background: -moz-linear-gradient(top, #DFE2E4, #C7C9CC) repeat scroll 0 0 transparent;
background: -o-linear-gradient(top, #DFE2E4, #C7C9CC) repeat scroll 0 0 transparent;
background: -webkit-linear-gradient(top, #DFE2E4, #C7C9CC);
background: -ms-linear-gradient(top, #DFE2E4, #C7C9CC);
background: linear-gradient(top, #DFE2E4, #C7C9CC);
-ms-filter: "progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#DFE2E4', endColorstr='#C7C9CC')";
filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#DFE2E4', endColorstr='#C7C9CC');
color: #000;
text-shadow: 0px 1px 0 #fff;
border-top-color: #e5e7e9;
}
#ibm-navigation #ibm-primary-links #ibm-overview a, #ibm-navigation #ibm-primary-links #ibm-overview a:hover, #ibm-navigation #ibm-primary-links #ibm-overview a:active {
	background-color: #9c9c9c;
	background: -moz-linear-gradient(top, #b9bdc3, #62676b) repeat scroll 0 0 transparent;
	background: -o-linear-gradient(top, #b9bdc3, #62676b) repeat scroll 0 0 transparent;
	background: -webkit-linear-gradient(top, #b9bdc3, #62676b) repeat scroll 0 0 transparent;
	background: -ms-linear-gradient(top, #b9bdc3, #62676b) repeat scroll 0 0 transparent;
	background: linear-gradient(top, #b9bdc3, #62676b) repeat scroll 0 0 transparent;
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#b9bdc3', endColorstr='#62676b')";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#b9bdc3', endColorstr='#62676b');
	text-shadow: 0px -1px 0px rgba(0,0,0,0.5);
	border: 0px;
	color: #fff;
	margin-left: 0px;
	margin-right: 0px;
	padding: 7px 6px 6px 7px;
}
#ibm-navigation #ibm-primary-links #ibm-overview a, #ibm-navigation #ibm-primary-links #ibm-overview a:hover, #ibm-navigation #ibm-primary-links #ibm-overview a:active {
	font-weight: bold;
}
#ibm-leadspace-head {
	display: none;
}
.ibm-landing-page #ibm-leadspace-head, .ibm-portal-page #ibm-leadspace-head, .ibm-home-page #ibm-leadspace-head, #ibm-content #ibm-leadspace-head, .ibm-common-overlay #ibm-leadspace-head {
	display: block;
}
#ibm-content #ibm-leadspace-head {
	background: none;
	min-height: 70px;
	_height: 70px;
}
#ibm-content-body {
	padding-top: 20px;
	background: #FFF;
}
#ibm-content-main {
	clear: left;
	float: left;
	width: 576px;
}
.ibm-content-expand#ibm-top #ibm-content-main {
	width: 100%;
}
.ibm-columns::after {
	content: ".";
	display: block;
	height: 0px;
	clear: both;
	visibility: hidden;
	overflow: hidden;
}
#ibm-content .ibm-columns {
	clear: both;
	margin: 0px;
	overflow: hidden;
	width: auto;
	padding-bottom: 10px;
}
.ibm-columns .ibm-col-1-1, .ibm-columns .ibm-col-2-1, .ibm-columns .ibm-col-4-1, .ibm-columns .ibm-col-4-2, .ibm-columns .ibm-col-4-3, .ibm-columns .ibm-col-5-1, .ibm-columns .ibm-col-5-2, .ibm-columns .ibm-col-5-3, .ibm-columns .ibm-col-5-4, .ibm-columns .ibm-col-6-1, .ibm-columns .ibm-col-6-2, .ibm-columns .ibm-col-6-3, .ibm-columns .ibm-col-6-4, .ibm-columns .ibm-col-6-5, .dijitDialogPaneContent .ibm-common-overlay .ibm-columns [class*='ibm-col-'] {
	float: left;
	padding: 0px 10px;
	min-height: 1px;
}
#ibm-content .ibm-columns .ibm-col-2-1, #ibm-content .ibm-columns .ibm-col-4-2, #ibm-content .ibm-columns .ibm-col-6-3 {
	width: 268px;
}
h2.ibm-rule, h3.ibm-rule, ul.ibm-rule, ol.ibm-rule {
	border-top: 2px solid #666;
	padding-top: 6px;
	margin-top: 10px !important;
}
h2.ibm-rule, h2.ibm-alternate-rule, h2.ibm-rule-alternate {
	font-size: 1.3em !important;
}
#ibm-content h2 {
	font-size: 1.3em;
}
#ibm-content h2, #ibm-content h3, #ibm-content .ibm-columns h2, #ibm-content .ibm-columns h3 {
	margin: 5px 10px;
}
#ibm-content .ibm-columns p + h2, #ibm-content .ibm-columns p + h3 {
	margin-top: 6px;
}
#ibm-content .ibm-columns ul + h2, #ibm-content .ibm-columns ul + h3 {
	padding-top: 8px;
}
#ibm-content .ibm-columns .ibm-col-1-1 h2, #ibm-content .ibm-columns .ibm-col-2-1 h2, #ibm-content .ibm-columns .ibm-col-4-1 h2, #ibm-content .ibm-columns .ibm-col-4-2 h2, #ibm-content .ibm-columns .ibm-col-4-3 h2, #ibm-content .ibm-columns .ibm-col-5-1 h2, #ibm-content .ibm-columns .ibm-col-5-2 h2, #ibm-content .ibm-columns .ibm-col-5-3 h2, #ibm-content .ibm-columns .ibm-col-5-4 h2, #ibm-content .ibm-columns .ibm-col-6-1 h2, #ibm-content .ibm-columns .ibm-col-6-2 h2, #ibm-content .ibm-columns .ibm-col-6-3 h2, #ibm-content .ibm-columns .ibm-col-6-4 h2, #ibm-content .ibm-columns .ibm-col-6-5 h2, #ibm-content .ibm-columns .ibm-col-1-1 h3, #ibm-content .ibm-columns .ibm-col-2-1 h3, #ibm-content .ibm-columns .ibm-col-4-1 h3, #ibm-content .ibm-columns .ibm-col-4-2 h3, #ibm-content .ibm-columns .ibm-col-4-3 h3, #ibm-content .ibm-columns .ibm-col-5-1 h3, #ibm-content .ibm-columns .ibm-col-5-2 h3, #ibm-content .ibm-columns .ibm-col-5-3 h3, #ibm-content .ibm-columns .ibm-col-5-4 h3, #ibm-content .ibm-columns .ibm-col-6-1 h3, #ibm-content .ibm-columns .ibm-col-6-2 h3, #ibm-content .ibm-columns .ibm-col-6-3 h3, #ibm-content .ibm-columns .ibm-col-6-4 h3, #ibm-content .ibm-columns .ibm-col-6-5 h3 {
	margin: 5px 0;
}
#ibm-content p {
	padding: 10px;
}
#ibm-content-main p {
	font-size: 1em;
	color: #333;
}
#ibm-content .ibm-container-body p, #ibm-content .ibm-columns p {
	padding: 6px 0;
}
#ibm-content .ibm-columns h2 + p, #ibm-content .ibm-columns h3 + p {
	padding-top: 0px !important;
	margin-top: -2px !important;
}
#ibm-content .ibm-columns h2.ibm-rule + p, #ibm-content .ibm-columns h3.ibm-rule + p, #ibm-content .ibm-columns h2.ibm-rule-alternate + p, #ibm-content .ibm-columns h3.ibm-rule-alternate + p, #ibm-content .ibm-columns h2.ibm-alternate-rule + p, #ibm-content .ibm-columns h3.ibm-alternate-rule + p {
	margin-top: 0px !important;
}
#ibm-content ul {
	padding: 0px 10px;
}
#ibm-content-main ul, #ibm-content-main ol {
	color: #333;
}
#ibm-content .ibm-container-body ul, #ibm-content .ibm-columns ul {
	padding: 0px;
}
#ibm-content .ibm-container-body p + ul, #ibm-content .ibm-columns p + ul {
	padding: 0px 0 8px 0;
}
.ibm-reset-link, .ibm-livedoor-link, .ibm-hatena-link, .ibm-yahoojapan-link, .ibm-baidu-link, .ibm-renren-link, .ibm-kaixn-link, .ibm-wykop-link, .ibm-blip-link, .ibm-vaideo-link, .ibm-xing-link, .ibm-recommend-link, .ibm-fullstar-link, .ibm-halfstar-link, .ibm-nostar-link, .ibm-forum-link, .ibm-setting-link, .ibm-minimize-link, .ibm-maximize-link, .ibm-cautionLarge-link, .ibm-errorLarge-link, .ibm-checkLarge-link, .ibm-informationLarge-link, .ibm-questionLarge-link, .ibm-question-lg-link, .ibm-incorrectLarge-link, .ibm-newLarge-link, .ibm-non-secure-link, .ibm-callaction-link, .ibm-generic-link, .ibm-requestquote-link, .ibm-callme-link, .ibm-phone-link, .ibm-demo-link, .ibm-demoplay-link, .ibm-forward-pg-link, .ibm-signin-link, .ibm-delete-link, .ibm-add1-link, .ibm-upload-link, .ibm-add-link, .ibm-audio-link, .ibm-back-link, .ibm-back-em-link, .ibm-calculator-link, .ibm-calendar-link, .ibm-cancel-link, .ibm-caution-link, .ibm-confirm-link, .ibm-chat-link, .ibm-anchor-down-link, .ibm-anchor-down-em-link, .ibm-digg-link, .ibm-delicious-link, .ibm-download-link, .ibm-enlarge-link, .ibm-error-link, .ibm-information-link, .ibm-help-link, .ibm-linkedin-link, .ibm-password-link, .ibm-check-link, .ibm-new-link, .ibm-question-sm-link, .ibm-question-link, .ibm-incorrect-link, .ibm-secure-link, .ibm-pdf-link, .ibm-call-link, .ibm-call-info, .ibm-video-podcast-link, .ibm-popup-link, .ibm-print-link, .ibm-rss-link, .ibm-sort-down-link, .ibm-sort-link, .ibm-sort-up-link, .ibm-external-link, .ibm-anchor-up-link, .ibm-video-link, .ibm-wireless-link, .ibm-forward-link, .ibm-firstpage-link, .ibm-lastpage-link, .ibm-forward-em-link, .ibm-email-link, .ibm-facebook-link, .ibm-twitter-link, .ibm-symp-doc, .ibm-symp-presentation, .ibm-symp-spreadsheet, .ibm-birt-table-content, .ibm-birt-run-report, .ibm-birt-export-data, .ibm-birt-export-report, .ibm-blog, .ibm-community, .ibm-dogear, .ibm-flickr, .ibm-friendfeed, .ibm-stumbleupon, .ibm-usergroup, .ibm-youtube, .ibm-reset-link, .ibm-stumbleupon-link, .ibm-youtube, .ibm-youtube-link, .ibm-flickr-link, .ibm-friendfeed-link, .ibm-skype-link, .ibm-googleplus-link, .ibm-menu-link, .ibm-usergroup-link, .ibm-dogear-link, .ibm-community-link, .ibm-blog-link, .ibm-fontsize-link, .ibm-contrast-link, .ibm-backup-link, .ibm-halfstar-link, .ibm-document-link, .ibm-forward-pg-link, .ibm-demoplay-link, .ibm-livestream-link, .ibm-weibo-link, .ibm-tag-link, .ibm-chevron-link, .ibm-chevron-alternate-link, .ibm-upward-link {
	padding-left: 16px !important;
	background-repeat: no-repeat;
	opacity: 0.8;
	_line-height: normal !important;
	*zoom:1: ;
}
.ibm-external-link, .ibm-popup-link, .ibm-generic-link, .ibm-callaction-link, .ibm-chevron-link, .ibm-chevron-alternate-link {
	background-image: url(/i/v17/icons/ibm_sprite_links_blue_ON.png) !important;
}
.ibm-generic-link {
	background-position: 0px -401px;
}
a.ibm-feature-link, p.ibm-ind-link a:visited, ul.ibm-link-list a:visited {
	text-decoration: none;
}
span[class*='-link'], a[class*='-link'], table.ibm-data-table td a[class*='-link'] {
	border-bottom: 0 none;
}
p.ibm-ind-link a, ul.ibm-link-list a {
	display: block;
	margin: 0;
	padding: 0 0 0 16px;
	text-decoration: none;
}
p.ibm-ind-link a, #ibm-related-content .ibm-container .ibm-col-6-1 p.ibm-ind-link a {
	line-height: 1.06em;
}
#ibm-content-main a.ibm-back-em-link, #ibm-content-main a.ibm-forward-pg-link, li.ibm-forward-pg-link, li.ibm-back-em-link, li.ibm-anchor-up-link, li.ibm-anchor-down-em-link, #ibm-content-main a.ibm-forward-em-link, #ibm-content-main a.ibm-anchor-up-link, #ibm-content-main a.ibm-anchor-down-em-link, #ibm-content-main .ibm-generic-link, #ibm-content-sidebar a.ibm-back-em-link, #ibm-content-sidebar .ibm-generic-link, #ibm-content-sidebar a.ibm-anchor-down-em-link, #ibm-content-sidebar a.ibm-anchor-up-link, #ibm-content-sidebar a.ibm-forward-em-link, #ibm-content-main .ibm-generic-link:hover, #ibm-content-main a.ibm-back-em-link:hover, #ibm-content-main a.ibm-forward-em-link:hover, #ibm-content-main a.ibm-anchor-up-link:hover, #ibm-content-main a.ibm-anchor-down-em-link:hover, #ibm-content-sidebar .ibm-generic-link:hover, #ibm-content-sidebar a.ibm-back-em-link:hover, #ibm-content-sidebar a.ibm-anchor-down-em-link:hover, #ibm-content-sidebar a.ibm-anchor-up-link:hover, #ibm-content-sidebar a.ibm-forward-em-link:hover, li.ibm-highlight-link {
	font-weight: bold;
}
#ibm-content ul li {
	background: url(/i/v17/bullets/ibm_bullet_grey_off.png) no-repeat 0 10px;
	padding: 5px 0 5px 8px;
	height: 1%;
	clear: left;
}
#ibm-content ul.ibm-bullet-list li a, #ibm-related-content ul.ibm-bullet-list li a {
	display: inline;
}
#ibm-content .ibm-columns .ibm-col-6-5 form p, #ibm-content .ibm-columns .ibm-col-6-4 form p, #ibm-content .ibm-columns .ibm-col-6-3 form p, #ibm-content .ibm-columns .ibm-col-6-2 form p, #ibm-content .ibm-columns .ibm-col-5-4 form p, #ibm-content .ibm-columns .ibm-col-5-3 form p, #ibm-content .ibm-columns .ibm-col-5-2 form p, #ibm-content .ibm-columns .ibm-col-5-1 form p, #ibm-content .ibm-columns .ibm-col-4-3 form p, #ibm-content .ibm-columns .ibm-col-4-2 form p, #ibm-content form .ibm-columns .ibm-col-4-2 p, #ibm-content .ibm-columns .ibm-col-4-1 form p, #ibm-content .ibm-columns .ibm-col-2-1 form p, #ibm-content form .ibm-columns .ibm-col-2-1 p, #ibm-content .ibm-columns .ibm-col-1-1 form p, #ibm-content .ibm-columns .ibm-col-6-5 form ul, #ibm-content .ibm-columns .ibm-col-6-4 form ul, #ibm-content .ibm-columns .ibm-col-6-3 form ul, #ibm-content .ibm-columns .ibm-col-6-2 form ul, #ibm-content .ibm-columns .ibm-col-5-4 form ul, #ibm-content .ibm-columns .ibm-col-5-3 form ul, #ibm-content .ibm-columns .ibm-col-5-2 form ul, #ibm-content .ibm-columns .ibm-col-5-1 form ul, #ibm-content .ibm-columns .ibm-col-4-3 form ul, #ibm-content .ibm-columns .ibm-col-4-2 form ul, #ibm-content form .ibm-columns .ibm-col-4-2 ul, #ibm-content .ibm-columns .ibm-col-4-1 form ul, #ibm-content .ibm-columns .ibm-col-2-1 form ul, #ibm-content form .ibm-columns .ibm-col-2-1 ul, #ibm-content .ibm-columns .ibm-col-1-1 form ul, #ibm-content .ibm-columns .ibm-col-6-5 form ol, #ibm-content .ibm-columns .ibm-col-6-4 form ol, #ibm-content .ibm-columns .ibm-col-6-3 form ol, #ibm-content .ibm-columns .ibm-col-6-2 form ol, #ibm-content .ibm-columns .ibm-col-5-4 form ol, #ibm-content .ibm-columns .ibm-col-5-3 form ol, #ibm-content .ibm-columns .ibm-col-5-2 form ol, #ibm-content .ibm-columns .ibm-col-5-1 form ol, #ibm-content .ibm-columns .ibm-col-4-3 form ol, #ibm-content .ibm-columns .ibm-col-4-2 form ol, #ibm-content form .ibm-columns .ibm-col-4-2 ol, #ibm-content .ibm-columns .ibm-col-4-1 form ol, #ibm-content .ibm-columns .ibm-col-2-1 form ol, #ibm-content form .ibm-columns .ibm-col-2-1 ol, #ibm-content .ibm-columns .ibm-col-1-1 form ol {
	font-size: 1em;
}
table, caption, tbody, tfoot, thead, tr, th, td, textarea {
	margin: 0px;
	padding: 0px;
	outline: 0px;
	font-size: inherit;
	vertical-align: baseline;
}
table {
	border-collapse: collapse;
}
.dijitSelect {
	line-height: 1.1em;
}
.v17 .dijitSelect {
	padding: 5px 0 5px 10px;
	border: 1px solid #DDD;
	width: 100%;
	max-width: 80%;
	text-decoration: none;
	line-height: 1.1em;
	text-shadow: 0px 1px 0px rgba(255,255,255,0.8);
	background-color: #D8D8D8;
	background-color: transparent\9;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#F2F2F2', endColorstr='#D8D8D8');
	background: -webkit-linear-gradient(top, rgba(242,242,242,.2), rgba(216,216,216,.5));
	background: -moz-linear-gradient(top, rgba(242,242,242,.2), rgba(216,216,216,.5));
	background: -o-linear-gradient(top, rgba(242,242,242,.2), rgba(216,216,216,.5));
	background: -ms-linear-gradient(top, rgba(242,242,242,.2), rgba(216,216,216,.5));
	background: linear-gradient(top, rgba(242,242,242,.2), rgba(216,216,216,.5));
	color: #333;
	text-decoration: none;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-collapse: separate;
}
.v17 .dijitSelect .dijitButtonContents {
	white-space: normal;
}
.v17 .dijitSelect .dijitArrowButton {
	background: url(/i/v17/icons/dropdown_sprite.png) no-repeat 100% -4px;
	*background-position:100% 0: ;
	padding: 0;
	width: 20px;
}
.v17 table.dijitSelect .dijitButtonContents, .v17 table.dijitSelect .dijitDownArrowButton {
	*padding:5px 0 5px 10px: ;
}
.v17 table.dijitSelect .dijitButtonContents {
	background: none;
	padding: 0;
}
.dijitSelect .dijitArrowButton .dijitArrowButtonChar {
	*font-size:0px: ;
	_font-size: 11px;
}
.v17 .dijitSelect .dijitArrowButton .dijitArrowButtonChar {
	display: none;
	*display:block: ;
	*color:transparent: ;
	_color: #333;
}
.v17 table.dijitSelect span.dijitSelectLabel {
	display: block;
}
#ibm-content .ibm-columns .ibm-col-1-1, #ibm-content .ibm-columns .ibm-col-6-2, #ibm-content .ibm-columns .ibm-col-6-4 {
	float: none;
	width: auto;
	clear: both;
}
#ibm-content #ibm-leadspace-head #ibm-leadspace-body {
	padding-bottom: 0px;
}
#ibm-content #ibm-leadspace-head #ibm-leadspace-body {
	width: 576px;
	margin: 0;
}
.ibm-content-expand #ibm-content #ibm-leadspace-head #ibm-leadspace-body {
	width: 748px;
}
h1 {
	font-size: 2.6em;
	clear: both;
	line-height: 1em;
	text-shadow: 0px 1px 0px #fff;
}
#ibm-content #ibm-leadspace-head h1 {
	padding: 10px 10px 0 !important;
}
#ibm-content #ibm-leadspace-head p {
	width: auto;
	padding: 0 0 10px 10px;
}
#ibm-content-head p em, #ibm-content #ibm-leadspace-head p em {
	font-style: normal;
	font-weight: bold;
	color: #666;
	font-size: 1.1em;
}
#ibm-content #ibm-leadspace-head #ibm-leadspace-body p em span {
	display: block;
}

</style>

</head>
<body class="v17" id="ibm-com" aria-busy="false" style="margin: 0px; padding: 0px;"><div class="ibm-content-expand" id="ibm-top"><div id="ibm-access-cntr" role="main"><div id="ibm-pcon">
<div id="ibm-content">


<div id="ibm-content-body" style="margin: 0px; padding: 0px;">
<div id="ibm-content-main">

	<div class="tab-container" style="margin: 0px;">

<form method="post" action="/teamP/study/lecture/regSearch/list" name="pagingForm" id="pagingForm">
        <div class="tab-content" style="border: 0px solid red; " id="lecResult">
        	<select id="numPerPage" name="numPerPage" style="float: left; margin-right: 10px;"><option value="10">10개씩 보기</option><option value="20">20개씩 보기</option><option value="30">30개씩 보기</option></select>
        	<div class="" style="overflow: visible; border: 0px solid transparent;">
            <table cellspacing="0" class="tab-table result-table" id="table-0" style="clear: both;">
            	<div class="tabTable-th">
				<tr><th class="t-td-0">번호</th><th class="t-td-0">스케줄코드</th><th class="t-td-0">강의상태</th><th class="t-td-0">강의코드</th><th class="t-td-1">강의명</th><th class="t-td-2">강사명</th>
					<th class="t-td-3">과목</th><th class="t-td-3">형태</th><th class="t-td-3">분류</th><th class="t-td-4">학생구분</th>
                	<th class="t-td-6">강의정원</th><th class="t-td-7">강의실</th><th class="t-td-8">수강료</th>
                	<th class="t-td-9">일</th><th class="t-td-10">월</th><th class="t-td-11">화</th><th class="t-td-12">수</th>
                	<th class="t-td-13">목</th><th class="t-td-14">금</th><th class="t-td-15">토</th><th class="t-td-16">교재</th>
                	<th class="t-td-17">삭제</th></tr>
                </div>
            <!--</table>
            <div class="limit-table">
            <table cellspacing="0" class="tab-table" style="border-top: 0px solid transparent;">-->
                <tbody class="tabTable-td">
                <!-- <tr><td class="t-td-0"><a href="@Study_lecDetail.jsp">00001</a></td><td class="t-td-1">혼자하는 수학</td><td class="t-td-2">이연희</td><td class="t-td-3">수학</td><td class="t-td-4">고등학생</td>
                	<td class="t-td-5">3</td><td class="t-td-6">30</td><td class="t-td-7">102</td><td class="t-td-8">300,000</td>
                	<td class="t-td-9">18:00</td><td class="t-td-10">18:00</td><td class="t-td-11">18:00</td><td class="t-td-12">18:00</td>
                	<td class="t-td-13">18:00</td><td class="t-td-14">18:00</td><td class="t-td-15">18:00</td><td class="t-td-16">수학의 정석</td>
                	<td class="t-td-17"><input type="button" value="삭제"></td></tr> -->
			<c:forEach var="lecSchedule" items="${lschduleList }" begin="${pagingModel.startRecord-1 }" end="${pagingModel.endRecord-1 }" step="1" varStatus="status">
				<tr><td class="t-td-0">${pagingModel.no-status.count+1 }</td><td class="t-td-0"><a href="#">${lecSchedule.lsId }</a></td><td class="t-td-0">${lecSchedule.lsName }</td><td class="t-td-0">${lecSchedule.alId }</td><td class="t-td-1">${lecSchedule.lecture.alName }</td>
					<td class="t-td-2">${lecSchedule.lecture.eKname }</td><td class="t-td-3">${lecSchedule.lecture.sbjName }</td><td class="t-td-3">${lecSchedule.lecture.slName }</td><td class="t-td-3">${lecSchedule.lecture.lcName }</td><td class="t-td-4">${lecSchedule.lecture.sgName }</td>
                	<td class="t-td-6">${lecSchedule.lsMax }</td><td class="t-td-7">${lecSchedule.lrName }</td><td class="t-td-8">${lecSchedule.lsCost }</td>
                <%-- <c:forEach var="lecDay" items="${lecSchedule.lecDay}"  varStatus="status2">
                	<td class="t-td-9">${lecDay.ltFromTime } - ${lecDay.ltToTime }</td>
                </c:forEach> --%>
                <c:forEach var="i" begin="1" end="7" varStatus="status2">
                	<td class="t-td-9">
                	<c:forEach var="lecDay" items="${lecSchedule.lecDay}"  varStatus="status3">
	                	<c:if test="${lecDay.dCode == i }" >
	                		${lecDay.ltFromTime } - ${lecDay.ltToTime }
	                	</c:if>
                	</c:forEach>
                	</td>
                </c:forEach>
                	<td class="t-td-16">${lecSchedule.lecture.tbName } - ${lecSchedule.lecture.sbjName2 }&nbsp;${lecSchedule.lecture.cName }</td><td class="t-td-17"><input type="button" value="삭제"></td></tr>
			</c:forEach>
			<!-- <tr><td class="t-td-0">t</td><td class="t-td-0"><a href="#">t</a></td><td class="t-td-1">t</td><td class="t-td-2">t</td>
                	<td class="t-td-3">t</td><td class="t-td-4">t</td><td class="t-td-5">t</td>
                	<td class="t-td-6">t</td><td class="t-td-7">t</td><td class="t-td-8">t</td>
                	<td class="t-td-9">t</td><td class="t-td-10">t</td><td class="t-td-11">t</td>
                	<td class="t-td-12"><input type="button" value="삭제"></td></tr> -->
			
                
                </tbody>
            </table>
            </div>
            
            <div class="paging">
            	<!-- <span><a href="#">이전 10개</a>...</span> <span><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> 
            		<a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a></span> <span>...<a href="#">다음 10개</a></span> -->
			<c:if test="${pagingModel.prevLink > 0}"><span><a href="#" value="${pagingModel.prevLink }">이전 10개</a>&nbsp;...</span></c:if>
				&nbsp;&nbsp;<span>
			<c:forEach var="i" begin="${pagingModel.firstPage }" end="${pagingModel.lastPage }" step="1" varStatus="status">
				<a href="#" value="${i }">${i }</a>&nbsp;&nbsp;
			</c:forEach>
				</span>
			<c:if test="${pagingModel.nextLink > 0}"><span>...&nbsp;<a href="#" value="${pagingModel.nextLink }">다음 10개</a></span></c:if>
			<c:if test="${pagingModel.prevLink > 0 && pagingModel.nextLink == 0}"><span>...&nbsp;<a href="#">처음으로</a></span></c:if>
            </div>
        </div>
        <input type="hidden" value="${pagingModel.curPage }" name="curPage" id="curPage">
        <input type="hidden" value="${pagingModel.numPerPage }" name="numPerPageSET" id="numPerPageSET">
        <!-- <input type="submit" value="테스트용버튼"> -->
</form>


	</div>


</div>
</div>
</div>
<!-- LEFTNAV_BEGIN -->
<!--  Main nav links: ICC5 - F037275N34322B72-->
<div id="ibm-navigation" role="navigation" aria-label="Primary">
<h2 class="ibm-access" style="display: none;">Content navigation</h2>
<ul id="ibm-primary-links">
<li id="ibm-overview"><a href="//www.ibm.com/account/us/en/"><!-- My IBM -->MY ALPHA STUDY</a></li>
<li><a href="//www.ibm.com/account/myaccounts/us/en/"><!-- My Accounts -->내 계정</a></li>
<li><a href="https://www.ibm.com/account/myibm/myinterestView.do?cc=us&amp;lc=en"><!-- My interests -->내 성적</a></li>
<li><a href="http://www.ibm.com/account/mycommunity/us/en/"><!-- My community spaces -->내 커뮤니티</a></li>
<li><a href="https://www.ibm.com/account/myibm/profile.do?cc=us&amp;lc=en"><!-- My profile -->내 프로필</a></li>
</ul>

<div id="ibm-secondary-navigation" role="navigation" aria-label="Secondary">
<!--  Lower links: ICC7 - P617422L88932J47-->
<h2>Related links</h2>
<ul id="ibm-related-links">
<li><a href="#"><!-- Stockholder services -->서울대학교</a></li>
<li><a href="#"><!-- Stockholder services -->고려대학교</a></li>
<li><a href="#"><!-- Stockholder services -->연세대학교</a></li>
<li><a href="#"><!-- Stockholder services -->포항공과대학교</a></li>
<li><a href="#"><!-- Stockholder services -->카이스트</a></li>
<li><a href="#"><!-- Stockholder services -->서강대학교</a></li>
<li><a href="#"><!-- Stockholder services -->성균관대학교</a></li>
<li><a href="#"><!-- Stockholder services -->한양대학교</a></li>
<li><a href="#"><!-- Stockholder services -->이화여자대학교</a></li>
<li><a href="#"><!-- Stockholder services -->중앙대학교</a></li>
<li><a href="#"><!-- Stockholder services -->인하대학교</a></li>
</ul>
</div>
</div>
<!-- LEFTNAV_END -->
</div></div></div></body>
</html>

