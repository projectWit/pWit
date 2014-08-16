<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">


<link rel="stylesheet" type="text/css" href="main.css" />

<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="jquery-contained-sticky-scroll.js"></script>
<script type="text/javascript" src="common.js"></script>


<script type="text/javascript">
jQuery(document).ready(function(){
	jQuery('#quick').containedStickyScroll();
});

</script>


	
    <!--  오른쪽 날개 메뉴  -->
	<div id="quick">
        <div><img src="img/ws_quick_naver.gif" alt="네이버"/></div>
        <div><a href="/board/free/list.html?board_no=4"><img src="img/ws_quick_review.gif" alt="리뷰이벤트"/></a></div>
        <div class="xans-element- xans-layout xans-layout-orderbasketcount "><p><strong>장바구니</strong> <span><a href="/order/basket.html">0</a>개</span></p></div>
        <div class="xans-element- xans-layout xans-layout-productrecent"><h2><a href="/product/recent_view_product.html">최근본상품</a></h2>
			<ul>
			<li class="displaynone xans-record-">
            	<a href="/product/detail.html##param##"><img src="about:blank" alt=""/><span>##name##</span></a>
            </li>
            <li class="displaynone xans-record-">
               	<a href="/product/detail.html##param##"><img src="about:blank" alt=""/><span>##name##</span></a>
            </li>
            </ul>
			<p class="player"><img src="http://img.echosting.cafe24.com/design/skin/default/layout/btn_recent_prev.gif" alt="이전 제품" class="prev"/><img src="http://img.echosting.cafe24.com/design/skin/default/layout/btn_recent_next.gif" alt="다음 제품" class="next"/></p>
		</div>
    </div> <!-- #quick -->
    
    


	<div id="header">
        <h1 class="xans-element- xans-layout xans-layout-logotop ">
        <a href="#"><img src="img/ws_top.jpg" alt="기본 쇼핑몰"/></a>
		</h1>

        <div class="inner">
            <div class="xans-element- xans-layout xans-layout-statelogoff ">
            	<img src="img/ws_top_tm01.gif" usemap="#Map_tm01"/>
            	<map name="Map_tm01" id="Map_tm01">
            	<area shape="rect" coords="30,6,55,27" href="../WIT_Main_index.jsp"/>
				<area shape="rect" coords="70,5,151,27" href="/order/basket.html" alt="장바구니"/>
				<area shape="rect" coords="159,3,253,27" href="/myshop/order/list.html" alt="주문배송조회"/>
				<area shape="rect" coords="267,4,359,26" href="/board/free/list.html?board_no=3" alt="자주하는질문"/></map><img src="img/ws_top_log01.gif" usemap="#Map_log01"/><map name="Map_log01" id="Map_log01"><area shape="rect" coords="16,3,72,24" href="/member/login.html"/>
				<area shape="rect" coords="74,3,125,22" href="/member/join.html"/>
				<area shape="rect" coords="127,3,187,22" href="/myshop/index.html"/>
				<area shape="rect" coords="201,4,298,23" href="/link/bookmark.html" target="_blank" onclick="winPop(this.href); return false;"/></map>
			</div>
                        
            <div class="link">
                <img src="img/ws_top_banner01.gif" alt="배너"/>
            </div>
            
            <div style="padding:14px 40px 0px 0px;">
                <form id="searchBarForm" name="" action="/product/search.html" method="get" enctype="multipart/form-data" >
					<input id="banner_action" name="banner_action" value="" type="hidden"  />
					<div class="xans-element- xans-layout xans-layout-searchheader ">

						<fieldset>
							<legend>검색</legend>
                    		<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text"  />
                    		<img src="img/ws_b_search.gif" alt="검색" onclick="SEARCH_BANNER.submitSearchBanner(this)"/>
                    	</fieldset>
					</div>
				</form>            
			</div>
        </div>	<!-- .inner -->
        
        
        
        
        
        <div class="inner2">
            <img src="img/ws_top_menu.gif" usemap="#Map_menu"/><img src="img/ws_top_lm.gif"/>
            <map name="Map_menu" id="Map_menu">
            <area shape="rect" coords="37,13,84,35" href="#"/>
            <area shape="rect" coords="124,12,201,34" href="#"/>
            <area shape="rect" coords="235,12,312,34" href="#"/>
            <area shape="rect" coords="347,12,422,34" href="#"/>
            <area shape="rect" coords="459,11,510,35" href="/board/free/list.html?board_no=2"/>
            <area shape="rect" coords="546,11,634,38" href="/board/free/list.html?board_no=4"/>
            <area shape="rect" coords="670,12,748,35" href="/board/free/list.html?board_no=6"/>
            </map>
       	</div>
    </div> <!-- #header -->
    
    
    
   


