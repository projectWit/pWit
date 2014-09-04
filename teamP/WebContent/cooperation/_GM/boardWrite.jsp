<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="CONTENT-TYPE" content="text/html; charset=EUC-KR">
<title>게시판 글쓰기</title>
<style type="text/css">
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
.bw_title {
width: 56px;
margin: 0px;
text-align: left;
font-family: "Verdana", dotum, '돋움';
}
#bw_input_writer, #bw_input_passwd, #bw_writer {
width: 110px;
}
#bw_input_writer, #bw_input_passwd, #bw_input_email, #bw_input_subject, #bw_input_file, #bw_contents, #addinfo_out_box {
border: 1px #e0e0e0 solid;
color: #737172;
}
.bw_contents {
padding: 5px;
background: #fdfdfd;
border-top: 1px #cdcdcd solid;
border-left: 1px #cdcdcd solid;
border-right: 1px #e9e9e9 solid;
border-bottom: 1px #e9e9e9 solid;
resize: none;
font: normal 12px 'NanumGothic';
color: #666;
}
</style>
<script type="text/javascript">
function send() {
    documnet.form.action="/teamP/boardWrite.gm";
    document.form.submit();
}
</script>
<body>
<form id="form" name="form" action="">
<!-- BOARD WRITE -->
<table width="720px" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><table width="700px" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td><table width="100%" cellspacing=0 class='bw_border_bottom' id='bw_table'>
					<tr>
						<td class='bw_title_color bw_title' style="padding-left:15px;">이름</td>
						<td> <input id="bw_input_writer" type="text" name="hname" size=10 value="">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="bw_title_color">비밀번호 :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input id="bw_input_passwd" name="passwd" type="password" size=10></td>
					</tr>
					<tr>
						<td colspan="2" bgcolor="#e0dedf" style="height:1px;"></td>
					</tr>
					<tr>
						<td class='bw_title_color bw_title' style="padding-left:15px;">Email</td>
						<td>  <span class='bw_notice'><input type="text" name='mEmail' size=20 /></span></td>
					</tr>
					
					<tr>
						<td colspan="2" bgcolor="#e0dedf" style="height:1px;"></td>
					</tr>
					<tr>
						<td class='bw_title_color bw_title' style="padding-left:15px;">제 목</td>
						<td class='bw_title_color'><input id='bw_input_subject' type="text" name="subject" size=30 maxlength=100 >
							 </td>
					</tr>
					<tr>
						<td class='bw_value bw_border_top bw_border_bottom bw_contentscolor' colspan="2">  
							<textarea id="bw_contents" name=content cols=67 rows=15 wrap=off onfocus='clear_content()' style="font-family:굴림체; width:100%;">안내글 예제> 신규 게시글을 작성시에는, 반드시 회원ID를 적어 주세요!</textarea> </td>
					</tr>							
				</table></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td align="center"><div id='bw_button'> 
				 <img src='/teamP/cooperation/_GM/img/write.jpg'  onclick="send()" border=0 alt='입력' /><img src='/teamP/cooperation/_GM/img/list.jpg' border=0 alt='목록' /></div></td>
	</tr>
</table>
</form>
<br/>
<br/>
<!-- BOARD INSERT FORM END-->
</body>
</html>
