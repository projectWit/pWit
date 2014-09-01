<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type"
	content="application/xhtml+xml; charset=euc-kr" />
<meta name="author" content="sapling" />
<meta name="description"
	content="보건산업기술이전센터, Health Technology Transfer Center" />
<meta name="keyword" content="Health Technology Transfer Center" />
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_GM/css/common_style.css" />
<link rel="stylesheet" type="text/css" href="/teamP/cooperation/_GM/css/sub_style.css" />
<script type="text/javascript">
	main = 5;
	sub = 5;
	ssub = 0;
</script>

</head>
<style>
.fl{float:left;}
.fr{float:right;}
.fc{ text-align:center;}
label{cursor:pointer;}
/* img */
img,fieldset{border:0px;}
/* table common */
table{border-collapse:collapse;}
/* link */
a:link,a:visited,a:active{text-decoration:none;}
a:hover{text-decoration:underline;}
/* form */
form ul{list-style:none;}
form legend{display:none;}
select{height:18px;font-size:12px;letter-spacing:0px;}
input[type="text"]{height:16px;border:1px solid #c8c8c8;font-size:12px;letter-spacing:0px;}
input[type="password"]{height:16px;border:1px solid #c8c8c8;font-size:12px;letter-spacing:0px;}
input[type="file"]{height:18px;border:1px solid #c8c8c8;font-size:12px;letter-spacing:0px;}
input[type="image"]{}
textarea{border:1px solid #c8c8c8;font-size:1em;}
.write_table{margin-bottom:25px;float:left;clear:both;width:100%;font-size:1em;line-height:1.5em;}
.write_table table{border-bottom:2px solid #83b1d9; border-top:2px solid #83b1d9;}
.write_table caption{padding-bottom:5px;display:none;text-align:left;}
.write_table th{padding:5px;border-top:1px solid #d1e6f8;border-bottom:1px solid #d1e6f8;
                background:url('/images/list_tb_title_line.gif') no-repeat right 50%;color:#314a79;font-size:0.95em;text-align:left;}
.write_table th span.impo { font-size:1.0em; font-weight:normal; color:#ff6600; padding-left:5px;}
.write_table th span { font-size:1.0em; font-weight:normal; color:#888888;}
.write_table td{padding:5px;border-top:1px solid #d1e6f8;border-bottom:1px solid #d1e6f8;text-align:left; }
.write_table td *{ vertical-align:middle;}/* 2011.03.17 */
.write_table td img{ vertical-align:middle;}
.write_table td span{ font-size:0.9em; color:#888888;}
.write_table td span.org { color:#ff6600;} /* 2011.03.17 */
.write_table td span.ica{ font-size:0.9em; color:#888888; background:url('/images/register_icon01.gif') 0 0 no-repeat; padding-left:15px;}
.write_table td.patent {background:url('/images/register_icon02.gif') 25px 12px no-repeat; padding-left:45px;}
.write_table span.conn{padding-left:5px;}
.write_table td p.sub { padding:0px; margin:0px; background:#FFFFFF;}
.write_table td.appoint ul  {  float:left; list-style:none;  margin:0px; padding:0px;}
.write_table td.appoint ul li { float:left; list-style:none; margin:0px; padding:0px; line-height:1.8em;}
.write_table td.appoint ul li p{ float:left;  width:162px;padding-right:10px; font-size:0.9em; }
.write_table td.appoint ul li input { vertical-align:middle;}
.write_table td.appoint ul li img { vertical-align:middle;}
.write_table td p.message_block {color:#ff6600; clear:both;}
.write_submes{padding:0px; margin:0px;width:100%; font-size:0.9em;}
.write_submes span {color:#ff7800;}
.write_table table td table {border:1px solid #ddd; margin-bottom:10px;}
.write_table table td table th{border:1px solid #ddd; background:#f1f1f1; font-weight:normal;}
.write_table table td table td{border:1px solid #ddd; background:#fff; font-weight:normal;}
</style>
<script type="text/javascript">
function sendController() {
	document.form.action="/teamP/questionInsert.gm";
	document.form.submit();
}
</script>
<body>
<div id="ckmpContainerWrap">
	<h3>1:1 문의 하기</h3>
	<form name="form" enctype="multipart/form-data">
		<div id="skillRegistWriteTable" class="write_table">
			<table width="800px" border="0" cellspacing="0" cellpadding="0"
				summary="기술개요 국문 글쓰기 테이블입니다.">
				<caption>* 국문 폼양식입니다.</caption>
				<colgroup>
					<col width="15%" />
					<col width="85%" />
				</colgroup>
				<tbody>
					<tr>
						<th><label for="qTitle">제목</label></th>
						<td><input type="text" name="qTitle" id="qTitle"
							title="제목 작성" size="75" maxlength="100" /></td>
					</tr>
					<c:forEach var="item" items="${list}">					
					<tr>
						<th><label for="qMId">작성자</label></th>
						<td>${item.mName }</td>
					</tr>
					</c:forEach>
					<tr>
						<th><label for="qCont">내용</label></th>
						<td><textarea cols="73" rows="10" name="qCont"
								id="qCont" title="내용쓰기"></textarea></td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- //공통 버튼 -->
		<div style="text-align:center">
			<img src="img/bt_submit.jpg" onclick="sendController()" style="cursor:pointer"/>&nbsp;&nbsp;&nbsp;<img src="img/bt_cancle.jpg" style="cursor:pointer" onclick="form.reset(); return false;"/>
		</div>
	</form>
	<br/><br/>
	<!-- ######################################### CONTENTS end ################## -->
</div>
</body>
</html>