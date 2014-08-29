CateData = [
        ["티셔츠/나시", "블라우스/셔츠/남방", "원피스", "니트/가디건", "조끼/베스트", "자켓/점퍼", "코트", "스커트", "데님/팬츠", "정장/SUIT"],
        ["정장", "셔츠/타이", "캐주얼"],
        ["신생아/유아", "아동(13세미만)", "주니어(13세이상)", "모자/가방"],
        ["여성가방", "남성가방", "여행가방", "지갑/벨트"],
        ["스포츠의류", "스포츠화", "등산화", "캠핑용품", "라켓/구기"],
        ["TV", "냉장고", "세탁기", "컴퓨터", "모니터", "주변장치"],
        ["주방", "청소용품", "욕실", "수납용품"],
        ["농산", "수산", "정육", "가공식품", "건강식품"],
        ["공연티켓", "호텔/콘도", "여행/항공"],
        ["WIT 본사", "WIT 교육", "WIT 지식", "WIT 체육", "WIT 먹방", "WIT 인사", "WIT 회계"]];


HeaderWs = {};
HeaderWs.makeWs = {
	makeHeaderMenu1 : function() {
		var _this = this;
		var element = [];
		element.push('<div class="xans-element- xans-layout xans-layout-statelogoff ">');
		element.push('<img src="img/ws_top_tm01.gif" usemap="#Map_tm01"/>');
		element.push('<map name="Map_tm01" id="Map_tm01">');
		element.push('<area shape="rect" coords="30,6,55,27" href="../WIT_Main_index.jsp"/>');
		element.push('<area shape="rect" coords="70,5,151,27" href="/order/basket.html" alt="장바구니"/>');
		element.push('<area shape="rect" coords="159,3,253,27" href="/myshop/order/list.html" alt="주문배송조회"/>');
		element.push('<area shape="rect" coords="267,4,359,26" href="/board/free/list.html?board_no=3" alt="자주하는질문"/>');
		element.push('</map>');
		element.push('<img src="images/system/ws_top_log01.png" usemap="#Map_log01"/>');
		element.push('<map name="Map_log01" id="Map_log01">');
		element.push('<area shape="rect" coords="16,3,72,24" href="SellerPage.html"/>');		// 판매자 페이지로
		element.push('<area shape="rect" coords="74,3,125,22" href="AdminPage.html"/>');		// 관리자 페이지로
		element.push('<area shape="rect" coords="127,3,187,22" href="SLogin.html"/>');		// 로그인 페이지로
																								// 회원가입 페이지로
		element.push('<area shape="rect" coords="201,4,298,23" href="SMemberJoin.html" target="_blank" onclick="winPop(this.href); return false;"/>');
		element.push('</map>');
		element.push('</div>');
		return element.join('');	
	},
	
	makeHeaderMenu2 : function() {
		var _this = this;
		var element = [];
		element.push('<img src="img/ws_top_menu.gif" usemap="#Map_menu"/>');
		element.push('<img src="images/system/ws_top_lm.png"/>');
		element.push('<map name="Map_menu" id="Map_menu">');
		element.push('<area shape="rect" coords="37,13,84,35" href="#"/>');
		element.push('<area shape="rect" coords="124,12,201,34" href="#"/>');
		element.push('<area shape="rect" coords="235,12,312,34" href="#"/>');
		element.push('<area shape="rect" coords="347,12,422,34" href="#"/>');
		element.push('<area shape="rect" coords="459,11,510,35" href="/board/free/list.html?board_no=2"/>');
		element.push('<area shape="rect" coords="546,11,634,38" href="/board/free/list.html?board_no=4"/>');
		element.push('<area shape="rect" coords="670,12,748,35" href="/board/free/list.html?board_no=6"/>');
		element.push('</map>');		
		return element.join('');
	},
	
	makeSearchMenu : function() {
		var _this = this;
		var element = [];
		element.push('<div style="padding:14px 40px 0px 0px;">');
		element.push('<form id="searchBarForm" name="" action="/product/search.html" method="get" enctype="multipart/form-data" >');
		element.push('<input id="banner_action" name="banner_action" value="" type="hidden"  />');
		element.push('<div class="xans-element- xans-layout xans-layout-searchheader ">');
		element.push('<fieldset>');
		element.push('	<legend>검색</legend>');
		element.push('	<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text"  />');
		element.push('	<img src="img/ws_b_search.gif" alt="검색" onclick="SEARCH_BANNER.submitSearchBanner(this)"/>');
		element.push('</fieldset>');
		element.push('</div>');
		element.push('</form>');
		element.push('</div>');
		return element.join('');		
	},
	
	makeRightWingMenu : function() {
		var _this = this;
		var element = [];
		element.push(	'<div id="quick">');
		element.push(	'	<div><img src="images/system/ws_quick_naver.gif" alt="네이버"/></div>');
		element.push(	'	<div><a href="/board/free/list.html?board_no=4"><img src="img/ws_quick_review.gif" alt="리뷰이벤트"/></a></div>');
		element.push(	'	<div class="xans-element- xans-layout xans-layout-orderbasketcount ">');
		element.push(	'		<p><strong>장바구니</strong> <span><a href="/order/basket.html">0</a>개</span></p>');
		element.push(	'	</div>');
		element.push(	'	<div class="xans-element- xans-layout xans-layout-productrecent">');
		element.push(	'		<h2><a href="/product/recent_view_product.html">최근본상품</a></h2>');
		element.push(	'		<ul>');
		element.push(	'			<li class="displaynone xans-record-">');
		element.push(	'				<a href="/product/detail.html##param##"><img src="about:blank" alt=""/><span>##name##</span></a>');
		element.push(	'			</li>');
		element.push(	'			<li class="displaynone xans-record-">');
		element.push(	'				<a href="/product/detail.html##param##"><img src="about:blank" alt=""/><span>##name##</span></a>');
		element.push(	'			</li>');
		element.push(	'		</ul>');
		element.push(	'		<p class="player"><img src="http://img.echosting.cafe24.com/design/skin/default/layout/btn_recent_prev.gif" alt="이전 제품" class="prev"/>');
		element.push(	'			<img src="http://img.echosting.cafe24.com/design/skin/default/layout/btn_recent_next.gif" alt="다음 제품" class="next"/></p>');
		element.push(	'	</div>');
		element.push(	'</div>');
		return element.join('');		
	}
} 







MainContainerWs = {};
MainContainerWs.makeWs = {
	makeMainMenu : function() {
		var _this = this;
		var element = [];
		element.push('<div class="xans-element- xans-layout xans-layout-category">');
		element.push('<h2> </h2>');
		element.push('<div class="postion">');
		element.push('<ul>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=24"><img src="img/ws_mainmenu01.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/01e761581f31baf0c4f99685f6962dee.gif" id="cate_img_24" alt="(대분류) Outer" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=25"><img src="img/ws_mainmenu02.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/9ab036a8d2a8c707ae71891de4c14ace.gif" id="cate_img_25" alt="(대분류) Top & Tee" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=26"><img src="img/ws_mainmenu03.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/087aa3c40562433ead37a5d76819ab50.gif" id="cate_img_26" alt="(대분류) Dress" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=27"><img src="img/ws_mainmenu04.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/e332981e3cba129294ecb6d7dd434d16.gif" id="cate_img_27" alt="(대분류) Bottom" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=28"><img src="img/ws_mainmenu05.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/38e97bfa3c2f6b1677e75a654060248e.gif" id="cate_img_28" alt="(대분류) Accessory" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=42"><img src="img/ws_mainmenu06.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/c9acf6bee2361776826f8b06338893ad.gif" id="cate_img_42" alt="대분류6" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=43"><img src="img/ws_mainmenu07.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/533c449533f3109b31f0695c170c0103.gif" id="cate_img_43" alt="대분류7" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=44"><img src="img/ws_mainmenu08.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/a5c34b1c5568757f9adcde3993b27145.gif" id="cate_img_44" alt="대분류8" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=45"><img src="img/ws_mainmenu09.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/6b0a212637ed6f29ca5f99a68b341165.gif" id="cate_img_45" alt="대분류9" /></a></li>');
		element.push('<li class="xans-record-"><a href="/product/list.html?cate_no=46"><img src="img/ws_mainmenu10.gif"  rollover="http://ecudemo2687.cafe24.com/web/upload/category/2dab20199ec9bcf4706e36610f606cbf.gif" id="cate_img_46" alt="대분류10" /></a></li>');
		element.push('</ul>');
		element.push('</div>');
		element.push('</div>');
		return element.join('');	
	}
	
	,makeMainMenu11st : function() {
		var el  = 	'<div id="navigateWrap" class="navigateWrap">';
			el += 	'	<div class="navigate">';
			el += 	'		<div id="gnbCateAllLayerWrap" class="totalcate_wrap">';
			el += 	'			<button class="btn_totalcate" type="button">';
			el += 	'				<span>전체카테고리</span>';
			el += 	'			</button>';
			el += 	'		</div>';
			el += 	'		<div class="allcategory">';
			el += 	'			<div class="alltitle">';
			el += 	'				<h2>';
			el += 	'					<button class="btn_totalcate" type="button">';
			el += 	'						<span>전체카테고리</span>';
			el += 	'					</button>';
			el += 	'				</h2>';
			el += 	'				<div class="close">';
			el += 	'					X';
			el += 	'				</div>';
			el += 	'			</div>';
			el += 	'		</div>';
			el += 	'		<div id="gnbMenu3" class="gnb_menu3">';
			el += 	'			<h2>주메뉴</h2>';
			el += 	'			<ul>';
			
			for(var i=0; i<10; i++) {
				el += 	'			<li >';
				el += 	'				<div class="gnb_inner_wrap2" id="gnb_cate_layer'+i+'">';
				el += 	'				</div>';
				el += 	'			</li>';
			}	
			
			el += 	'			</ul>';
			el += 	'			<span class="arrow"></span>';
			el += 	'		</div>';
			el += 	'	</div>';
			el += 	'</div>';
		return el;
			
	}
	
	,makeSubMenu : function() 
	{
		for(var i=0; i<CateData.length; i++) {
			var $smenu = $('div#gnb_cate_layer'+i);
			el = '<div class="gnb_inner">'
			el += '<div class="grouping">'
			for(var j=0; j<CateData[i].length; j++) {
				el += '<h3>'+CateData[i][j]+'</h3>';				
			}
			el += '</div>';
			el += '<div class="banner">';
			if(i!=5 && i!=6 && i!=7) {
			el += '<img src="images/product/ws_sub1.1.jpg"/>';
			el += '<img src="images/product/ws_sub1.2.jpg"/>';
			}
			else {
				el += '<img src="images/product/ws_sub'+(i+1)+'.1.jpg"/>';
				el += '<img src="images/product/ws_sub'+(i+1)+'.2.jpg"/>';
				
			}
			el += '</div>';
			el += '</div>';
			$smenu.append(el);
		}	
		
	}
	

	
	,makeLeftBanner : function() {
		var _this = this;
		var element = [];
		element.push('<div class="banner_left">');
		element.push('<p><img src="img/ws_b_banner.gif" usemap="#Map_bbanner"/></p>');
		element.push('<map name="Map_bbanner" id="Map_bbanner">');
		element.push('<area shape="rect" coords="6,7,68,104" href="/myshop/order/list.html" alt=""/>');
		element.push('<area shape="rect" coords="78,9,137,102" href="/shopinfo/guide.html" alt=""/>');
		element.push('<area shape="rect" coords="142,11,202,104" href="/shopinfo/guide.html" alt=""/>');
		element.push('</map>');
		element.push('<p><img src="img/ws_community.gif" usemap="#Map_commu"/></p>');
		element.push('<map name="Map_commu" id="Map_commu">');
		element.push('<area shape="rect" coords="13,53,100,75" href="/board/free/list.html?board_no=1" alt=""/>');
		element.push('<area shape="rect" coords="15,77,99,99" href="/board/free/list.html?board_no=6" alt=""/>');
		element.push('<area shape="rect" coords="15,101,110,120" href="/board/free/list.html?board_no=4" alt=""/>');
		element.push('<area shape="rect" coords="15,121,108,142" href="/board/free/list.html?board_no=8" alt=""/>');
		element.push('</map>');
		element.push('<p><a href="/#"><img src="images/product/ws_rb_01.png" alt=""/></a></p>');
//		element.push('<p><a href="/#"><img src="img/ws_rb_02.jpg" alt=""/></a></p>');
		element.push('<p><a href="/#"><img src="img/ws_banner_etc1.gif" alt=""/></a></p>');
		element.push('</div>');
		return element.join('');		
	}
	
	,makeMainBanner : function() {
		var _this = this;
		var element = [];
	
		element.push('<div id="image_list_3">');
		element.push('<div class="clsBannerScreen">');
		element.push('<div class="images" style="display:block"><a href="BuyProduct2.html"><img src="images/product/ws_sc1.jpg"/></a></div>');
		element.push('<div class="images"><a href="BuyProduct2.html"><img src="images/product/ws_sc2.jpg"/></a></div>');
		element.push('<div class="images"><a href="BuyProduct2.html"><img src="images/product/ws_sc3.jpg"/></a></div>');
		element.push('</div>');
		element.push('<div class="kv">');
		element.push('<ul class="clsBannerButton" id="label_3"><li><img src="images/system/ws_scc1a.gif" oversrc="images/system/ws_scc1.gif" outsrc="images/system/ws_scc1a.gif"/></li>');
		element.push('<li class="midbtn"><img src="images/system/ws_scc2a.gif" oversrc="images/system/ws_scc2.gif" outsrc="images/system/ws_scc2a.gif"/></li>');
		element.push('<li><img src="images/system/ws_scc3a.gif" oversrc="images/system/ws_scc3.gif" outsrc="images/system/ws_scc3a.gif"/></li>');
		element.push('</ul></div>');
		element.push('</div>');
		return element.join('');			
	},    
	
	makeMainBanner2 : function() {
		var _this = this;
		var element = [];
		element.push('<div class="mb3">');
		element.push('<img src="img/ws_middle_b.jpg" alt="" usemap="#Map_mb"/>');
		element.push('<map name="Map_mb" id="Map_mb">');
		element.push('<area shape="rect" coords="4,5,192,208" href="#"/>');
		element.push('<area shape="rect" coords="194,6,373,103" href="#"/>');
		element.push('<area shape="rect" coords="194,104,372,208" href="#"/>');
		element.push('<area shape="rect" coords="377,5,553,208" href="#"/>');
		element.push('<area shape="rect" coords="559,5,766,103" href="#"/>');
		element.push('<area shape="rect" coords="559,104,767,207" href="#"/>');
		element.push('</map>');
		element.push('</div>');
		return element.join('');			
	},
	
	makeMainBanner3 : function() {				// 메인배너 - 추천 상품
		var _this = this;
		var element = [];
		var li_id = ["anchorBoxId_14", "anchorBoxId_13", "anchorBoxId_12", "anchorBoxId_11", "anchorBoxId_16", "anchorBoxId_15", "anchorBoxId_10", "anchorBoxId_9" ];
		var img_src = ["http://ecudemo2687.cafe24.com/web/product/medium/14_shop1_309089.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/13_shop1_942601.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/12_shop1_529870.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/11_shop1_276853.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/16_shop1_302138.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/15_shop1_635275.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/10_shop1_439575.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/9_shop1_734978.jpg"];
		
		element.push('<div class="mb3">');
		element.push('<div class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1">');
		element.push('<h2><img src="img/ws_bar_sbest.gif"/></h2>');
		element.push('<ul class="prdList">');
		for(var i=0; i<8; i++) {
			element.push('<li id=' + li_id[i] + ' class="xans-record-">');
			element.push('<a name="anchorBoxName_14" href="/product/detail.html?product_no=14&cate_no=1&display_group=2" class="prdImg">');
			element.push('<img src=' + img_src[i] + ' alt=""/></a>');	
			element.push('<div class="price_box">');
			element.push('<a href="/product/detail.html?product_no=14&cate_no=1&display_group=2" class="name"><span style="font-size:12px;color:#555555;">샘플상품 6</span></a>');			
			element.push('<strong class="price">30000</strong>');
			element.push('</div>');
			element.push('</li>');			
		}		
		element.push('</ul>');
		element.push('</div>');
		element.push('</div>');		
		return element.join('');			
	},
	
	makeEventBanner : function() {
		var _this = this;
		var element = [];
		element.push('<div class="event_b01">');	
		element.push('<img src="img/ws_middle_b_week.jpg" alt="" usemap="#Map_mb_week"/>');	
		element.push('</div>');	
		element.push('<map name="Map_mb_week" id="Map_mb_week">');	
		element.push('<area shape="rect" coords="887,8,1001,33" href="#" alt="특가상품 더보기"/>');	
		element.push('<area shape="rect" coords="5,47,364,221" href="#" alt="배너1"/>');	
		element.push('<area shape="rect" coords="5,222,183,405" href="#" alt="배너2"/>');
		element.push('<area shape="rect" coords="183,221,362,403" href="#" alt="배너3"/>');		
		element.push('<area shape="rect" coords="368,48,634,402" href="#" alt="배너4"/>');		
		element.push('<area shape="rect" coords="638,48,994,220" href="#" alt="배너5"/>');		
		element.push('<area shape="rect" coords="639,221,822,403" href="#" alt="배너6"/>');		
		element.push('<area shape="rect" coords="822,221,996,404" href="#" alt="배너7"/>');		
		element.push('</map>');	
		return element.join('');			
	},
	
	makeSlideBanner : function() {
		var _this = this;
		var element = [];
		var li_id = ["anchorBoxId_9","anchorBoxId_10","anchorBoxId_11","anchorBoxId_12","anchorBoxId_13","anchorBoxId_14",
		             "anchorBoxId_15","anchorBoxId_16","anchorBoxId_17","anchorBoxId_18"];
		var img_src = ["http://ecudemo2687.cafe24.com/web/product/medium/9_shop1_734978.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/10_shop1_439575.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/11_shop1_276853.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/12_shop1_529870.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/13_shop1_942601.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/14_shop1_309089.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/15_shop1_635275.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/16_shop1_302138.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/17_shop1_235592.jpg",
		               "http://ecudemo2687.cafe24.com/web/product/medium/18_shop1_794310.jpg"];
		  
		element.push('<div class="xans-element- xans-product xans-product-listmain-3 xans-product-listmain xans-product-3">');	
		element.push('<h2><img src="img/ws_sbar_best.gif" alt=""/></h2>');	
		element.push('<div class="show" id="slide">');	
		element.push('<ul class="prdList">');
		for(var i=0; i<li_id.length; i++) {
			element.push('<li id=' + li_id[i] + ' class="xans-record-">');	
			element.push('<a name="anchorBoxName_18" href="/product/detail.html?product_no=18&cate_no=1&display_group=4" title="" class="prdImg">');	
			element.push('<img src=' + img_src[i] + ' alt=" " width="180"/></a>');	
			element.push('<a href="/product/detail.html?product_no=18&cate_no=1&display_group=4" class="name"><span style="font-size:12px;color:#555555;">샘플상품 10</span></a>');	
			element.push('<strong class="price">50000원');	
			element.push('<img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"  onClick="zoom(\'18\', \'1\', \'4\',\'\', \'\');" ');	
			element.push(' style="cursor:pointer" alt="상품 큰 이미지 보기"/></strong>');	
			element.push('<span class="btns">');	
			element.push('<span class="bag">');	
			element.push('<img src="http://img.echosting.cafe24.com/design/skin/mono/btn_bag.gif" alt="장바구니넣기" onclick="" class="displaynone"/></span>');	
			element.push('<span class="option">');	
			element.push('<img src="http://img.echosting.cafe24.com/design/skin/mono/btn_option.gif" ');	
			element.push(' alt="옵션보기" onclick="" onmouseout="" class="displaynone" id="btn_preview_listmain18"/></span>');	
			element.push('</span>');	
			element.push('</li>');				
		}		
		element.push('</ul>');	
		element.push('<div class="toolbar1"><img src="img/ws_arr_left.png" onclick="direction=\'left\';AutoScroll();"/></div>');	
		element.push('<div class="toolbar2">');	
		element.push('<img src="img/ws_arr_right.png" onclick="direction=\'right\';AutoScroll();"/>');	
		element.push('</div>');	
		element.push('</div>');	
		element.push('</div>');			
		return element.join('');			
	}
}

FooterWs = {};
FooterWs.makeFooter = function() {
	var _this = this;
	var element = [];
	
	element.push('<div>');			
	element.push('<img src="images/system/ws_down.png" alt="footer" usemap="#Map_down"/>');			
	element.push('<map name="Map_down" id="Map_down">');			
			
	element.push('<area shape="rect" coords="886,22,1000,45" href="http://ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank" alt="사업자정보확인"/>');			
	element.push('</map></div>');			
			
	return element.join('');
	
}

FooterWs.makeFooter2 = function() {
	var _this = this;
	var element = [];
	element.push('<div>');			
	element.push('	<img src="images/system/ws_down.png" alt="footer" usemap="#Map_down"/>');			
	element.push('	<map name="Map_down" id="Map_down">');			
	element.push('		<area shape="rect" coords="10,5,63,22" href="/shopinfo/company.html" alt="회사소개"/>');			
	element.push('		<area shape="rect" coords="74,5,126,24" href="/member/agreement.html" alt="이용약관"/>');			
	element.push('		<area shape="rect" coords="140,6,243,22" href="/member/privacy.html" alt="개인정보취급방침"/>');			
	element.push('		<area shape="rect" coords="255,6,310,23" href="/shopinfo/guide.html" alt="이용안내"/>');			
	element.push('		<area shape="rect" coords="879,2,948,27" href="/" alt="home"/>');			
	element.push('		<area shape="rect" coords="949,3,1000,27" href="#" alt="top"/>');			
	element.push('		<area shape="rect" coords="886,53,1000,76" href="http://ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank" alt="사업자정보확인"/>');			
	element.push('	</map>');			
	element.push('</div>');			
			
	return element.join('');
	
}


 var SellTable = {};
 SellTable.makeTable = function() {
	 var _this = this;
	 var element = [];
	 element.push('<table id="sellTable">');		
	 element.push('<tr>');		
	 element.push('<td>날짜</td><td>입금전</td><td>상품준비중</td><td>배송준비중</td><td>배송대기중</td><td>배송중</td>');		
	 element.push('<td>배송완료</td><td>최소</td><td>교환</td><td>반품</td><td>주문합계</td>');		
	 element.push('</tr>');		
	 for(var i=0; i<20; i++) {
		 element.push('<tr>');	
		 element.push('<td>7월' +(3+i)+'일</td>');	
		 element.push('<td>2건</td>');	
		 element.push('<td>3건</td>');	
		 element.push('<td>4건</td>');	
		 element.push('<td>5건</td>');	
		 element.push('<td>6건</td>');	
		 element.push('<td>7건</td>');	
		 element.push('<td>8건</td>');	
		 element.push('<td>9건</td>');	
		 element.push('<td>10건</td>');	
		 element.push('<td>11건</td>');	
		 element.push('</tr>');	
		 
	 }	 	
	 element.push('</table>');		
 
	 return element.join('');
	 
 }
 
 
 
 
	
		
		
		
		
		
		
				
	


	
 
 


	
		
		
        
		
		
		
		
		
		
		
 		
	







