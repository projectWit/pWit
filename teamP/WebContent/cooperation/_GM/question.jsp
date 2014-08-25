<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type"
	content="application/xhtml+xml; charset=euc-kr" />
<meta name="author" content="sapling" />
<meta name="description"
	content="보건산업기술이전센터, Health Technology Transfer Center" />
<meta name="keyword" content="Health Technology Transfer Center" />
<link rel="stylesheet" type="text/css" href="teamP/cooperation/_GM/css/common_style.css" />
<link rel="stylesheet" type="text/css" href="teamP/cooperation/_GM/css/sub_style.css" />
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
<body>
<div id="ckmpContainerWrap">
	<form name="form" method="post" enctype="multipart/form-data">
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
						<th><label for="emailTitle">제목</label></th>
						<td><input type="text" name="subject" id="emailTitle"
							title="제목 작성" size="75" maxlength="100" /></td>
					</tr>
					<tr>
						<th><label for="emailWrite">작성자</label></th>
						<td><input type="text" name="name" id="emailWrite"
							title="작성자 작성" size="15" maxlength="50" /></td>
					</tr>
					<tr>
						<th><label for="emailTel1">전화번호</label></th>
						<td><input type="text" name="phone1" id="emailTel1"
							title="연락처 앞번호" maxlength="4" size="10" /> - <input type="text"
							name="phone2" id="emailTel2" title="연락처 중간번호" maxlength="4"
							size="10" /> - <input type="text" name="phone3" id="emailTel3"
							title="연락처 뒷번호" maxlength="4" size="10" /></td>
					</tr>
					<tr>
						<th><label for="emailCel1">휴대전화</label></th>
						<td><input type="text" name="cellular1" id="emailCel1"
							title="연락처 앞번호" maxlength="4" size="10" /> - <input type="text"
							name="cellular2" id="emailCel2" title="연락처 중간번호" maxlength="4"
							size="10" /> - <input type="text" name="cellular3"
							id="emailCel3" title="연락처 뒷번호" maxlength="4" size="10" /></td>
					</tr>
					<tr>
						<th><label for="emailM1">이메일</label></th>
						<td><input type="text" name=email1 value=""
							id="memberEmail1" title="이메일 첫번재" size="25" maxlength="50" /> @
							<input type="text" name=email2 value="" id="memberEmail1"
							title="이메일 두번재" size="25" maxlength="100" /> <select
							name="email3" onChange="setEmail(value);" id="skillMail3">
								<option value="">:::직접기록:::</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="naver.com">naver.com</option>
								<option value="paran.com">paran.com</option>
								<option value="nate.com">nate.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="empal.com">empal.com</option>
								<option value="netian.com">netian.com</option>
								<option value="korea.com">korea.com</option>
								<option value="freechal.com">freechal.com</option>
						</select></td>
					</tr>
					<!--
		<tr>
			<th><label for="emailFile1">첨부파일</label></th>
			<td>
               <input type="file" id="emailFile1" title="첨부파일 첫번째" size="30" /><br />
               <input type="file" id="emailFile2" title="첨부파일 두번째" size="30" />
               </td>
		</tr>
		-->
					<tr>
						<th><label for="emailText">내용</label></th>
						<td><textarea cols="73" rows="10" name="contents"
								id="emailText" title="내용쓰기"></textarea></td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- //공통 버튼 -->

	</form>

	<!-- ######################################### CONTENTS end ################## -->
</div>
</body>
</html>