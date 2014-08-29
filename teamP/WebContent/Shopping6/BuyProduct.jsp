<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="stylesheet" type="text/css" href="product.css" />

</head>
<body>
    <%@ include file = "WIT_Shoppingmall_header.jsp" %>
    
    
    <!-- 왼쪽 날개 배너 -->
    <div id="banner">
        <p><a href="#none"><img src="img/ws_qr_b01.gif" alt="코베아"/></a></p>
        <p><a href="#none"><img src="img/ws_qr_b02.gif" alt="스위스"/></a></p>
        <p><a href="#none"><img src="img/ws_qr_b03.gif" alt="버팔로"/></a></p>
        <p><a href="#none"><img src="img/ws_qr_b04.gif" alt="콜맨"/></a></p>
    </div>
    
    <div id="container">
    	<div id="contents">
            <div class="xans-element- xans-product xans-product-headcategory path "><h3>현재 위치</h3>
				<ol>
					<li class="first"><a href="/">홈</a></li>
        			<li class=""><a href="/product/list.html?cate_no=25">(대분류) Top & Tee</a></li>
        			<li class=""><a href="/product/list.html?cate_no=32">(중분류) Tee & Knit</a></li>
        			<li class=""><strong><a href="/product/list.html?cate_no=37">(소분류) 니트</a></strong></li>
        			<li class=""><strong><a href="/product/list.html?cate_no=41">(상세분류) 프린트 니트</a></strong></li>
    			</ol>
			</div>

			<!-- 상단 제품 정보  -->
			<div class="xans-element- xans-product xans-product-detail "><!-- 이미지 영역 -->
				<div class="xans-element- xans-product xans-product-image imgArea">
					<div class="keyImg "><a href="/product/image_zoom2.html?product_no=13&cate_no=1&display_group=2" alt="P000000M" onclick="window.open(this.href, 'image_zoom2', 'toolbar=no,scrollbars=auto,resizable=yes,width=560,height=710,left=0,top=0', this);return false;"><img src="http://ecudemo2687.cafe24.com/web/product/big/13_shop1_942601.jpg" alt="" class="BigImage "/></a>
        			</div>
					<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
					<div class="xans-element- xans-product xans-product-addimage listImg">
						<ul>
							<li class="xans-record-"><img src="http://ecudemo2687.cafe24.com/web/product/small/13_shop1_942601.jpg"  class="ThumbImage" /></li>
                        </ul>
					</div>
					
					<div class="control ">
           				<span class="prev"><a href="#none" onclick="viewProduct(14);" style="display:;"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_product_prev.gif" alt="이전 제품 보기"/></a></span>
            			<span class="next"><a href="#none" onclick="viewProduct(12);" style="display:;"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_product_next.gif" alt="다음 제품 보기"/></a></span>
            			<a href="/product/image_zoom2.html?product_no=13&cate_no=1&display_group=2" onclick="window.open(this.href, 'image_zoom2', 'toolbar=no,scrollbars=auto,resizable=yes,width=560,height=710,left=0,top=0', this);return false;"><img src="img/ws_btn_product_zoom.gif" alt="크게보기"/></a>
        			</div>
					<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
					<div class="xans-element- xans-product xans-product-action button "><a href="#none" onclick="recommend_mail_pop('13', '1', '2')"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_recommend_email.gif" alt="추천메일보내기"/></a>
						<a href="#none" onclick="" class="displaynone"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_product_request.gif" alt="상품조르기"/></a>
					</div>					
				</div>
				
				<!-- //이미지 영역 -->
				<!-- 상세정보 내역 -->
				<div class="infoArea">
        <h3>[P000000M] 샘플상품 5            <span> <img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"  class="icon_img" alt="추천" /> <img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"  class="icon_img" alt="New" /> </span>
            <span class="displaynone">(해외배송 가능상품)</span>
        </h3>

        <div class="xans-element- xans-product xans-product-detaildesign"><!--
            출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
            count = 10
            -->
<table border="1" summary="">
<caption> 기본 정보</caption>
                <tbody>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:16px;color:#555555;">상품명</span></th>
                        <td><span style="font-size:16px;color:#555555;">샘플상품 5</span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">제조사</span></th>
                        <td><span style="font-size:12px;color:#555555;">자체제작</span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">원산지</span></th>
                        <td><span style="font-size:12px;color:#555555;">국내 </span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">소비자가</span></th>
                        <td><span style="font-size:12px;color:#555555;"><span id="span_product_price_custom">25,000원</span></span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#008BCC;font-weight:bold;">판매가</span></th>
                        <td><span style="font-size:12px;color:#008BCC;font-weight:bold;"><strong id="span_product_price_text">25,000원 </strong><input id="product_price" name="product_price" value="" type="hidden"  /></span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">상품코드</span></th>
                        <td><span style="font-size:12px;color:#555555;">P000000M</span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">수량</span></th>
                        <td><span style="font-size:12px;color:#555555;"><span id='NewProductQuantityDummy' ><span class="quantity"><input id="quantity" name="quantity_name" style="width: 30px;height: 18px;border: 1px solid #BCBCBC;" value="" type="text"  /><img src="http://img.echosting.cafe24.com/design/skin/mono/product/btn_basketUp.gif"  class="QuantityUp" alt="수량증가" /><img src="http://img.echosting.cafe24.com/design/skin/mono/product/btn_basketDown.gif"  class="QuantityDown" alt="수량감소" /></span></span></span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">트렌드</span></th>
                        <td><span style="font-size:12px;color:#555555;">기본트렌드</span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">국내·해외배송</span></th>
                        <td><span style="font-size:12px;color:#555555;">국내배송</span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">배송방법</span></th>
                        <td><span style="font-size:12px;color:#555555;">택배</span></td>
                    </tr>
<tr class=" xans-record-">
<th scope="row"><span style="font-size:12px;color:#555555;">배송비</span></th>
                        <td><span style="font-size:12px;color:#555555;"><div class="delv_price_B"><input id="delivery_cost_prepaid" name="delivery_cost_prepaid" value="P" type="hidden"  />무료</div></span></td>
                    </tr>
</tbody>
</table>
</div>

        <table border="1" summary="">
<caption>SNS 상품홍보</caption>
            <tbody><tr class="">
<th scope="row">SNS 상품홍보</th>
                    <td class="social"><img src="http://img.cafe24.com/images/ec_admin/icon/icon_facebook.gif"  onclick="SnsLinkAction('facebook',13);" alt="" /> <img src="http://img.cafe24.com/images/ec_admin/icon/icon_twitter.gif"  onclick="SnsLinkAction('twitter',13);" alt="" /> <img src="http://img.cafe24.com/images/ec_admin/icon/icon_me2day.gif"  onclick="SnsLinkAction('me2day',13);" alt="" /> <ul class="xans-element- xans-product xans-product-customsns xans-record-"><li></li>
</ul>
</td>
                </tr></tbody>
</table>
<div id="zoom_wrap"></div>

        <p class="displaynone"><img src="http://img.echosting.cafe24.com/design/skin/default/product/txt_naver.gif" alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다."/></p>
        <!-- //상세정보 내역 -->

        <table border="1" summary="">
<caption>상품 옵션</caption>
            <tbody class="xans-element- xans-product xans-product-option xans-record-"><!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. --><!-- //참고 --></tbody>
</table>
<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. --><p class="info ">(최소주문수량 1개 이상<span class="displaynone"> / 최대주문수량 0개 이하</span>)</p>
        <!-- //참고 -->

        <!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
        <!-- //참고 -->

        <!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
        <!-- //참고 -->

        <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
        <div id="totalProducts" class="">
            <p class="info "><img src="http://img.echosting.cafe24.com/design/skin/default/product/ico_information.gif" alt=""/> 수량을 선택해주세요.</p>
            <p class="info displaynone"><img src="http://img.echosting.cafe24.com/design/skin/default/product/ico_information.gif" alt=""/> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p>
            <table border="1" summary="">
<caption>상품 목록</caption>
                <colgroup>
<col style="width:202px;"/>
<col style="width:85px;;"/>
<col style="width:85px;"/>
</colgroup>
<thead><tr>
<th scope="col">상품명</th>
                        <th scope="col">상품수</th>
                        <th scope="col">가격</th>
                    </tr></thead>
<tbody class=""><tr>
<td>샘플상품 5</td>
                        <td>
                            <span class="quantity">
                                <input id="quantity" name="quantity_opt[]" style="" value="1" type="text"  />                                <a href="#none"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" alt="수량증가" class="QuantityUp up"/></a>
                                <a href="#none"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" alt="수량감소" class="QuantityDown down"/></a>
                            </span>
                        </td>
                        <td class="right">
<span class="quantity_price">25000</span> <span class="mileage displaynone">(<img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif"/>  <span class="mileage_price">0</span>)</span>
</td>
                    </tr></tbody>
<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.--><tbody><!-- tr>
                        <td>
                            <p class="product">
                                $상품명<br />
                                <span>$옵션</span>
                            </p>
                        </td>
                        <td>
                            <span class="quantity">
                                <input type="text" class="quantity_opt" />
                                &nbsp;<a href="#none"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
                                <a href="#none"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
                            </span>
                            <a href="#none"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" class="option_box_del" /></a>
                        </td>
                        <td class="right">
                            <span>$가격</span>
                            <span class="mileage">(<img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span>)</span>
                        </td>
                    </tr --></tbody>
<!-- //참고 --><tfoot><tr><td colspan="3">
<strong>총 상품금액</strong>(수량) : <span class="total"><strong><em>0</em></strong> (0개)</span>
                    </td></tr></tfoot>
</table>
</div>
<!-- //참고 -->

        <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
        <div class="xans-element- xans-product xans-product-action "><div class="btnArea">
                <a href="#none" class="first " onclick="product_submit(1, '/exec/front/order/basket/', this)"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_buy_big.gif" alt="바로구매하기"/></a>
                <a href="#none" class="" onclick="product_submit(2, '/exec/front/order/basket/', this)"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_cart_big.gif" alt="장바구니 담기"/></a>
                <span class="displaynone"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_sold_out.gif" alt="SOLD OUT"/></span>
                <a href="#none" onclick="add_wishlist_nologin('/member/login.html');" class=""><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_wish2.gif" alt="관심상품등록"/></a>
            </div>
<!-- 네이버 체크아웃 구매 버튼 -->
<div id="NaverChk_Button"></div>
<!-- //네이버 체크아웃 구매 버튼 -->

                    
</div>
<!-- //참고 -->
    </div>
<div class="eventArea">
        <h3><span>이벤트</span></h3>
        <div class="event"></div>
    </div>
</div>
<!-- //상단 제품 정보 -->

<!-- 쿠폰 다운로드 -->
<!-- //쿠폰 다운로드 -->

<div class="xans-element- xans-product xans-product-additional "><!-- 상품상세정보 -->
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
<div class="cont">
            <h3>상품상세정보</h3>
            <p><span style="font: 12px/normal Gulim; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; float: none; display: inline !important; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">샘플상품 입니다.</span></p>        </div>
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
    
    <%@ include file = "WIT_Shoppingmall_footer.jsp" %>

</body>
</html>