<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="robots" content="noindex,nofollow"/>
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
<jsp:include page="WIT_Insa_header.jsp"></jsp:include>
<body id="leftmenu">
<div style = "width : 100%; margin : auto;">
	<div class="leftbox" style = "float : left; width : 15%">
		<h1 class="container">
			<span class="float_left" style="width: 148px; font-size: 16px;">근태관리</span>
		</h1>

		<dl class="left_title">

			<dt id="class113">
				<span class="float_left" style="width: 167px"><a
					href="ClockLeft.jsp" id="a119_1"
					>일일근태작성</a></span>
			</dt>

			<dt id="class113">
				<span class="float_left" style="width: 167px"><a
					href="ClkLeftMon.jsp" id="a119_1"
					>월별근태조회</a></span>
			</dt>
			
			<dt id="class113">
				<span class="float_left" style="width: 167px"> <a
					href = "ClockLeftVac.jsp"
					target="body"					
					title="조회/인쇄" onfocus="this.blur();" id="bar117">연월차등록</a></span>
			</dt>			
			
			<dt id="class113">
				<span class="float_left" style="width: 167px"> <a
					href = "ClockLeftEval.jsp"id="a119_1">근무평가</a></span>			</dt>		
		</dl>
		<dl></dl>
	</div>
	<div style = "float : left; width : 80%; margin-left : 30px">
		<jsp:include page="VacIns.jsp" />
	</div>
	</div>
	<form id="form1" name="form1">
		<input type="hidden" id="Sub_Url" name="Sub_Url" /> <input
			type="hidden" id="LeftSubClick" name="LeftSubClick" /> <input
			type="hidden" id="expend" name="expend" />
	</form>
</body>
<jsp:include page="WIT_Insa_footer.jsp"></jsp:include>
</html>

