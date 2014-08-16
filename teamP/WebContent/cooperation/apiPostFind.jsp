<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
//	border: 1px solid black;
	font-family: '맑은 고딕';
	width: 400px;
	height: 400px;
	position: relative;
}
header {
	font-size: 14px;
	text-align: center;
	border-bottom: 2px solid black;
}
section {
//	border: 1px solid black;
	font-size: 12px;
	padding-top: 20px;
	height: 100%;
//	text-align: center;
}
article {
//	border: 1px solid black;
	width: 90%;
	margin-left: 5%;
}
input {
	font-family: '맑은 고딕';
}
#subt {
	padding: 10px;
}
#inputArea {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	padding: 8px;
}
#inputText {
	height: 20px;
}
#search {
	height: 30px;
	border-width: 0px;
	background-color: #262626;
	color: #FFF;
//	font-family: '맑은 고딕';
	font-weight: bold;
	border-radius: 5px;
}
#reset {
	height: 30px;
	border-width: 0px;
	background-color: #CCC;
	color: #666;
//	font-family: '맑은 고딕';
	font-weight: bold;
	border-radius: 5px;
}
#close {
	position: absolute;
	top: 0px;
	right: 0%;
	width: 40px;
	height: 40px;
	font-size: 30px;
//	font-weight: 100;
	background-color: #fff;
	border-width: 0px;
}
#dvResult ul {
//	border: 1px solid black;
	list-style: none;
	padding-left: 0px;
}
#dvResult ul div {
	height: 300px;
	overflow: scroll;
}
#dvResult ul li {
	height: 40px; 
	position: relative;
}
#firstList {
	border-top: 1px solid #666;
	background-color: #DBDBDB;
}
.spanZip {
//	border: 1px solid black;
	position: absolute;
	padding-top: 10px;
	width: 80px;
	text-align: center;
	color: black;
}
.spanAddr {
//	border: 1px solid red;
	position: absolute;
	margin-left: 80px;
	padding-top: 10px;
	width: 260px;
	text-align: center;
	color: black;
}
</style>
<script type="text/javascript" src="script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="script/ajax.js"></script>
<script type="text/javascript">
var request;

$(document).ready(function(){
	request = createRequest();

	$('#search').click(function(e) {
		var query = $('#inputText').val()
//		alert(query);
		if (query != "") {
//			alert("request 시작");
			request.onreadystatechange = callback;
			/* request.open("get", "apiPost.jsp?query="+encodeURIComponent(query), true); */
			request.open("get", "apiPost.jsp?query="+query, true);
//			request.open("get", "/ajaxEx01/BrowserTest?query="+query, true);
			request.send();
//			alert("request 종료");
			e.preventDefault();
		}
	});
	
	$('#reset').click(function(e) {
		$('#dvResult').empty();
	});
});

function callback() {
	if(request.readyState == 4) {
		if(request.status == 200) {
//			alert("성공 : 200");
			var xml = request.responseXML;
//			var xml = request.responseText;
//			alert(xml);
//			var items = xml.getElementsByTagName('item');
			var items = $(xml).find('item');
			$('#dvResult').empty();
//			$('#dvResult').before("검색결과 중 해당 주소를 클릭하면 자동 입력됩니다.");
			$('#dvResult').append("검색결과 중 해당 주소를 클릭하면 자동 입력됩니다.");
			$('#dvResult').append("<ul></ul>");
			$('#dvResult ul').append("<li id='firstList'><span class='spanZip'>우편번호</span><span class='spanAddr'>주소</span></li>");
			$('#dvResult ul').append("<div></div>");
//			alert("items length : "+items.length);
			for (var i=0; i<items.length; i++) {
				var postcd = $(items[i]).find('postcd').text();
				var zipcode = postcd.substr(0, 3)+"-"+postcd.substr(3, 3);
				var address = $(items[i]).find('address').text();
				$('#dvResult ul div').append("<li><a href='javascript:inputAddr("+i+")' id='"+i+"'><span class='spanZip'>"+zipcode+"</span><span class='spanAddr'>"+address+"</span></a></li>");
			//	"javascript:inputAddr('"+zipcode+"', '"+address+"')"
				$('#dvResult ul a[id='+i+']').attr("href", "javascript:inputAddr('"+zipcode+"', '"+address+"')");
			}
//			alert("pause");
		}
	}
}
function inputAddr(zipcode, address) {
//	alert(zipcode);
//	window.opener.document.formJoin.zip1.value=zipcode;
	var zip1 = zipcode.substr(0, 3);
	var zip2 = zipcode.substr(4, 3);
	opener.$('#post1').val(zip1);
	opener.$('#post2').val(zip2);
	opener.$('#addr1').val(address);
	window.close();
	opener.$('#addr2').focus();
}
function windowClose() {
	window.close();
}
</script>
</head>

<body>
<header>
	<h1>우편번호 찾기</h1>
	<input type="button" id="close" value="X" onclick="windowClose()">
</header>

<section>
	<article>
	<p>찾고 싶으신 주소의 동(읍/면)이름을 입력해 주세요.</p>
	<div id="inputArea">
	<form action="#">
	<label id="subt">동(읍/면)</label> <input type="text" id="inputText" placeholder="예) 가좌1동" title="공백 없이 입력해 주세요" required> <input type="submit" value="검색" id="search"> <input type="reset" value="초기화" id="reset">
	</form>
	</div>
	<br><br>
	<div id="dvResult">
		<!-- <ul>
			<li id="firstList"><span class="spanZip">우편번호</span><span class="spanAddr">주소</span></li>
		</ul> -->
	</div>
	</article>
</section>
</body>

</html>