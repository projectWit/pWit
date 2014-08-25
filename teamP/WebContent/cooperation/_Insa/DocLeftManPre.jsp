<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
</head>
<jsp:include page="WIT_InsaMan_header.jsp"></jsp:include>
<body id="leftmenu">
<div style = "width : 100%; margin : auto;">
	<div class="leftbox" style = "float : left; width : 15%">
		<h1 class="container">
			<span class="float_left" style="width: 148px; font-size: 16px;">증명서서식</span>
		</h1>

		<dl class="left_title">

			<dt id="class113">
				<span class="float_left" style="width: 167px"><a
					href="DocLeftManPre.jsp" id="a119_1" title="기타코드등록">재직증명서</a></span>
			</dt>

			<dt id="class113">
				<span class="float_left" style="width: 167px"><a href="DocLeftManCar.jsp"
					id="a119_1" title="부서코드등록">경력증명서</a></span>
			</dt>

			<dt id="class113">
				<span class="float_left" style="width: 167px"><a href="DocLeftManTrip.jsp"
					id="a119_1" title="부서코드등록">출장증명서</a></span>
			</dt>

			<dt id="class113">
				<span class="float_left" style="width: 167px"><a href="DocLeftManOut.jsp"
					id="a119_1" title="부서코드등록">퇴직증명서</a></span>
			</dt>


			<!-- if (ds != null && ds.Tables[0].Rows.Count > 0) -->
		</dl>
		<dl></dl>
		</div>
		<div style="float: left; width: 80%; margin-left: 30px">
			<jsp:include page="DocPreIns.jsp" />
		</div>
	</div>
</body>
</html>

