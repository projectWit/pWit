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

<title>학력사항등록</title>

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
		$("#SchForm")
				.append(
						"<tr><td class='center'><select id='SchCd"+i+"' name='SchCd" + i + "' style='width: 90px'></select></td>"
								+ "<td class='center'><input class='default' name= 'SchoolName"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='30'/></td>"
								+ "<td class='center'><input class='default' name= 'SDate"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"
								+ "<td class='center'><input class='default' name= 'EDate"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"
								+"<td class='center'><select id='DNType"+i+"' name='DNType" + i + "' style='width: 50px'></select></td>"								
								+"<td class='center'><input class='default' name= 'SMajor"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"
								+"<td class='center'><select id='SLocal"+i+"' name='SLocal" + i + "' style='width: 50px'></select></td>"
								+"<td class='center'><input class='default' name= 'Etc"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='60'/></td>"
								+"<td class='center'><select id='SGradCd"+i+"' name='SGradCd" + i + "' style='width: 50px'></select></td></tr>");
	
		var url1 = 'SchCd.jsp';
		$.get(url1, function(data) {
			responseText = data;
			$('#SchCd' + (i-1)).append(responseText);		
	});
		
	var url2 = 'DNType.jsp';
		$.get(url2, function(data) {
			responseText = data;
			$('#DNType' + (i-1)).append(responseText);
		});

		var url3 = 'SLocalCd.jsp';
		$.get(url3, function(data) {
			responseText = data;
			$('#SLocal' + (i-1)).append(responseText);
		});

		var url4 = 'SGradCd.jsp';
		$.get(url4, function(data) {
			responseText = data;
			$('#SGradCd' + (i-1)).append(responseText);
		});
		i++;
	}
</script>
</head>
<body>
	<form method="post" id="frm" action = "SchPro.jsp">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">호날두</span>]님의 학력사항등록
				</h1>
			</div>

			<div id="contents">
				<div class="help_boxpop H_10px">
					<ul class="bg_gray">
						<li><img src="img/arrowBox.gif" width="13px" height="12px"
							alt="" /> 학력사항을 등록합니다. 일자는 yyyy-mm-dd 형식으로 입력합니다. (예. 2007-08-05)</li>
					</ul>
				</div>
				<!--//help_boxpop-->				

				<table id="tbInputList" summary="" class="list_input">
					<col width="3%" />
					<col width="14%" />
					<col width="13%" />
					<col width="10%" />
					<col width="10%" />
					<col width="8%" />
					<col width="12%" />
					<col width="10%" />
					<col width="10%" />
					<col width="" />
					<thead>
						<tr>
							
							<th>학력</th>
							<th>학교명</th>
							<th>입학일자</th>
							<th>졸업일자</th>
							<th>주야구분</th>
							<th>전공명</th>
							<th>소재지</th>
							<th>기 타</th>
							<th>졸업구분</th>
						</tr>
					</thead>
					<tbody id="SchForm">

					</tbody>
				</table>
				
				<br />
				<br /> <br /> <br />
			<input type="button" class = "btn blue" name="btnAdd" id="btnAdd" value="목록추가" />
			</div>
			<!--//contents-->
		</div>
		<div class="footerBG_pop">
				<span class="btn blue"><input type="submit" name="btnNew"
					id="btnNew" value="저장(F2)" /></span> <span
					class="btn gray"><input type="button" name="btnClose"
					id="btnClose" value="닫기" onclick = "Close()" /></span>
		</div>
	</form>
</body>
</html>