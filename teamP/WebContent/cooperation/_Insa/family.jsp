<%@page import="java.util.List"%> 
<%@page import="com.wit.member.Employee"%>
<%@page import="mem.wit.Insa.InsaDTO"%>
<%@page import="mem.wit.Insa.InsaDAO"%>
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

<title>가족사항 등록</title>


<script type="text/javascript">
	function Close() {
		window.close();
	}
</script>
<script type="text/javascript">
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
		$("#dvForm")
				.append(
						"<tr><td class='center'><input class='default' name='fJumin1"
								+ i
								+ "' style='width: 40%;' type='text'"
								+ "maxlength='6' /> - <input class='default' name='fJumin2"
								+ i
								+ "'style='width: 40%;' type='text'"
								+ "maxlength='7' /></td>"
								+ "<td class='center'><input class='default' name='fName"
								+ i
								+ "'style = 'width: 88%;' type='text' maxlength='50'"
								+ "/></td>"
								+ "<td class='center'><input class='default' name='fRelation"
								+ i
								+ "' style='width: 88%;' type='text' /></td>"
								+ "<td class='center'><input class='default' name='fFinGrad"
								+ i
								+ "' style='width: 90%;' type='text' /></td>"
								+ "<td class='center'><input class='default' name= 'fJob"
								+ i
								+ "' style='width: 90%;' type='text' maxlength='20' /></td>"
								+ "<td class='center'><input class='default' name= 'fCompany"
								+ i
								+ "' style='width: 88%;' type='text' maxlength='10'/></td>"
								+ "<td class='center'><select id='fhtcd"+i+"' name='fhtcd" + i + "' style='width: 50px;'></select></td>"
								+ "<td class='center'><select id='frtcd"+i+"' name='rtcd" + i + "' style='width: 50px;'></select></td></tr>");
								/*+ "<td class = 'center' onclick = 'deleteRow(this)' style = 'cursor : pointer'>삭제</td></tr>"*/
		var url1 = 'fhtCd.jsp';
		$.get(url1, function(data) {
			responseText = data;
			$("#fhtcd" + (i - 1)).append(responseText);
		});

		var url2 = 'frtCd.jsp';
		$.get(url2, function(data) {
			responseText = data;
			$("#frtcd" + (i - 1)).append(responseText);
		});
		i++;
	}
</script>
<%
InsaDAO dao = new InsaDAO();
InsaDTO dto = new InsaDTO();
Employee employee = (Employee) session.getAttribute("employee");
List dtoL = dao.insaSelect(employee.geteId());
dto = (InsaDTO) dtoL.get(0);
%>


</head>
<body>
	<form method="post" id="form1" action="FamPro.jsp">
		<div id="wrap_pop">
			<div id="title">
				<h1>
					<img src="img/titleBar.gif" width="8px" height="9px" alt="" /> [<span
						id="lblEmpKname"><%=dto.geteKName()%></span>]님의 가족사항등록
				</h1>
			</div>

			<div id="contents">

				<table summary="" class="list_input">
					<col width="10%" />
					<col width="10%" />
					<col width="12%" />
					<col width="12%" />
					<col width="15%" />
					<col width="9%" />
					<col width="5%" />
					<col width="5%" />
					<thead>
						<tr>
							<th>주민등록번호</th>
							<th>성명</th>
							<th>관 계</th>
							<th>최종학력</th>
							<th>직 업</th>
							<th>회사명</th>
							<th>동거여부</th>
							<th>부양여부</th>
							<!-- <th>삭제</th>-->
						</tr>
					</thead>
					<tbody id="dvForm">

					</tbody>
				</table>
				<br /> <br /> <br /> <br />
				<input type="button" class = "btn blue" name="btnAdd" id="btnAdd" value="가족추가" />
			</div>
		</div>		


		<div class="footerBG_pop">
			<span class="btn blue"><input type="submit" name="btnNew"
				id="btnAdd" value="저장(F2)" /></span> <span class="btn gray"><input
				type="button" name="btnClose" id="btnClose" value="닫기"
				onclick="Close()" /></span>
		</div>
	</form>
</body>
</html>