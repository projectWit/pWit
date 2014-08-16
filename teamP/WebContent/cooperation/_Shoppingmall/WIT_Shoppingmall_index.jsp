<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
<link rel="stylesheet" type="text/css" href="main.css" />

<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="jquery-contained-sticky-scroll.js"></script>
<script type="text/javascript" src="common.js"></script>
<script type="text/javascript" src="ws_main.js"></script>



<script type="text/javascript">
jQuery(document).ready(function(){
	jQuery('#quick').containedStickyScroll();
});

</script>



<title>Wit - Shopping Mall</title>




</head>

<body class="body01">

	<script>
		document.write(HeaderWs.makeWs.makeRightWingMenu());
	</script>

<div id="wrap">
    <div id="header">
    	<h1 class="xans-element- xans-layout xans-layout-logotop ">
        	<a href="#"><img src="img/ws_top.jpg" alt="기본 쇼핑몰"/></a>
		</h1>
		
       	<div class="inner">
       		<script>
				document.write(HeaderWs.makeWs.makeHeaderMenu1());
			</script>
			<div class="link">
                <img src="img/ws_top_banner01.gif" alt="배너"/>
            </div>    
            <script>
				document.write(HeaderWs.makeWs.makeSearchMenu());
			</script>   	
       	</div>       	
    
    	<div class="inner2">
		<script>
			document.write(HeaderWs.makeWs.makeHeaderMenu2());
		</script>
		</div>
	</div>
	
	
	
	
	<hr class="layout"/>
    
    <div id="container">
	    <div id="snb">
	    	<script>
				document.write(MainContainerWs.makeWs.makeMainMenu());
			</script>	    
			
			<script>
				document.write(MainContainerWs.makeWs.makeLeftBanner());
			</script>			
	    </div>
	    
	 	<div class="main">
        	<div id="kvMain">
        		<script>
					document.write(MainContainerWs.makeWs.makeMainBanner());
				</script>	        	
        	</div>
        	
        	<script>
				document.write(MainContainerWs.makeWs.makeMainBanner2());
			</script>	
			
			<script>
				document.write(MainContainerWs.makeWs.makeMainBanner3());
			</script>	       	
        	
        </div>
    
    </div>    
    
    <!-- 이벤트 상품 -->
    <script>
		document.write(MainContainerWs.makeWs.makeEventBanner());
	</script>
	
	<!-- 흘러가는 디스플레이 배너 -->
	<script>
		document.write(MainContainerWs.makeWs.makeSlideBanner());
	</script>
	

	<hr class="layout"/>
    <div id="footer">
    	<script>
			document.write(FooterWs.makeFooter());
		</script> 
          
    </div>
    

	
	
	

</div>

</body>
</html>

