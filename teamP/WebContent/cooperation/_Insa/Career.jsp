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

<title>경력사항등록</title>
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
		$("#CarForm")
				.append(
						"<tr><td class='center'><input class='default' name= 'InDt"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"
								+ "<td class='center'><input class='default' name= 'OutDt"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"
								+ "<td class='center'><input class='default' name= 'ComName"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"														
								+"<td class='center'><input class='default' name= 'Position"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='12'/></td>"								
								+"<td class='center'><input class='default' name= 'Duty"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='60'/></td>"
								+"<td class='center'><input class='default' name= 'Reason"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='60'/></td>	</tr>");
		i++;
		}
	
</script>
</head>
<body>
<form method="post" id="form" action = "CarPro.jsp">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname">호날두</span>]님의 경력사항등록
				</h1>
			</div>

			<div id="contents">
				<div class="help_boxpop H_10px">
					<ul class="bg_gray">
						<li><img src="img/arrowBox.gif" width="13px" height="12px"
							alt="" /> 등록 예 : 입사일자(또는 퇴사일자)가 2000년 1월 1일이라면 등록은 2000-01-01 입니다.</li>
					</ul>
				</div>
				<!--//help_boxpop-->
				
				<table summary="" class="list_input H_2px">
					<col width="8%" />
					<col width="8%" />
					<col width="8%" />
					<col width="8%" />
					<col width="8%" />
					<col width="25%" />
					<col width="" />
					<thead>
						<tr>							
							<th>입사일자</th>
							<th>퇴사일자</th>
							<th>회사명</th>
							<th>직위</th>
							<th>담당업무(부서)</th>
							<th>퇴사사유</th>
						</tr>
					</thead>
					<tbody id="CarForm">

						
					</tbody>
				</table>
				<br /> <br /> <br /> <br />
			<input type="button" class = "btn blue" name="btnAdd" id="btnAdd" value="목록추가" />
			</div>
		</div>
		<div class="footerBG_pop">
			<span class="btn blue"><input type="submit" value="저장(F2)" /></span> <span
				class="btn gray"><input type="button" name="btnClose"
				id="btnClose" value="닫기" onclick="Close()" /></span>
		</div>
	</form>
</body>

</html>