<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	request.setCharacterEncoding("utf-8");
%>   
<%
	String prdCode = request.getParameter("prd_code");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="stylesheet" type="text/css" href="product.css" />
<link href="css/jquery-ui.css" rel="stylesheet"/>

<script src="scripts/jquery.js"></script>
<script type="text/javascript" src="common.js"></script>


<script type="text/javascript" src="ws_main.js"></script>
<script type="text/javascript" src="scripts/11stMenu.js"></script>
<script type="text/javascript" src="scripts/jQBanner.js"></script>
<script type="text/javascript" src="scripts/floatBanner.js"></script>
<script type="text/javascript" src="scripts/jquery-ui.js"></script>
<script type="text/javascript" src="scripts/jquery.form.js"></script>


<style type="text/css">

.vMainMenu {width:800px; margin: 0 auto;}
.vMainMenu ul {list-style:none;}
.vMainMenu li{float: left; border-right:2px solid gray; padding:0 10px; font-family:'맑은 고딕',돋움; font-size:13px;}
.vMainMenu li:nth-last-child(1){border-right:0;}
.vMainMenu li:hover{background:#ABF200;cursor:pointer;}
.navigateWrap {width:100%;}
.navigateWrap div.gnb_inner_wrap2 {display: none;position: absolute;top: 10px;left: 210px;width: 197px;height: 396px;padding: 0px;	z-index:1;border: 1px solid #EA0001;background: none repeat scroll 0% 0% #FFF;}
.gnb_menu3 .grouping {float:left; width: 179px; padding: 10px;}
.gnb_menu3 .grouping h3{font-family: '맑은 고딕'; font-size: 14px; text-align:left;height:30px;}
.gnb_menu3 .banner{position:absolute;z-index:1;height:100%;top:-1px;right:-302px;width:300px;border:1px solid #ea0001;border-left:1px solid #e4e4e4;background:#fff;overflow:hidden;}
.navigateWrap .gnb_menu3 > ul > li {height:0;}

</style>

<script type="text/javascript">
$(document).ready(function(){ 
	var mem_loginID=null;
	
	var product_price;
    $('#quick').floatBanner();
    
    
    makeProductInfo();
    
    $('img.QuantityUp').click(function() {

		$('input#quantity').val(parseInt($('input#quantity').val( )) +1 ); 	 
		$('input#quantity').trigger('change');
    });
    
    $('img.QuantityDown').click(function() {
		if($('input#quantity').val( )>1) {
			$('input#quantity').val(parseInt($('input#quantity').val( )) -1 ); 	    
		}
		$('input#quantity').trigger('change');
    });
    
    $('input#quantity').change(function() {

    	var total = product_price * parseInt($('input#quantity').val());
    	$('span.total em').text(total );
    });
    
    $( "#dialog_1stlogin" ).dialog({								// 구매자 로그인 다이얼로그
		autoOpen: false,
		width: 400,		
		buttons: [
			{
				text: "Ok",
				click: function() {
					var mem_id = $('input#sel_1stloginId').val();
					var mem_pwd = $('input#sel_1stloginPwd').val();
					if(mem_id == "" || mem_pwd == "") {
						$(this).append('<p>올바른 입력이 아닙니다.</p>');
					}
					else{
						$.post('IsValidMember.do', {'mem_id': mem_id, 'mem_pwd': mem_pwd }, function(data) {
							if(data=="0") {
								$("div#dialog_1stlogin").append('<p>ID나 패스워드가 올바르지 않습니다.</p>');							
							}
							else{ 
								$( "#dialog_1stlogin" ).dialog("close" );
								
							}
						});					
					}
				}
			},
			{
				text: "Cancel",
				click: function() {
					$('div#sellerHeaderMenu img').attr('src', 'images/system/ws_top_log01_sel2.png');
					$('div#sellerHeaderMenu').show();
					$( this ).dialog( "close" );
				}
			}
		]
	});
    
    $('a#buyStep2').click(function( event ) {		// 구매하기 버튼 클릭 이벤트 핸들러
		$( "#dialog_1stlogin" ).dialog( "open" );
		return false;
	});
    
    
    
    
    
    function makeProductInfo() {
    	$('div.infoArea h3').text($('input#prd_code').val());
    	$.post('GetProductInfo.do', {"prd_code":$('input#prd_code').val()}, function(data){

			var elem = eval("(" + data + ")");

			$('div.infoArea h3').text(elem.prd_name);
			
			if(elem.prd_modelNo!=null) {
				$('<tr><th>모델 번호</th><td>'+elem.prd_modelNo+'</td></tr>').appendTo($('table.prdDetail tbody'));
			}
			
			$('<tr><th>상품 코드</th><td>'+elem.prd_code+'</td></tr>').appendTo($('table.prdDetail tbody'));
			
			$('<tr><th>판매자 ID</th><td>'+elem.prd_sellerID+'</td></tr>').appendTo($('table.prdDetail tbody'));
			
			$('<tr><th>상품 대분류</th><td id="mainCate"></td></tr>').appendTo($('table.prdDetail tbody'));
			$.post('GetMainCate.do', {"prd_mainCate":elem.prd_mainCate}, function(data){
				$('td#mainCate').text(data);			
			});
			
			$('<tr><th>상품 소분류</th><td id="subCate"></td></tr>').appendTo($('table.prdDetail tbody'));
			$.post('GetSubCate.do', {"prd_mainCate":elem.prd_mainCate, "prd_subCate":elem.prd_subCate }, function(data){
				$('td#subCate').text(data);				
			});
			
			if(elem.prd_maker!=null) {
				$('<tr><th>제조사</th><td>'+elem.prd_maker+'</td></tr>').appendTo($('table.prdDetail tbody'));
			}
			
			$('<tr><th>제조국</th><td id="nation"></td></tr>').appendTo($('table.prdDetail tbody'));
			$.post('GetNation.do', {"prd_nation":elem.prd_nation }, function(data){
				$('td#nation').text(data);				
			});
			
			product_price = elem.prd_price;
			$('<tr><th>가격</th><td>'+elem.prd_price+' 원</td></tr>').appendTo($('table.prdDetail tbody'));
			
			
			if(elem.prd_buyMin!=null) {
				$('<tr><th>최소 구매수량</th><td>'+elem.prd_buyMin+' 개</td></tr>').appendTo($('table.prdDetail tbody'));
			}
			
			if(elem.prd_buyMax!=null) {
				$('<tr><th>최대 구매수량</th><td>'+elem.prd_buyMax+' 개</td></tr>').appendTo($('table.prdDetail tbody'));
			}
			
			if(elem.prd_remain!=null) {
				$('<tr><th>현재 재고수량</th><td>'+elem.prd_remain+' 개</td></tr>').appendTo($('table.prdDetail tbody'));
			}
			
			$('div.mainImg').append('<img src="upload/'+ elem.prd_mainImg+'" style="width:365px;" />');
			$('li#miniImg1').append('<img src="upload/'+ elem.prd_mainImg+'"  />');

			$('span.total em').text(elem.prd_price);
			
			$('div#detailImg').append('<img style="width:730px;" src="upload/'+ elem.prd_detailImg+'"  />');
		});    	
    } 
    
    
    
});




</script>

<title>Wit Shopping Mall</title>

</head>

<body class="body01">

<div id="wrap">

    <div id="header">
    	<h1 class="xans-element- xans-layout xans-layout-logotop ">
        	<a href="#"><img src="images/system/witmall_logo.png" alt="기본 쇼핑몰"/></a>
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
	
	<hr/>
	
	<div class="navigateWrap">
	<div class="vMainMenu">
	<ul>
		<li>카테고리 전체</li>
		<li>여성의류</li>
		<li>남성의류</li>
		<li>유아동</li>
		<li>잡화/슈즈</li>
		<li>스포츠/레저</li>
		<li>가전/컴퓨터</li>
		<li>주방/생활</li>
		<li>식품</li>
		<li>티켓/여행</li>
	</ul>
	<script>

	var el="";
	el += 	'		<div id="gnbMenu3" class="gnb_menu3">';
//	el += 	'			<h2>주메뉴</h2>';
	el += 	'			<ul>';
	
	for(var i=0; i<9; i++) {
		el += 	'			<li >';
		el += 	'				<div class="gnb_inner_wrap2" id="gnb_cate_layer'+i+'">';
		el += 	'				</div>';
		el += 	'			</li>';
	}	
	
	el += 	'			</ul>';
	el += 	'		</div>';
	document.write(el);
	
		MainContainerWs.makeWs.makeSubMenu();

		
		$('.vMainMenu li').each(function(idx) {		
			var $li = $(this);						
			$li.hover(function(){
				$("#gnb_cate_layer"+idx).show();
			},function(){
				$("#gnb_cate_layer"+idx).hide();
			});
		});

	</script>
	</div>
	</div>
	
	<hr class="layout"/>
    
    <div id="container">
	    <div id="contents">
  

			<!-- 상단 제품 정보  -->
			<div class="xans-element- xans-product xans-product-detail "><!-- 이미지 영역 -->
				<div class="xans-element- xans-product xans-product-image imgArea">
					<div class="mainImg ">		<!-- 상품  메인 이미지 자리 -->
        			</div>
					<div class="xans-element- xans-product xans-product-addimage listImg">
						<ul>
							<li class="xans-record-" id="miniImg1"></li>
                        </ul>
					</div>
					
					<div class="control ">
           				<span class="prev"><a href="#none" onclick="viewProduct(14);" style="display:;"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_product_prev.gif" alt="이전 제품 보기"/></a></span>
            			<span class="next"><a href="#none" onclick="viewProduct(12);" style="display:;"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_product_next.gif" alt="다음 제품 보기"/></a></span>
            			<a href="/product/image_zoom2.html?product_no=13&cate_no=1&display_group=2" onclick="window.open(this.href, 'image_zoom2', 'toolbar=no,scrollbars=auto,resizable=yes,width=560,height=710,left=0,top=0', this);return false;"><img src="img/ws_btn_product_zoom.gif" alt="크게보기"/></a>
        			</div>
										
				</div>
				
				<!-- //이미지 영역 -->
				<!-- 상세정보 내역 -->
				<div class="infoArea">
        <h3><span> <img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"  class="icon_img" alt="추천" /> <img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"  class="icon_img" alt="New" /> </span>
            <span class="displaynone">(해외배송 가능상품)</span>
        </h3>





<div class="xans-element- xans-product xans-product-detaildesign">
            
	<table class="prdDetail">
		<tbody>
		</tbody>
	</table>

</div>



<table border="1" summary="">
<caption>상품 옵션</caption>
<tbody class="xans-element- xans-product xans-product-option xans-record-">
</tbody>
</table>



<div id="totalProducts" class="">
	<p class="info "><img src="images/system/ws_ico_information.gif" alt=""/> 수량을 선택해주세요.</p>
    <table border="1" summary="">
		<caption>상품 목록</caption>
    	<colgroup>
			<col style="width:170px;"/>
			<col style="width:85px;;"/>
			<col />
		</colgroup>
		
		<thead>
			<tr>
			<th scope="col">상품명</th>
        	<th scope="col">상품수</th>
        	<th scope="col">가격</th>
        	</tr>
        </thead>
		
		<tbody class="">
			<tr>
			<td></td>
    		<td>
    		<span class="quantity">
    		<input id="quantity" name="quantity"  value="1" type="text"  />                                
    		<a href="#none"><img src="images/system/ws_btn_count_up.gif" alt="수량증가" class="QuantityUp up"/></a>
    		<a href="#none"><img src="images/system/ws_btn_count_down.gif" alt="수량감소" class="QuantityDown down"/></a>
    		</span>
    		</td>
			<td class="right">
			<span class="quantity_price"></span> <span class="mileage displaynone">(<img src="images/system/ws_ico_product_point.gif"/>  <span class="mileage_price">0</span>)</span>
			</td>
    		</tr>
    	</tbody>
	
		<tfoot>
		<tr>
		<td colspan="3">
		<strong>총 상품금액</strong> : <span class="total"><strong><em></em></strong>원</span>
		</td></tr></tfoot>
	</table>
</div>

        <div class="xans-element- xans-product xans-product-action "><div class="btnArea">
                <a href="#none" id="buyStep2" onclick="product_submit(1, '/exec/front/order/basket/', this)"><img src="images/system/ws_btn_buy_big.gif" alt="바로구매하기"/></a>
                <a href="#none" class=""><img src="images/system/ws_btn_cart_big.gif" alt="장바구니 담기"/></a>
                <a href="#none" class=""><img src="images/system/ws_btn_wish2.gif" alt="관심상품등록"/></a>
        </div>
                   
</div>

</div>


</div>
<!-- end of 상단 제품 메인 정보 -->


<!---------------------------------------- 상품상세정보 -------------------------------------->

<div class="xans-element- xans-product xans-product-additional ">
<div id="prdDetail">
        <ul class="link">
<li class="selected"><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="cont" id="detailImg">
            <h3>상품상세정보</h3>
                   
    </div>
    </div>
<!-- //상품상세정보 -->
<!-- 상품결제정보 -->
<div id="prdPayment">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li class="selected"><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="cont">
            <h3>상품결제정보</h3>
            고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인 명의의 주문등
      정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다. &nbsp; <br>
      <br>
      무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다. &nbsp;<br>
      주문시 입력한&nbsp;입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며&nbsp;입금되지
      않은 주문은 자동취소 됩니다. <br>
        </div>
    </div>
<!-- //상품결제정보 -->
<!-- 배송정보 -->
<div id="prdDelivery">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li class="selected"><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="cont">
            <h3>배송정보</h3>
            <ul class="delivery">
<li>배송 방법 : 택배</li>
                <li>배송 지역 : 전국지역</li>
                <li>배송 비용 : 무료</li>
                <li>배송 기간 : 3일 ~ 7일</li>
                <li>배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.<br>
    고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.<br>
</li>
            </ul>
</div>
    </div>
<!-- //배송정보 -->
<!-- 교환 및 반품정보 -->
<div id="prdChange">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li class="selected"><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="cont">
            <h3>교환 및 반품정보</h3>
            <b>교환 및 반품이 가능한 경우</b><br>
- 상품을 공급 받으신 날로부터 7일이내 단, 가전제품의<br>
&nbsp;&nbsp;경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.<br>
- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과<br>
&nbsp;&nbsp;다르거나 다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내<br>
<br>

<b>교환 및 반품이 불가능한 경우</b><br>
- 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단, 상품의 내용을 확인하기 위하여<br>
&nbsp;&nbsp;포장 등을 훼손한 경우는 제외<br>
- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우<br>
&nbsp;&nbsp;(예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에<br>
&nbsp;&nbsp;따른 반품/교환은 제조사 기준에 따릅니다.)<br>
- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을 <br>
&nbsp;&nbsp;제공한 경우에 한 합니다.<br>
- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우<br>
- 복제가 가능한 상품등의 포장을 훼손한 경우<br>
&nbsp;&nbsp;(자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)<br>
<br>
※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.<br>
&nbsp;&nbsp;(색상 교환, 사이즈 교환 등 포함)<br>
        </div>
    </div>
<!-- //교환 및 반품정보 -->
<!-- 서비스문의 -->
<div id="prdService">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li class="selected"><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="cont">
            <h3>서비스문의</h3>
                    </div>
    </div>
<!-- //서비스문의 -->
<!-- 상품사용후기 -->
<div id="prdReview">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li class="selected"><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="board">
            <h3>상품사용후기</h3>
            <p class="desc">상품의 사용후기를 적어주세요.</p>

            <p class="nodata">게시물이 없습니다</p>
            <p class="btnArea">
                <a href="/board/product/write.html?board_no=4&product_no=13&cate_no=1&display_group=2"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_board_write1.gif" alt="상품문의하기"/></a>
                <a href="/board/product/list.html?board_no=4&link_product_no=13"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_board_more.gif" alt="모두 보기"/></a>
            </p>

                    </div>
    </div>
<!-- //상품사용후기 -->
<!-- 상품 Q&A -->
<div id="prdQnA">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li class="selected"><a href="#prdQnA">상품Q&amp;A</a></li>
            <li><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="board">
            <h3>상품 Q&amp;A</h3>
            <p class="desc">상품에 대해 궁금한 점을 해결해 드립니다.</p>

            <p class="nodata">게시물이 없습니다</p>
            <p class="btnArea">
                <a href="/board/product/write.html?board_no=6&product_no=13&cate_no=1&display_group=2"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_board_write2.gif" alt="상품문의하기"/></a>
                <a href="/board/product/list.html?board_no=6&link_product_no=13"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_board_more.gif" alt="모두 보기"/></a>
            </p>

                    </div>
    </div>
<!-- //상품Q&A -->
<!-- 관련상품 -->
<div id="prdRelated">
        <ul class="link">
<li><a href="#prdDetail">상품상세정보</a></li>
            <li><a href="#prdPayment">상품결제정보</a></li>
            <li><a href="#prdDelivery">배송정보</a></li>
            <li><a href="#prdChange">교환 및 반품정보</a></li>
            <li><a href="#prdService">서비스문의</a></li>
            <li><a href="#prdReview">상품사용후기</a></li>
            <li><a href="#prdQnA">상품Q&amp;A</a></li>
            <li class="selected"><a href="#prdRelated">관련상품</a></li>
        </ul>
<div class="relation">
            <h3>관련상품</h3>

                    </div>
    </div>
<!-- //관련상품 -->
</div>

        </div>
    
    </div>    

	

	<hr class="layout"/>
    <div id="footer">
    	<script>
			document.write(FooterWs.makeFooter());
		</script> 
          
    </div>
    
    <script>
		document.write(HeaderWs.makeWs.makeRightWingMenu());
	</script>
	
    
    <form>
    	<input type="hidden" name="prd_code" id="prd_code" value="<%=prdCode%>"/>
    </form>
 	
	<div id="dialog_1stlogin" title="구매자 로그인">
		<p>ID와 패스워드를 입력하세요</p><hr/>
		<label >ID :</label><br/>
		<input type="text" id="sel_1stloginId" size="50" maxlength="50"></input>
		<hr/>	
		<label >패스워드 :</label><br/>
		<input type="text" id="sel_1stloginPwd" size="50" maxlength="255"></input>	
	</div>

</div>

	
    
   
    
</body>
</html>