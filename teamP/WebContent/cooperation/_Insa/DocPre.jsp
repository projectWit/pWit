<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />

<meta name="viewport" content="width=device-width, initial-scale = 1" />
<link rel="stylesheet" href="ui/jquery.mobile-1.2.0.min.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script type="text/javascript" src="../script/calendar.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.9.2.css" />
<link rel="stylesheet" type="text/css" href="../css/calendar.css" />

<style>
#ck {
	background-color: #CEFBC9;
	width: 100px;
}
</style>
<style type="text/css">
.upload-control {
	border: 1px solid #cdcdcd
}

.upload-control .header {
	overflow: hidden;
	height: 30px;
	border-bottom: 1px solid #cdcdcd;
	background: #f9f9f9; /* Old browsers */
	background: -moz-linear-gradient(top, #f9f9f9 0%, #efefef 100%);
	/* FF3.6+ */
	background: -webkit-linear-gradient(top, #f9f9f9 0%, #efefef 100%);
	/* Chrome10+,Safari5.1+ */
	background: -ms-linear-gradient(top, #f9f9f9 0%, #efefef 100%);
	/* IE10+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f9f9f9',
		endColorstr='#efefef', GradientType=0); /* IE6-9 */
}

.upload-control .header-title,.upload-control .header-title div {
	float: left
}

.upload-control .header-title .tit-text {
	height: 30px;
	padding-left: 10px;
	line-height: 30px;
	font-weight: bold;
	border-left: 1px solid #cdcdcd
}

.upload-control .header-title .tit-text span {
	height: 14px;
	margin-left: 20px;
	padding: 2px 5px 1px 5px;
	background: #999;
	color: #fff;
	font-weight: normal;
	font-size: 11px;
	border-radius: 2px
}

.upload-control .header-title .volume-hidden {
	display: none
}

.upload-control .header-title .icon-upload {
	display: inline-block;
	width: 14px;
	height: 14px;
	margin: 8px 10px;
	background:
		url(/ECMain/EGD/WebResource.axd?d=Zd3dKCVng2N2MdoB6aykoRgDuOiEhx_FjknhLevgHHnuY3qb8kjK8ITzKSND9Yr-p6ebOlCKdtqvUoze7nxwEak-2z8X3cOCGLNHqTj0BUI9vsdsJVTkitcYm15askW-GjkU5ePgUVQPtWvXaeqrrpjYc1klxg0_W3fI_YUzjvLZDHYg76Nu3qtVoWUt6S3SkW3JV-T6sdZ-QzTPIZl1oeXUw9M1&t=635430399743488750)
		center top no-repeat
}

.upload-control .header-btn {
	float: right;
	width: 91px;
	margin: 3px 10px 0 0;
	border: none;
	overflow: hidden;
	background:
		url(/ECMain/EGD/WebResource.axd?d=xU8IVKTA_hTPBvtA6JmMHSlX8DYw8fZnJevPAB2xnEO0yDfe_otnNOaOfEMmqNH_atmjQ77k8S8cVRLA6z8yLjc8Q70PgCcAq0ZmdDTBYNCmQSSaSdM_E3mHCOPuhXY3oumEfgibJ1bhWEph5SbtDFcG2R7cCwMT3R19oRfVaO4M-vamUt3tbXt4NxG4YK-DcimZg3Gts-yXix3Up1VjTezfgvQ1&t=635430399743488750)
		top left no-repeat
}

.upload-control .header-btn:hover {
	background:
		url(/ECMain/EGD/WebResource.axd?d=UO_Szq5D84t5vrd8_P7OUWlfmEDI3KYwMoPwj3MQSUzTgyqrAOiFx81axRKYmi4Qq3opds-ssCWU881RzvUiMZ-fqlgqiEpfUgnA1xi3vLpoLoTuQrw-KsO-uSqQzmbrZkjtHj_NPafoXjxZ11HRs-yZwyYQ41ecJJuEBqxPhCE2855eLAGlIytoEKnAyw87hFXFV5P1ZlFYHGY2KGTcGCE9x1w1&t=635430399743488750)
		top left no-repeat
}

.upload-control .header-btn .btn-upload {
	margin-left: -150px;
	height: 21px;
	cursor: pointer;
	opacity: 0.0;
	-ms-filter: 'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)';
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
}

.upload-control .size {
	width: 100px
}

.upload-control .status {
	width: 120px
}

.upload-control .action {
	width: 30px
}

.upload-control .tbl-title {
	clear: both;
	width: 100%;
	height: 30px;
	background: #fafafa;
	border-bottom: 1px solid #e6e6e6;
	table-layout: fixed
}

.upload-control .tbl-title td {
	text-align: center
}

.upload-control .tbl-title td:first-child {
	padding-left: 10px;
	text-align: left
}

.upload-control .tbl-contents {
	clear: both;
	overflow-y: scroll;
	height: 110px
}

.upload-control .tbl-contents a.btn-del {
	display: block;
	width: 14px;
	height: 14px;
	margin: 0 auto;
	text-indent: -9999px;
	background:
		url(/ECMain/EGD/WebResource.axd?d=Q8YlaVuHYxtmofOG2LUUKMvb0oUl5QAJvGTbePGOBpclY6ZQWxC-S77EvRd61IpHGc5nPz7ZO5VR42tTrgW8SLvQja8uB2_GVL6yvpKw1yiJPI5e_GuVJzibSRulidOrP8gh1CLM9Xsp9pWlBjC3EpS_poiG2PMrnhwISK0WUx1OgNdzrtSH3ICctpZioLFEIgtuD8UIQFvdQG1estzb-37nNnc1&t=635430399743488750)
		center top no-repeat
}

.upload-control .tbl-contents progress {
	width: 70px;
	margin-right: 5px
}

.upload-control .file-list {
	width: 100%;
	*width: auto;
	table-layout: fixed
}

.upload-control .file-list .filename {
	text-align: left;
	padding-left: 10px
}

.upload-control .file-list td {
	float: none;
	white-space: nowrap;
	overflow: hidden;
	padding: 8px 0 6px 0;
	text-align: center;
	border-top: 1px solid #e6e6e6
}

.upload-control .file-list td:first-child {
	padding-left: 10px;
	text-align: left
}

.upload-control .file-list tr:first-child td {
	border-top: none
}

.upload-control .file-list td.file-nodata {
	padding: 45px 0;
	vertical-align: middle;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
	color: #b3b3b3
}
</style>

<script type="text/javascript">
	calendarIDs = [ 'WriteDt','PreDt', 'FromDt', 'ToDt' ]; // 달력이 추가될 태그의 id
</script>

<script type="text/javascript">
	function PopUpPre() {
		window.open("DocPreIns.jsp", "", "width = 1000px, height = 800px");
	}
	$(document).ready(function(e) {
		   findInput();
		});
	function findInput() {
		   $('form input[type="text"], form textarea').eq(0).focus();
		}
	
</script>
</head>


<body>
<form>
	<div id="wrap">
		<div class="new-title">
			<div class="title-leftarea">재직증명서</div>
			<div class="title-rightarea"></div>
		</div>
		<hr />
		<br />
		<div id="contents">
			<table summary="" class="entry H_0px fixed">
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="15%" />
				<col width="25%" />

			<tr>
						<th><label for="ddlYear"> 작성일자</label></th>
						<td colspan="4"><input name="WriteDt" type="text" id="WriteDt"
							size="24" maxlength="20" value="" class="default"/></td>								
					</tr>
				<tr>
					<th rowspan="2">인적사항</th>
					<td id="ck">소속</td>
					<td id="ck">직위</td>
					<td id="ck">성명</td>
					<td id="ck">주민등록번호</td>

				</tr>

				<tr>
					<td><input type="text" value="사원" name="JobPos" id="JobPos" class = "default"
						style="width: 70%" /></td>
					<td><input type="text" value="영업팀" class = "default" style="width: 70%"
						name="Dep" id="Dep" /></td>
					<td><input type="text" class = "default" value="호날두" style="width: 70%"
						name="Name" id="Name" /></td>
					<td><input type="text" value="123456 "  class = "default" maxlength="6" name = "Jumin1" id = "Jumin1"
						style="width: 20%" /> - <input type="text"  class = "default" value="1234567"
						maxlength="7" style="width: 30%" name = "Jumin2" id = "Jumin2"/></td>

				</tr>
				<tr>
					<th><label for="ddlYear"> 입사일자</label></th>
					<td colspan="4"><input name="PreDt" type="text" id="PreDt"
						size="24" maxlength="20" value="" class="default" /></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td colspan="4"><input type="text" maxlength="3" value="010" class = "default"
						size="4" /> - <input type="text" maxlength="4" value="1234" class = "default"
						size="5" /> - <input type="text" maxlength="4" value="5678" class = "default"
						size="5" /></td>
				</tr>
				<tr>
					<th>재직기간</th>
					<td colspan="4"><input name="FromDt" type="text" id="FromDt"
						size="12" maxlength="8" value="" class="default" />~ <input
						name="ToDt" type="text" id="ToDt" size="12" maxlength="8" value=""
						class="default" /></td>
				</tr>
				<tr>
					<th>주요업무</th>
					<td colspan="4"><input name="Job" type="text" id="Job"
						size="24" maxlength="20" value="머하긴일하지" class="default" /></td>
				</tr>

				<tr>
					<th>기타사항</th>
					<td><textarea cols="106" rows="15" name = "Etc" id = "Etc"></textarea></td>
				</tr>


			</table>

			<div>
				<span class="btn blue"> <input name="btnSend" type="button"
					id="btnSend" value="저장/결재(F7)" onclick="PopUpPre()" />
				</span> <a id="lnkSave2"
					href="javascript:__doPostBack(&#39;lnkSave2&#39;,&#39;&#39;)"></a>
				<span class="btn blue"><input name="btnList" type="button"
					id="btnList" value="리스트" /></span>
			</div>


		</div>
	</div>
	</form>
</body>
</html>
