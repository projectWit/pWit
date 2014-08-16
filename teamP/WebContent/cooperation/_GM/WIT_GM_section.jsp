<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GM 체육관리 프로그램</title>
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/bbs.css" />
<link rel="stylesheet" type="text/css"	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css" />

<!--[if lt IE 9]>
<script src="dist/html5shiv.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="css/witCommon.css">
<style type="text/css">

</style>

<script type="text/javascript" src="script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="script/jquery-ui.js"></script>
<script type="text/javascript">

</script>
</head>

<body id="main">
<br/>
<br/>
<div style="text-align:center; margin:auto;">
<div id="visual">
	<div class="mimg">
		<img src="img/main.jpg" name="visual" width="1000"
			height="320" border="0" usemap="#visualMap"
			alt="고객의 웃음보다 더 큰 행복은 없습니다" />
	</div>
</div>
</div>
<div id="container" style="position:relative;width:1000px;margin:0 auto;float:center;">
<hr/>
	<div class="latest">
		<p class="title">
		</p>
		<div class="wrap">
			<p class="header">
			<!--  공지  -->
				<a href="#" >공지 사항</a>&nbsp;&nbsp;&nbsp;
			</p>
			<div>
				<br>
				<ul>
					<li><a href="#"> 구민체육센터&nbsp;가을학기&nbsp;문화강좌&nbsp;접수&nbsp;안내.. </a> <span>2014-07-31</span>
						<!--	--></li>
					<li><a href="#"> 광진구민체육센터&nbsp;여름맞이&nbsp;무료이벤트특강&nbsp;안내!!.. </a> <span>2014-07-28</span>
						<!--	--></li>
					<li><a href="#"> 구민체육센터&nbsp;가을학기&nbsp;문화강좌&nbsp;강사&nbsp;모집&nbsp;안내.. </a> <span>2014-07-21</span>
						<!--	--></li>
					<li><a href="#"> 광진구민체육센터&nbsp;상반기&nbsp;수영장&nbsp;수질검사&nbsp;결과&nbsp;안내!!.. </a> <span>2014-07-07</span>
						<!--	--></li>
					<li><a href="#"> 구민체육센터&nbsp;홈페이지&nbsp;서비스&nbsp;일시중단&nbsp;안내.. </a> <span>2014-07-04</span>
						<!--	--></li>
					<li><a href="#"> 여름방학&nbsp;특강&nbsp;프로그램&nbsp;안내.. </a> <span>2014-06-20</span> <!--	-->
					</li>
					<li><a href="#"> 구민체육센터&nbsp;8월&nbsp;휴관일&nbsp;안내.. </a> <span>2014-06-03</span> <!--	-->
					</li>
				</ul>
				
			</div>
			<p class="header">
			<!--  강좌 -->
				<a href="#">개설 강좌</a>&nbsp;&nbsp;&nbsp;
			</p>
			<div style="display: none">
				<br>
				<ul>
					<li><a href="#">[보도자료]&nbsp;수영장&nbsp;수조&nbsp;물&nbsp;전면&nbsp;교체.. </a> <span>2013-08-29</span><!--	--></li>
					<li><a	href="#">[보도자료]&nbsp;수영장&nbsp;시설&nbsp;개선.. </a> <span>2013-07-19</span> <!--	-->	</li>
					<li><a href="#">[보도자료]&nbsp;여름방학&nbsp;특강&nbsp;수강생&nbsp;모집.. </a> <span>2013-07-15</span><!--	--></li>
					<li><a href="#">[보도자료]&nbsp;건강학&nbsp;특강.. </a> <span>2013-07-15</span> <!--	--></li>
					<li><a href="#">상세주소&nbsp;안내.. </a> <span>2013-03-26</span> <!--	--></li>
					<li><a href="#">2013&nbsp;스포츠바우처&nbsp;이용안내.. </a> <span>2013-03-26</span> <!--	-->	</li>
					<li><a href="#">구민체육센터내&nbsp;카페테리아&nbsp;오픈.. </a> <span>2013-02-20</span> <!--	-->	</li>
				</ul>
			</div>
			<p class="header">
			<!--  동호회 -->
				<a href="#">동 호 회</a>
			</p>
			<div style="display: none">
				<br>
				<ul>
					<li><a href="#">[보도자료]&nbsp;건강학&nbsp;특강.. </a> <span>2013-07-15</span> <!--	--></li>
					<li><a href="#">상세주소&nbsp;안내.. </a> <span>2013-03-26</span> <!--	--></li>
					<li><a href="#">2013&nbsp;스포츠바우처&nbsp;이용안내.. </a> <span>2013-03-26</span> <!--	-->	</li>
					<li><a href="#">구민체육센터내&nbsp;카페테리아&nbsp;오픈.. </a> <span>2013-02-20</span> <!--	-->	</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="event">
          <p id="daymanagement">일정</p>
          <div id="calendarTitel">
			  <a href="#" id="calendarPre">이전</a>
			  <span>2014.08</span>
			  <a href="#" id="calendarNext">다음</a>
		  </div>
			<table id="calendarTable" align="center">
  				<thead>
                    <tr>
                        <th class="daysSun"><span class="spanSun"><font color="red">S</font></span></th>
                        <th class="daysMon"><span class="spanMon">M</span></th>
                        <th class="daysTue"><span class="spanTue">T</span></th>
                        <th class="daysWed"><span class="spanWed">W</span></th>
                        <th class="daysThu"><span class="spanThu">T</span></th>
                        <th class="daysFri"><span class="spanFri">F</span></th>
                        <th class="daysSat"><span class="spanSat"><font color="blue">S</font></span></th>
                   </tr>
                </thead>
                <tbody>
                    <!--tr class="oddRow">
                        <td></td>
                        <td></td>
                        <td><span>1</span></td>
                        <td><span>2</span></td>
                        <td><a href="#" title="일정보기" class="scheduleDay">3</a></td>
                        <td><span>4</span></td>
                        <td><span>5</span></td>
                    </tr-->
                    <tr>
                       <td >&nbsp;</td>
						<td >&nbsp;</td>
						<td >&nbsp;</td>
						<td >&nbsp;</td>
						<td >&nbsp;</td>
						<td align='center'>
                      <a href='#'><strong>1</strong></a></td><td align='center'>
                      <a href='#'><strong><font color=#329ACD>2</font></strong></a></td></tr>
                      <tr><td align='center'>
                       <a href='#'><strong><font color=#CC3300>3</font></strong></a></td><td align='center'>
                      <a href='#'><strong>4</strong></a></td><td align='center'>
                      <a href='#'><strong>5</strong></a></td><td align='center'>
                      <a href='#'><strong>6</strong></a></td><td align='center'>
                      <a href='#'><strong>7</strong></a></td><td align='center'>
                      <a href='#'><strong>8</strong></a></td><td align='center'>
                      <a href='#'><strong><font color=#329ACD>9</font></strong></a></td></tr>
<tr><td align='center'>
                      <a href='#'><strong><font color=#CC3300>10</font></strong></a></td><td align='center'>
                      <a href='#'><strong>11</strong></a></td><td align='center'>
                      <a href='#'><strong>12</strong></a></td><td align='center'>
                      <a href='#'><strong>13</strong></a></td><td align='center'>
                      <a href='#'><strong>14</strong></a></td><td align='center'>
                      <a href='#'><strong><font color='red'>15</font></strong></a></td><td align='center'>
                      <a href='#'><strong><font color=#329ACD>16</font></strong></a></td></tr>
<tr><td align='center'>
                      <a href='#'><strong><font color=#CC3300>17</font></strong></a></td><td align='center'>
                      <a href='#'><strong>18</strong></a></td>
                      <td align='center'>19</td><td align='center'>
                      <a href='#'><strong>20</strong></a></td><td align='center'>
                      <a href='#'><strong>21</strong></a></td><td align='center'>
                      <a href='#'><strong>22</strong></a></td><td align='center'>
                      <a href='#'><strong><font color=#329ACD>23</font></strong></a></td></tr>
<tr><td align='center'>
                      <a href='#'><strong><font color=#CC3300>24</font></strong></a></td><td align='center'>
                      <a href='#'><strong>25</strong></a></td><td align='center'>
                      <a href='#'><strong>26</strong></a></td><td align='center'>
                      <a href='#'><strong>27</strong></a></td><td align='center'>
                      <a href='#'><strong>28</strong></a></td><td align='center'>
                      <a href='#'><strong>29</strong></a></td><td align='center'>
                      <a href='#'><strong><font color=#329ACD>30</font></strong></a></td></tr>
<tr><td align='center'>
                      <a href='#'><strong><font color=#CC3300>31</font></strong></a></td>                            </tr>
                        </tbody>
                    </table>        <!--  <div id="calendarTitel"> <a href="#" id="calendarPre">이전</a><span>2010.
                    06</span><a href="#" id="calendarNext">다음</a> </div>-->
                  </div>
   <div class="service">
		<label class="servicebar"> GM 소개<img src="img/go.png"width="60px" height="18px" style="float: right;"/></label><br/><br/>
		<label class="servicebar"> 수강신청 가기<img src="img/go.png"width="60px" height="18px" style="float: right;"/></label><br/><br/>
		<label class="servicebar"> 프로그램 소개<img src="img/go.png"width="60px" height="18px" style="float: right;"/></label><br/><br/>
		<label class="servicebar"> 1:1 문의<img src="img/go.png"width="60px" height="18px" style="float: right;"/></label><br/><br/>
	</div>
</div>
<br>
<br>
</body>
</html>