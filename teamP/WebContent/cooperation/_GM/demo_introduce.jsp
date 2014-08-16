<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>

address, article, aside, figcaption, figure, footer, header, nav, section{display:block; margin:0; padding:0;}	
/* Sidebar Navigation */

.sidebar aside nav{display:block; width:100%; margin-bottom:30px;}
.sidebar aside nav ul{margin:0; padding:0; list-style:none;}
.sidebar aside nav li{margin:0 0 3px 0; padding:0;}
.sidebar aside nav a{display:block; margin:0; padding:5px 10px 5px 20px; color:#666666; background-color:inherit; background:url("img/orange_file.gif") no-repeat 10px center; text-decoration:none; border-bottom:1px dotted #666666;}
.sidebar aside nav a:hover{color:#FF9900; background-color:inherit;}
.sidebar aside nav ul ul a{background:url("img/black_file.gif") no-repeat;}
.sidebar aside nav ul ul a{padding-left:40px; background-position:30px center;}
.sidebar aside nav ul ul ul a{padding-left:50px; background-position:40px center;}
.sidebar aside nav ul ul ul ul a{padding-left:60px; background-position:50px center;}
.sidebar aside nav ul ul ul ul ul a{padding-left:70px; background-position:60px center;}
.sidebar aside h2 {
margin-bottom: 10px;
padding-bottom: 8px;
border-bottom: 5px solid #E8E8E8;
}
</style>
<body>
<div id="container" style="width:1250px; margin:auto;">
<div id="sidebar" style="float:left; width:200px; height:500px;margin-top:10px;">
	<div id="sidebar_1" class="sidebar one_third">
      <aside>
        <!-- ########################################################################################## -->
        <h2>GM 소개</h2>
        <nav>
          <ul>
            <li><a href="#">도시형 헬스케어 GM</a></li>
            <li><a href="#">사업 목표</a></li>
            <li><a href="#">향후 계획</a></li>
            <li><a href="#">이용 약관</a></li>
          </ul>
        </nav>
        <!-- /nav -->
	</aside>
 	</div>
</div>
<div id="main" style="float:left; width:970px; margin-top:10px; margin-left:10px; ">
<jsp:include page="introduce.jsp"></jsp:include>
</div>
</div>
</body>
</html>