<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<script type="text/javascript"
	src="/teamP/cooperation/script/jquery-2.1.1.js"></script>

<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />

<title>외국어등록</title>
<script type="text/javascript">
	function Close() {
		window.close();
	}
	
	var i = 0;
	$(function() {
		// events
		$("#btnAdd").click(AddRow);
	});		
	// 삭제
	 function deleteRow(obj){
		  $(obj).parent().remove();
		 } 

	function AddRow() {
		$("#LanForm")
				.append(
						"<tr><td class='center'><select id='LanType"+i+"' name='LanType" + i + "' style='width: 80px'></select></td>"
								+ "<td class='center'><select id='LanRead"+i+"' name='LanRead" + i + "'></select></td>"
								+ "<td class='center'><select id='LanWrite"+i+"' name='LanWrite" + i + "'></select></td>"
								+ "<td class='center'><select id='LanSpeak"+i+"' name='LanSpeak" + i + "'></select></td>"
								+"<td class='center'><input class='default' name= 'LanQual"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='10'/></td>"
								+"<td class='center'><input class='default' name= 'LanEtc"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='10'/></td></tr>");
	
		
		var url1 = 'LanType.jsp';
		$.get(url1, function(data) {
			responseText = data;
			$('#LanType' + (i-1)).append(responseText);
		});

		var url2 = 'LanRead.jsp';
		$.get(url2, function(data) {
			responseText = data;
			$('#LanRead'  + (i-1)).append(responseText);
		});
	
	 	var url3 = 'LanWrite.jsp';
		$.get(url3, function(data) {
			responseText = data;
			$('#LanWrite'  + (i-1)).append(responseText);
		});

		var url4 = 'LanSpeak.jsp';
		$.get(url4, function(data) {
			responseText = data;
			$('#LanSpeak'  + (i-1)).append(responseText);
		});
		i++;
	}
		
	
</script>
</head>
<body>
	<form method="post" id="form1" action = "LanPro.jsp">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> <span
						id="lblEmpKname">[호날두</span>]님의 어학능력등록
				</h1>
			</div>

			<div id="contents">


				<table summary="" class="list_input">
					<col width="3%" />
					<col width="10%" />
					<col width="17%" />
					<col width="17%" />
					<col width="17%" />
					<col width="" />
					<thead>
						<tr>
							<th>외국어명</th>
							<th>독해</th>
							<th>작 문</th>
							<th>회 화</th>
							<th>자 격 증</th>
							<th>특이사항</th>
						</tr>
					</thead>
					<tbody id="LanForm">
						

					</tbody>
				</table>

				<br /> <br /> <br /> <br />
			<input type="button" class = "btn blue" name="btnAdd" id="btnAdd" value="목록추가" />
			</div>
		</div>
		<div class="footerBG_pop">
			<span class="btn blue"><input type="submit" name="btnNew"
				id="btnNew" onclick="PopUpNew();" value="저장(F2)" /></span> <span
				class="btn gray"><input type="button" name="btnClose"
				id="btnClose" value="닫기" onclick="Close()" /></span>
		</div>

	</form>
</body>
</html>
