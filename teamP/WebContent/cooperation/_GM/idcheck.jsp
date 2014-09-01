<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Id Check</title>
<style>
.cs_main .notice_box .twrap {
	float: left;
	width: 375px;
	height: 220px;
	overflow: hidden;
	margin-right: 29px;
}

.cs_main .notice_box {
	float: left;
	width: 500px;
	height: 200px;
	padding: 55px 0 0 63px;
	background: url(/v3/img/cs4/cs_main_bg.jpg) no-repeat 0 -306px;
}

.cs_contents {
	width: 500px;
	height: 200px;
	overflow: hidden;
	position: relative;
}

.cs_wrap {
	width: 500px;
	height: 200px;
	color: #777;
	overflow: hidden;
}

#MainContents {
	overflow: hidden;
	position: relative;
	width: 600px;
	height: 200px;
}
#result {
	margin:auto;
}

.cs_main .notice_box h3,.cs_main .depositor_board h3 {
	float: left;
	width: 375px;
	height: 30px;
	overflow: hidden;
	border-bottom: 1px solid #72413b;
}


.cs_main .notice_board,.cs_main .depositor_board {
	float: left;
	width: 375px;
	table-layout: fixed;
	padding-top: 7px;
}


.cs_main .notice_box h3 a,.cs_main .depositor_board h3 a {
	float: right;
	width: 160px;
	height: 15px;
	margin-top: 8px;
}
</style>
</head>
<script type="text/javascript"	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
window.moveTo(0, 10);
function searchId() {
	var url = 'SearchId.jsp?mId=admin_openex';
	$.get(url, function(data) {
		responseText = data;
		$('#result').empty();
		$('#result').append(responseText);
	});
}
function insertId(id) {
	window.opener.form.cManager.value=id;
    window.close();
}
</script>
<body>
<form name="chkfrm" method="post">
	<div class="cs_main" id="MainContents">
		<div class="cs_wrap">
			<div class="cs_contents">
				<div class="notice_box">
					<div class="twrap">
						<h3>ID를 입력해 주세요	</h3>
						<table class="notice_board" cellspacing="0" cellpadding="0"	valign="middle">

							<tbody>
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"></td>

								</tr>
								<tr>
									<td align="center" colspan="2"
										style="height: 10px; overflow: hidden;">ID : <input
										type="text" name="mId"></td>
								</tr>
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"></td>

								</tr>
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"
										align="center"><input type="button" onclick="searchId()" value="확 인"
										style="width: 50px; height: 25px;"> <input
										type="button" onclick="javascript:self.close()" value="취 소" style="width: 50px; height: 25px;">
									</td>
								</tr>
								<tr>
									<td colspan="2" style="height: 10px; overflow: hidden;"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="result" style="float:left; width:450px; height:100px; text-align:center; padding:50px;"></div>
</form>
</body>
</html>