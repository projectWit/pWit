









var FooterData = {};
/* header 선언부 */

if ( typeof(isToastBnnr) == "undefined" )		var isToastBnnr = false;
if ( typeof(isPopUnder) == "undefined" )		var isPopUnder = false;

if ( typeof(_browser) == "undefined" )	var _browser 	= "";
if ( typeof(isIE) == "undefined" )		var isIE = false;
if ( typeof(isIE6) == "undefined" )		var isIE6 = false;
if ( typeof(isIE7) == "undefined" )		var isIE7 = false;
if ( typeof(isIE8) == "undefined" )		var isIE8 = false;
if ( typeof(isIE9) == "undefined" )		var isIE9 = false;
if ( typeof(isIE10) == "undefined" )		var isIE10 = false;
if ( typeof(isFireFox) == "undefined" )	var isFireFox = false;
if ( typeof(isOpera) == "undefined" )	var isOpera = false;
if ( typeof(isChrome) == "undefined" )	var isChrome = 0;
if ( typeof(isSafari) == "undefined" )	var isSafari = false;

/* header 선언부 */

/* common  var */
var _currUrl 	= window.document.location.pathname;
var _protocol	= window.document.location.protocol;

var ajaxDomainURL = "http://www.11st.co.kr";

var blankHTML = "";
if (_protocol == 'https:')
	blankHTML = "https://www.11st.co.kr/html/blank.html";
else
	blankHTML = "http://www.11st.co.kr/html/blank.html";


var WWW_URL = '';
/*-- var WB_SWF_URL = ''; */
var is_chkmain;
var is_prodDetail = false;


if ( _protocol == 'https:') {
	WWW_URL = _protocol + '//www.11st.co.kr'
} else {
	try	{
		WWW_URL = _IMG_URL_;
	} catch(e)	{
		WWW_URL = _protocol + '//s.011st.com'
	}
}

if(partnerHeaderHeight == undefined)
	var partnerHeaderHeight = 0;

if(_currUrl.toLowerCase().indexOf('/product/sellerproductdetail.tmall') >= 0)
	is_prodDetail = true;


var leftPollBnnrCurWeight = 10;
/* [Left Bnnr APP END] */



HeaderComm.setDirectVisitCookie({XSITE : [],PARTNER_CD : ['1204', '1356', '1175', '1381', '1410', '1229', '1259', '1260', '1130', '1359', '1379', '1429', '1436', '1282', '1409', '1458', '1128', '1129', '1173', '1174', '1176', '1177', '1014', '1206', '1288', '1358', '1376', '1079', '1412', '1464', '1009', '1046', '1296', '1383', '1384', '1497', '1527', '1200', '1201', '1361', '1371', '1203', '1471', '1349', '1404', '1522', '1528', '1530', '1256', '1345', '1369', '1276', '1286', '1287', '1034', '1424', '1450', '1473', '1573', '1588', '1623', '1561', '1599', '1569', '1570', '1600', '1616', '1545', '1557', '1615', '1655']});

document.write('<div id="_obj_starter_"></div>');

(
	function()	{
		try
		{
			if ( HeaderComm.isDirectVisit() )
				$ID("DIRECT_ONOFF").innerHTML = '<a class="marL7 marT1"><img src="'+WWW_URL+'/img/common/Gnb_11up/direct_on_v3.gif" alt=""></a>';
			else
				$ID("DIRECT_ONOFF").innerHTML = '<a class="TaB_TooL_v5"><span>11번가바로가기</span></a>';
		} catch(e) {}
	}()
);

var popUnderHtml = "";
function initPop()
{
	try
	{
		var domains = new Array();
		domains.push("www.11st.co.kr");
		domains.push("search.11st.co.kr");
		domains.push("shop.11st.co.kr");

		var domain = document.domain;
		var chkCnt = 0;
		for(var i=0; i<domains.length; i++)
		{
			if(domains[i] == domain)
			{
				chkCnt++;
				break;
			}
		}

		// 네이버 AD 예외처리 - 첫 페이지에서는 비노출 처리
		try
		{
			var tpIgnorePopunder = TMCookieUtil.getSubCookie(0,'IGNORE_POPUNDER');

		 	var _adCheckUrl = window.location.href;
		 	if ( _adCheckUrl.indexOf('method=getSellerProductDetail') > - 1 &&  _adCheckUrl.indexOf('prdNo=956091545') > -1 ) {
		 		tpIgnorePopunder = 'Y';
		 	}

			if ( tpIgnorePopunder == 'Y' )
			{
				TMCookieUtil.remove(0,'IGNORE_POPUNDER');
				chkCnt = 0;
			}
		}
		catch (ex) {}

		if(chkCnt > 0)
		{
			var tdPopUnderChkCnt = TMCookieUtil.getSubCookie(1, "TD_POPUNDER_CHKCNT");
			if(tdPopUnderChkCnt == "") tdPopUnderChkCnt = 0;
			if ( "true" == "true" && parseInt(tdPopUnderChkCnt) < 1 )
			{
				try
				{
					if (checkAlliance())
						return;
				}
				catch (e) { }

				tdPopUnderChkCnt++;
				TMCookieUtil.add(1, "TD_POPUNDER_CHKCNT",tdPopUnderChkCnt+"");//1일 2회 실행 체크 쿠키 설정
				var url =  "http://"+domain+"/commons/PopUnderPage.tmall?_dsSeverMode="+_dsSeverMode;
				window.open(url, "BROWSING_FOOTER_POPUNDER", "width="+_popunder_wdith+",height="+_popunder_height+",top=0,left=0,toolbar=0,location=0,status=0,menubar=0,scrollbars=0,resizable=0");
			}
		}
	}
	catch(e){}
}

if(isPopUnder != false)
{
	if (window.attachEvent)
	{
		  window.attachEvent("onload", initPop);
	}
	else if (window.addEventListener)
	{
		  window.addEventListener("load", initPop, false);
	}
}

var TB_WWW_URL   = _protocol + "//www.11st.co.kr";
var isNoneTBposition4IE6 = false;




function ShortcutGnb(code)
{
	try{
		doCommonStat(code);
		if($ID("SKStarter")==null){
			$ID("_obj_starter_").innerHTML = "<object id=\"SKStarter\" width=\"0\" height=\"0\" classid=\"CLSID:29A84C9B-9AC0-4A18-B0D7-60571B0E88CE\" codebase=\"http://www.11st.co.kr/ocx/SKSCmaker.cab#version=3,0,0,3\"></object>";
		}

		installActiveX();

	} catch(e) {}
}
function installActiveX() {
	clickStat('install');

	try {
		SKStarter.CreateShortCut(1);
		alert("바탕화면 바로가기 및 브라우저 즐겨찾기가 완료되었습니다.\n\n'확인' 버튼을 클릭하시면 바로가기 on 상태로 재접속됩니다.");
		location.href = "http://www.11st.co.kr/connect/Gateway.tmall?method=Xsite&tid=1000013091";
	} catch (e) {
		alert("확인 버튼을 누르면 바로가기 ON상태로 변경됩니다.");
		location.href = "http://www.11st.co.kr/connect/Gateway.tmall?method=Xsite&tid=1000013091";
	}
}
function removeCookie(name,domain,path){
	  var expireDate = new Date();
	  expireDate.setDate(expireDate.getDate()-1);
	  document.cookie = name + "= " + "; path="+path+"; domain="+domain+";  expires=" + expireDate.toGMTString() + ";";
}


function removeCookieWB(){
	name = "WB_DEFAULT";
	var str = getCookie(name);
	if(str){
		str = str.substr(str.length-1,1);
		removeCookie(name,".11st.co.kr","/");
		setCookieWB(name, str);
	}
}

function getCookie(name){
	var search = name + "=";
	if (document.cookie.length > 0){
	    offset = document.cookie.indexOf(search);
	    if (offset != -1){
	        offset += search.length;
	        end = document.cookie.indexOf(";",offset);
	        if (end == -1) end = document.cookie.length;
	        return unescape(document.cookie.substring(offset,end));
	    }
	    else return false;
	}
	else return false;
}

function setCookieWB (name, value, expires) {
  if(expires != null)
  	document.cookie = name + "=" + escape (value) + "; path=/;domain=.11st.co.kr; expires=" + expires.toGMTString();
  else
  	document.cookie = name + "=" + escape (value) + "; path=/;domain=.11st.co.kr;";
}

function openCompareProduct(prdList)
{
	window.open("http://www.11st.co.kr/product/CompareProduct.tmall?method=getCompareProduct&arrPrdNo="+prdList, "compareProductPop", "scrollbars=yes, resizable=no, width=740, height=600, left=450, top=300");
}

function getXMLHttpRequest()
{
   	if(window.ActiveXObject){
   		try{
   			return new ActiveXObject("Msxml2.XMLHTTP");
   		}catch(e){
   			try{
   				return new ActiveXObject("Microsoft.XMLHTTP");
   			}catch(e1){
   				return null;
   			}
   		}
   	}else if (window.XMLHttpRequest){
   		return new XMLHttpRequest();
   	}else{
   		return null;
   	}
}


function clickStat(clickId)	{
	var	i =	new	Image();
	var _protocol = window.document.location.protocol;
	if (_protocol == 'https:')
		i.src = "https://www.11st.co.kr/banner.html?url=" + clickId;
	else
		i.src =	"http://www.11st.co.kr/banner.html?url=" + clickId;
}


/**
 * 좌측 날개 모바일 배너 링크
 */
function goMobileLink()
{
	goStatUrl(_arrLWBottomMobileBanner[0]['URL'],'MAW0401');
}

function clickStatBnr(clickId)	{
	var	i =	new	Image();
	var _protocol = window.document.location.protocol;
	if (_protocol == 'https:')
		i.src = "https://www.11st.co.kr/banner.html?url=" + clickId;
	else
		i.src =	"http://www.11st.co.kr/banner.html?url=" + clickId;
}

function popupLWPoll(pUrl) {
	var w=545;
	var h=450;
	window.open(pUrl, 'popupPoll', 'width='+w+',height='+h+',top='+(screen.height-h)/2+',left='+(screen.width-w)/2+',status=yes,scrollbars=auto,resizable=yes');
}

function replaceAll(str, oldStr, newStr)
{
	return str.replace(new RegExp(oldStr, "gi"), newStr);
}

//Change WingBanner Menu
function resetWB(code){}

var _arrPopUnderMaxCnt = 1;var _arrPopUnderIndex = 0;var _arrPopUnderImg = new Array();var _arrPopUnderLnk = new Array();var _arrPopUnderTrc = new Array();var _popunder_wdith = 320;var _popunder_height = 348;_arrPopUnderListCnt = 1;

if ( isPopUnder ) {	
	_arrPopUnderImg.push("http://i.011st.com/browsing/banner/2010/06/30/2828/2010063018313032915_5914025_1.jpg");
	_arrPopUnderLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=38346");
	_arrPopUnderTrc.push("120100630384988540");
}	
	FooterData.firstMktArr=[];
	FooterData.memberMktArr=[];
	FooterData.globalFirstMktArr=[{bnnrNo:'7825517', bnnrImg:'http://i.011st.com/browsing/banner/2013/03/07/6079/2013030711250741467_7825517_1.jpg', bnnrLink:'http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&amp;planDisplayNumber=886749'}];
	FooterData.globalMemberMktArr=[{bnnrNo:'7825518', bnnrImg:'http://i.011st.com/browsing/banner/2013/03/07/6079/2013030711260718550_7825518_1.jpg', bnnrLink:'http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&amp;planDisplayNumber=886749'}];
var wingRBnnrRecomm ={"DATA":[{"TYPGUBN":"M","TRCNO":"1201408123198967946","PRC1":"59,590","PRD_NO":"286580178","TXT1":"진격의대두 이젠 안녕~","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/04/28/k8338k/2014042814102837190.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967947","PRC1":"13,800","PRD_NO":"20210911","TXT1":"여름반팔티 창고대개방","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/08/08/votus5/2014080816150802514.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967945","PRC1":"19,800","PRD_NO":"1042124526","TXT1":"3+1 오늘까지 이가격","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/06/23/jwn50798/2014062317262352731.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967948","PRC1":"19,800","PRD_NO":"951945741","TXT1":"천연가죽 크로스백","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/06/29/gpwls8115/2014062916572903307.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967951","PRC1":"13,900","PRD_NO":"10390500","TXT1":"2014신상청바지면바지","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/04/03/jiggygen/2014040317040340755.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967952","PRC1":"9,900","PRD_NO":"17807434","TXT1":"오늘만특가 신상스키니","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/05/23/jiggygen/2014052315182332815.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967953","PRC1":"99,000","PRD_NO":"975459237","TXT1":"스타도좋아해 게르마늄","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/06/20/ozbio1/2014062014102005806.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967943","PRC1":"89,200","PRD_NO":"36700406","TXT1":"순식물성성분뱃살쏙","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/07/17/idream24/2014071715491739890.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967954","PRC1":"19,900","PRD_NO":"275604679","TXT1":"신상커플링 도매가판매","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/07/05/a4355247/2014070514460550565.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967950","PRC1":"7,900","PRD_NO":"658205762","TXT1":"휴가철엔 역시 생막창","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/08/01/cyc11279/2014080110150143835.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967955","PRC1":"49,800","PRD_NO":"671396571","TXT1":"다이어트GO","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/07/31/gagpia0191/2014073113563120937.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967961","PRC1":"86,330","PRD_NO":"42039241","TXT1":"거실을 서재로 꾸미다.","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/08/10/nurigagu/2014081017041000519.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967960","PRC1":"8,900","PRD_NO":"1087542102","TXT1":"66%할인 북유럽조명","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/08/12/worldjulai/2014081216541259896.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967958","PRC1":"100,440","PRD_NO":"1105003221","TXT1":"에어침대/캠핑매트","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/08/12/a36900/2014081217011239124.jpg"},{"TYPGUBN":"M","TRCNO":"1201408123198967957","PRC1":"59,500","PRD_NO":"485899293","TXT1":"흡연자의 필수품","AREAGUBN":"A02","IMG1":"/t/060/browsing/seller/2014/08/12/dselec/2014081217031233133.jpg"}],"totalCount":15}

FooterData.metaCtgrGrp1 = [
    {"CtgrLv":1,
	"CtgrIconCd":"",
	"CtgrNm":"브랜드 패션",
	"AddInfoLinkUrl":"",
	"AddInfoLinkUseYn":"N",
	"CtgrGrpCd":"001",
	"CtgrLinkUrl":"",
	"AddInfoClassText":"",
	"AddInfoUseYn":"N",
	"RefCtgrNo":0,
	"AddInfoClassNm":"",
	"CtgrBoldUseYn":"N",
	"CtgrTxtColor":"",
	"RefCtgrCd":"",
	"CtgrNo":127173,
	"AddInfoLinkPopupYn":"N",
	"CtgrKindCd":"01",
	"CtgrLinkPopupYn":"N"},
	
	{"CtgrLv":2,
	"CtgrIconCd":"",
	"CtgrNm":"브랜드의류",
	"AddInfoLinkUrl":"",
	"AddInfoLinkUseYn":"N",
	"CtgrGrpCd":"001",
	"CtgrLinkUrl":"",
	"AddInfoClassText":"",
	"AddInfoUseYn":"N",
	"RefCtgrNo":0,
	"AddInfoClassNm":"",
	"CtgrBoldUseYn":"N",
	"CtgrTxtColor":"",
	"RefCtgrCd":"",
	"CtgrNo":127183,
	"AddInfoLinkPopupYn":"N",
	"CtgrKindCd":"01",
	"CtgrLinkPopupYn":"N"},
	
	{"CtgrLv":3,
	"CtgrIconCd":"",
	"CtgrNm":"브랜드 여성의류/언더웨어",
	"AddInfoLinkUrl":"",
	"AddInfoLinkUseYn":"N",
	"CtgrGrpCd":"001",
	"CtgrLinkUrl":"",
	"AddInfoClassText":"",
	"AddInfoUseYn":"N",
	"RefCtgrNo":127680,
	"AddInfoClassNm":"",
	"CtgrBoldUseYn":"N",
	"CtgrTxtColor":"",
	"RefCtgrCd":"562",
	"CtgrNo":127198,
	"AddInfoLinkPopupYn":"N",
	"CtgrKindCd":"02",
	"CtgrLinkPopupYn":"N"},
	
	{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"브랜드 남성의류/언더웨어","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"001","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":252019,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"813","CtgrNo":127199,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},
	{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"브랜드 캐주얼의류","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"001","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":127634,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"552","CtgrNo":127200,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"브랜드잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"001","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127184,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"브랜드 신발/가방/잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"001","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":727029,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"992","CtgrNo":127203,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"브랜드 시계/쥬얼리","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"001","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":127663,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"559","CtgrNo":127204,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"수입명품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"001","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":127646,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"555","CtgrNo":127205,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp2 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"패션의류/언더웨어","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"002","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127174,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"패션의류/언더웨어","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"002","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127185,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"여성의류","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"002","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1454,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"008","CtgrNo":127206,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"남성의류/캐주얼의류","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"002","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1611,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"009","CtgrNo":127207,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"빅사이즈/미시의류","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"002","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14605,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"244","CtgrNo":127208,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"언더웨어/잠옷/보정속옷","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"002","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":393011,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"954","CtgrNo":127209,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp3 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"패션잡화/뷰티","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127175,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"패션잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127186,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"여성화/남성화/스니커즈","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1683,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"010","CtgrNo":127219,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"가방/패션잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14608,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"245","CtgrNo":127220,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"시계/쥬얼리/액세서리","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":4659,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"077","CtgrNo":127221,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"뷰티","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127187,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"화장품/향수/미용","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1233,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"007","CtgrNo":128318,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"헤어/바디","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"003","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14610,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"246","CtgrNo":128319,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp4 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"식품/출산/유아동","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127176,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"식품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127188,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"쌀/과일/농수축산물","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14617,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"250","CtgrNo":127230,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"커피/차/생수/음료","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2790,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"016","CtgrNo":128320,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"라면/통조림/과자/조미료","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":943036,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"9Tz","CtgrNo":128321,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"건강식품/홍삼/다이어트","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":127648,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"556","CtgrNo":127232,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"출산/유아동","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127189,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"기저귀/분유/유아식","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2072,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"012","CtgrNo":127236,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"물티슈/생리대/성인패드","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":368027,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"929","CtgrNo":127237,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"출산/유아용품/임부복","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14594,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"247","CtgrNo":127238,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"장난감/인형/유아교육","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14616,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"249","CtgrNo":127239,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"유아동의류/잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"004","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14615,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"248","CtgrNo":128322,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp5 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"가구/침구/생활/건강","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127177,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"가구/침구/건강","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127190,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"가구/수납가구/학생가구","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2629,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"015","CtgrNo":127267,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"침구/커튼/카페트","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14618,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"251","CtgrNo":127269,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"홈/인테리어/DIY","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":160996,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"753","CtgrNo":127305,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"건강/비데/실버용품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14619,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"252","CtgrNo":127272,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"생활/세제/주방","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127191,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"생활/수납/욕실/청소","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":727295,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"993","CtgrNo":127275,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"세제/세정/방향/제지","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2396,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"013","CtgrNo":127277,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"주방/수입주방","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"005","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":160994,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"751","CtgrNo":127279,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp6 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"스포츠/레저/자동차","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127178,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"스포츠/레저","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127192,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"스포츠의류/운동화/용품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1930,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"011","CtgrNo":127285,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"등산/아웃도어/캠핑/낚시","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14611,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"253","CtgrNo":127302,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"자전거/헬스/다이어트","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":117162,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"497","CtgrNo":127288,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"구기스포츠/수영/스키","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":254167,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"816","CtgrNo":127290,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"골프클럽/의류/용품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14612,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"254","CtgrNo":127291,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"자동차/블랙박스/공구","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127193,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"자동차용품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2514,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"014","CtgrNo":127295,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"블랙박스/내비/하이패스","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14620,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"255","CtgrNo":127298,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"공구/산업용품/도어락","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"006","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":160995,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"752","CtgrNo":127299,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp7 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"가전/컴퓨터/휴대폰","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127179,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"가전","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127194,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"TV/냉장고/세탁기","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":806,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"005","CtgrNo":127303,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"주방/이미용/생활가전","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1033,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"006","CtgrNo":127304,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"에어컨/선풍기/제습기","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":127658,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"558","CtgrNo":127306,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"DSLR/디카/액세서리","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14613,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"256","CtgrNo":127307,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"MP3/AV/음향가전","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":14614,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"257","CtgrNo":127308,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"컴퓨터/휴대폰","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127195,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"노트북/데스크탑","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":1,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"001","CtgrNo":127311,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"모니터/프린터/잉크","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":128635,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"566","CtgrNo":127312,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"PC부품/주변기기","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":281,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"002","CtgrNo":127313,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"저장장치/태블릿/게임","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":502,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"003","CtgrNo":128324,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"휴대폰/액세서리","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"007","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":748,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"004","CtgrNo":127315,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp8 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"도서/취미/여행/티켓","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127180,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"도서/여행/티켓","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127196,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"도서/음반/DVD","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2967,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"019","CtgrNo":127265,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"e쿠폰/상품권/이용권","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":117025,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"495","CtgrNo":127266,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"여행/숙박/항공권","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2878,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"017","CtgrNo":127268,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"취미/악기/애완/문구","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127197,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"애완용품/악기","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":2922,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"018","CtgrNo":127276,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"취미/프라모델/선물/꽃","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":253022,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"814","CtgrNo":127278,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"문구/사무/용지/팬시","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"008","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":3200,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"020","CtgrNo":127280,"AddInfoLinkPopupYn":"N","CtgrKindCd":"02","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp9 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"SOHO 11","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127181,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"SOHO11","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127211,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"SOHO11 Main","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ID=SOHO&ctgrNo=55549","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127244,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"WOMEN","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ctgrNo=55550&method=getSohoMall","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127245,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"MEN","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ctgrNo=55616&method=getSohoMall","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127246,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"SHOES","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ctgrNo=55551&method=getSohoMall","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127247,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"BAG&ACC","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ctgrNo=55552&method=getSohoMall","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127248,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"KIDS","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"009","CtgrLinkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ctgrNo=55554&method=getSohoMall","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127249,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"}]
FooterData.metaCtgrGrp10 = [{"CtgrLv":1,"CtgrIconCd":"","CtgrNm":"현대백화점","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127182,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"백화점 의류","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127212,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"현대백화점","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/html/HyundaiDepart.html","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127254,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"영캐주얼","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=23&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127255,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"진/유니섹스","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=301&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127256,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"여성의류/란제리","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=302&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127257,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"남성정장/셔츠","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=106&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127258,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"남성 캐주얼","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=107&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127259,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"스포츠/아웃도어","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=111&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127260,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":2,"CtgrIconCd":"","CtgrNm":"백화점 잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127253,"AddInfoLinkPopupYn":"N","CtgrKindCd":"01","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"핸드백/지갑","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=109&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127262,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"구두/잡화","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=110&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127263,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"},{"CtgrLv":3,"CtgrIconCd":"","CtgrNm":"명품화장품","AddInfoLinkUrl":"","AddInfoLinkUseYn":"N","CtgrGrpCd":"010","CtgrLinkUrl":"http://www.11st.co.kr/browsing/HyundaiDeptAction.tmall?method=getMiddleCategory&ctgrNo=112&ctgrType=I","AddInfoClassText":"","AddInfoUseYn":"N","RefCtgrNo":0,"AddInfoClassNm":"","CtgrBoldUseYn":"N","CtgrTxtColor":"","RefCtgrCd":"","CtgrNo":127264,"AddInfoLinkPopupYn":"N","CtgrKindCd":"03","CtgrLinkPopupYn":"N"}]

FooterData.popularCornerList = [{"title":{"DispObjNm":"인기코너","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"쇼핑기획전","DispObjLnkUrl":"http://www.11st.co.kr/html/exhibition/117162.html"},{"DispObjNm":"오늘의 핫이슈","DispObjLnkUrl":"http://www.11st.co.kr/browsing/NewPlusZonePlace.tmall?method=getTodayIssue&addCtgrNo=942652&naviTab=1"},{"DispObjNm":"11번가랭킹","DispObjLnkUrl":"http://www.11st.co.kr/html/bestSellerMain.html#thisClickImg_"},{"DispObjNm":"미니몰홈","DispObjLnkUrl":"http://www.11st.co.kr/minimall/MiniMallFindAction.tmall?method=getMiniMallFind"},{"DispObjNm":"전세계배송관","DispObjLnkUrl":"http://www.11st.co.kr/html/browsing/worldDelivery/worldDeliveryMain.html"},{"DispObjNm":"중고STREET","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=SECONDHAND&ctgrNo=54818"},{"DispObjNm":"공구베스트 100","DispObjLnkUrl":"http://www.11st.co.kr/html/CoopBest100.html"},{"DispObjNm":"희망쇼핑","DispObjLnkUrl":"http://www.11st.co.kr/browsing/WishShopMainPlace.tmall?method=getWishShopMainAct"}]},{"title":{"DispObjNm":"인기백화점","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"패션백화점","DispObjLnkUrl":"http://www.11st.co.kr/html/FashionDept.html"},{"DispObjNm":"현대백화점","DispObjLnkUrl":"http://www.11st.co.kr/html/HyundaiDepart.html"},{"DispObjNm":"리빙백화점","DispObjLnkUrl":"http://www.11st.co.kr/html/livingMain.html"},{"DispObjNm":"대구백화점","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=edebec"},{"DispObjNm":"아이파크백화점","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=iparkm"},{"DispObjNm":"롯데닷컴","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=LOTTE&ctgrNo=59322"},{"DispObjNm":"AK플라자","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=akplaza1"}]}];

FooterData.popularMallList = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"해외쇼핑","DispObjLnkUrl":"http://global.11st.co.kr/html/global/globalMain.html"},{"DispObjNm":"명예의 전당","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=STARSOHO&ctgrNo=59330"},{"DispObjNm":"디자이너편집샵","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=FASHIONDNA&ctgrNo=55927"},{"DispObjNm":"싸이닉","DispObjLnkUrl":"http://scinic.11st.co.kr/html/beauty/scinicBrandMain.html"},{"DispObjNm":"건강클리닉센터","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=Senior"},{"DispObjNm":"기프티콘전문관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=GIFTICON&ctgrNo=60086"},{"DispObjNm":"스포츠 브랜드관","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=sports"},{"DispObjNm":"아웃도어/캠핑관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=OUTDOOR&ctgrNo=59385"},{"DispObjNm":"미시패션관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=MISSY&ctgrNo=59138"},{"DispObjNm":"브랜드에비뉴","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=BRANDAVENUE&ctgrNo=61470"},{"DispObjNm":"카스트릿","DispObjLnkUrl":"http://carstreet.11st.co.kr"}]},{"title":{"DispObjNm":"마트식품전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"홈플러스 전문관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=HOMEPLUS&ctgrNo=62272"},{"DispObjNm":"GS슈퍼마켓","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=GSSUPERMARKET&ctgrNo=53285"},{"DispObjNm":"수입식품전문관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=IMPFOOD&ctgrNo=61437"},{"DispObjNm":"CJ On Mart","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=CJONMART"}]}];

FooterData.popularMallListCtgr1 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"해외쇼핑","DispObjLnkUrl":"http://global.11st.co.kr/html/global/globalMain.html "},{"DispObjNm":"패션백화점","DispObjLnkUrl":"http://www.11st.co.kr/html/FashionDept.html"},{"DispObjNm":"롯데닷컴","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=LOTTE&ctgrNo=59322"},{"DispObjNm":"대구백화점","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=edebec"},{"DispObjNm":"아이파크백화점","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=iparkm"},{"DispObjNm":"AK플라자","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=akplaza1"}]}];

FooterData.popularMallListCtgr2 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"SOHO 11","DispObjLnkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ID=SOHO&ctgrNo=55549"},{"DispObjNm":"명예의 전당 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=STARSOHO&ctgrNo=59330"},{"DispObjNm":"디자이너편집샵 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=FASHIONDNA&ctgrNo=55927"},{"DispObjNm":"미시패션관 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=MISSY&ctgrNo=59138"}]}];

FooterData.popularMallListCtgr3 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"뷰티11번가 ","DispObjLnkUrl":"http://beauty.11st.co.kr/html/beauty/beautyMain.html"},{"DispObjNm":"싸이닉 ","DispObjLnkUrl":"http://scinic.11st.co.kr/html/beauty/scinicBrandMain.html"}]}];

FooterData.popularMallListCtgr4 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"마트11번가 ","DispObjLnkUrl":"http://www.11st.co.kr/html/martMain.html"},{"DispObjNm":"수입식품전문관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=IMPFOOD&ctgrNo=61437"},{"DispObjNm":"유아동백화점","DispObjLnkUrl":"http://www.11st.co.kr/browsing/LivingDSSubAction.tmall?method=getLivingDSMiddleCategory&dispCtgrNo=383014"},{"DispObjNm":"홈플러스 전문관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=HOMEPLUS&ctgrNo=62272"}]}];

FooterData.popularMallListCtgr5 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"리빙백화점","DispObjLnkUrl":"http://www.11st.co.kr/html/livingMain.html"},{"DispObjNm":"건강클리닉센터","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=Senior"},{"DispObjNm":"홈앤쇼핑 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=HNSMALL&ctgrNo=59095"}]}];

FooterData.popularMallListCtgr6 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"스포츠 브랜드관 ","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=sports"},{"DispObjNm":"아웃도어/캠핑관 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=OUTDOOR&ctgrNo=59385"},{"DispObjNm":"공구/산업전문 스피드몰 ","DispObjLnkUrl":"http://www.11st.co.kr/browsing/Bsshop.tmall?method=getBsshop&bsshopId=mrokorea"}]}];

FooterData.popularMallListCtgr7 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"캐논 브랜드관 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=CANON&ctgrNo=55941"},{"DispObjNm":"카메라브랜드관","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=CAMERABRAND&ctgrNo=59951"}]}];

FooterData.popularMallListCtgr8 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"티켓11번가 ","DispObjLnkUrl":"http://ticket.11st.co.kr/11st/Main.asp"},{"DispObjNm":"여행11번가 ","DispObjLnkUrl":"http://tour.11st.co.kr/html/vertical/tourMain.html"},{"DispObjNm":"기프티콘전문관 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=GIFTICON&ctgrNo=60086"}]}];

FooterData.popularMallListCtgr9 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"명예의전당 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=STARSOHO&ctgrNo=59330"},{"DispObjNm":"디자이너편집샵 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=FASHIONDNA&ctgrNo=55927"},{"DispObjNm":"미시패션관 ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=MISSY&ctgrNo=59138"},{"DispObjNm":"스타일캘린더 ","DispObjLnkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?method=getSohoMall&ctgrNo=55686"}]}];

FooterData.popularMallListCtgr10 = [{"title":{"DispObjNm":"인기전문관","DispObjLnkUrl":"http://"},"ctgrList":[{"DispObjNm":"현대 Hmall ","DispObjLnkUrl":"http://www.11st.co.kr/disp/DTAction.tmall?ID=HMALL&ctgrNo=46432"}]}];

FooterData.businessBannerList1 = [{"DispObjNm":"클리어런스","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=898424","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080717470737390_8244055_1.jpg"},{"DispObjNm":"바캉스시즌 꼭 필요해","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=1930346","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080717480733281_8244056_1.jpg"}];
FooterData.businessBannerList2 = [{"DispObjNm":"시즌오프 할인 행사","DispObjLnkUrl":"http://deal.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=982758515","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080717490709619_8244057_1.jpg"},{"DispObjNm":"썸머클리어런스","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897303","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080717490737133_8244058_1.jpg"}];
FooterData.businessBannerList3 = [{"DispObjNm":"울긋불긋 성난피부 진정","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897344","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080717500757593_8244059_1.jpg"},{"DispObjNm":"셀러브리티 LOOK","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=8984221","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080718060700297_8244080_1.jpg"}];
FooterData.businessBannerList4 = [{"DispObjNm":"한가위쇼핑특권","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=898414","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/12599/2014080717380744581_8244020_1.jpg"}];
FooterData.businessBannerList5 = [{"DispObjNm":"주방브랜드위크","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=898419","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/12599/201408071747074243_8244024_1.jpg"}];
FooterData.businessBannerList6 = [{"DispObjNm":"레저 클리어런스","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897309","LnkBnnrImgUrl":"/browsing/banner/2014/08/01/7967/2014080110410108275_8237435_1.jpg"}];
FooterData.businessBannerList7 = [{"DispObjNm":"삼성 갤럭시 탭4","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897336","LnkBnnrImgUrl":"/browsing/banner/2014/07/28/4955/2014072813562829515_8232901_1.jpg"}];
FooterData.businessBannerList8 = [{"DispObjNm":"쇼핑습관","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=896681","LnkBnnrImgUrl":"/browsing/banner/2014/08/01/12154/2014080113400141978_8237521_1.jpg"},{"DispObjNm":"여름방학 맞춤","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=896955","LnkBnnrImgUrl":"/browsing/banner/2014/07/30/6294/2014073015483054970_8235180_1.jpg"}];
FooterData.businessBannerList9 = [{"DispObjNm":"스타일캘린더","DispObjLnkUrl":"http://soho.11st.co.kr/sohomall/SohoAction.tmall?ctgrNo=55549&method=getSohoMall","LnkBnnrImgUrl":"/browsing/banner/2014/08/11/11225/2014081111501130602_8248067_1.jpg"},{"DispObjNm":"신상 5% 할인","DispObjLnkUrl":"http://shop.11st.co.kr/iamyurigo","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080718070724774_8244082_1.jpg"}];
FooterData.businessBannerList10 = [{"DispObjNm":"스타일 아는 Brand","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=1922888","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080718090729927_8244086_1.jpg"},{"DispObjNm":"고품격 브랜드","DispObjLnkUrl":"http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=1925339","LnkBnnrImgUrl":"/browsing/banner/2014/08/07/11225/2014080718100701827_8244087_1.jpg"}];


FooterData.gnbMetaCtgrAdBanner = {"DATA":[{"INDEX":0},{"INDEX":1},{"INDEX":2,"ICONIMG":"더샘","ALT":"더샘 8월 해피샘데이 최대50% 할인","OURL":"http://ds.11st.co.kr/NetInsight/text/11st/11st_all/11st_all@GNB_box_3","SUBCODE":"MAINSCG0405","CODE":"MAINMCG0405","IMG1":"http://i.011st.com/ds/2014/08/08/322/e35a1cf8ff7ca5cfde75e0d0e88bcaff.jpg","TARGET":"","LURL1":"http://ds.11st.co.kr/click/11st/11st_all/11st_all@GNB_box_3?ads_id=18884&creative_id=18210&click_id=16737"},{"INDEX":3,"ICONIMG":"하기스기저귀","ALT":"하기스 기저귀 기획전","OURL":"http://ds.11st.co.kr/NetInsight/text/11st/11st_all/11st_all@GNB_box_4","SUBCODE":"MAINSCG0505","CODE":"MAINMCG0505","IMG1":"http://i.011st.com/ds/2014/07/25/322/547b07147edaed9fd9505d7eb050b8ef.jpg","TARGET":"","LURL1":"http://ds.11st.co.kr/click/11st/11st_all/11st_all@GNB_box_4?ads_id=18567&creative_id=18018&click_id=16536"},{"INDEX":4,"ICONIMG":"피앤지MBCI","ALT":"피앤지MBCI","OURL":"http://ds.11st.co.kr/NetInsight/text/11st/11st_all/11st_all@GNB_box_5","SUBCODE":"MAINSCG0605","CODE":"MAINMCG0605","IMG1":"http://i.011st.com/ds/2014/07/07/322/19f51930a2eb148762cbb97034af0ee9.jpg","TARGET":"","LURL1":"http://ds.11st.co.kr/click/11st/11st_all/11st_all@GNB_box_5?ads_id=17665&creative_id=17843&click_id=16362"},{"INDEX":5,"ICONIMG":"계양","ALT":"계양 신제품 출시 이벤트","OURL":"http://ds.11st.co.kr/NetInsight/text/11st/11st_all/11st_all@GNB_box_6","SUBCODE":"MAINSCG0705","CODE":"MAINMCG0705","IMG1":"http://i.011st.com/ds/2014/08/08/322/abf43e08f7fb877351021501aa416601.jpg","TARGET":"","LURL1":"http://ds.11st.co.kr/click/11st/11st_all/11st_all@GNB_box_6?ads_id=18533&creative_id=18220&click_id=16747"},{"INDEX":6,"ICONIMG":"동양매직","ALT":"동양매직 제습기 프로젝트","OURL":"http://ds.11st.co.kr/NetInsight/text/11st/11st_all/11st_all@GNB_box_7","SUBCODE":"MAINSCG0805","CODE":"MAINMCG0805","IMG1":"http://i.011st.com/ds/2014/08/08/18/e3c80b86831249233eb77ad9d1d4fccb.jpg","TARGET":"","LURL1":"http://ds.11st.co.kr/click/11st/11st_all/11st_all@GNB_box_7?ads_id=18755&creative_id=18207&click_id=16734"},{"INDEX":7,"ICONIMG":"아시안게임","ALT":"인천아시안게임상품판매","OURL":"http://ds.11st.co.kr/NetInsight/text/11st/11st_all/11st_all@GNB_box_8","SUBCODE":"MAINSCG0905","CODE":"MAINMCG0905","IMG1":"http://i.011st.com/ds/2014/08/01/18/2deadcc745e13db31690fb1be62bda0b.jpg","TARGET":"","LURL1":"http://ds.11st.co.kr/click/11st/11st_all/11st_all@GNB_box_8?ads_id=18861&creative_id=18167&click_id=16694"},{"INDEX":8},{"INDEX":9}]}


function setTrGnbBanner(){var _arrTrGnbBannerImg = new Array();var _arrTrGnbBannerLnk = new Array();try{ _arrTrGnbBannerImg.push("http://i.011st.com/browsing/banner/2014/06/09/6112/2014060919490930895_8099309_1.jpg");_arrTrGnbBannerLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=846717");_arrTrGnbBannerImg.push("http://i.011st.com/browsing/banner/2014/03/24/6112/2014032419072442404_8121514_1.jpg");_arrTrGnbBannerLnk.push("http://housing.11st.co.kr/housing/Goods/Goods_DetailInfo_Utilization.aspx?GoodsCode=14000156");_arrTrGnbBannerImg.push("http://i.011st.com/browsing/banner/2014/05/09/6112/2014050909450937902_8161072_1.jpg");_arrTrGnbBannerLnk.push("http://housing.11st.co.kr/Housing/Goods/Goods_DetailInfo.aspx?GoodsCode=041892");_arrTrGnbBannerImg.push("http://i.011st.com/browsing/banner/2014/05/09/6112/2014050909460903609_8161073_1.jpg");_arrTrGnbBannerLnk.push("http://housing.11st.co.kr/event/event_view.aspx?seq=6324&region=008&");_arrTrGnbBannerImg.push("http://i.011st.com/browsing/banner/2014/05/16/6112/201405161748165089_8165034_1.jpg");_arrTrGnbBannerLnk.push("http://kaltour.11st.co.kr/exhibit/exhibit.asp?excod=1861");var trGnbBnrIdxR = parseInt(Math.floor(Math.random() * 5));document.getElementById("trGnbBannerImg").src= getCommonImgUrl(_arrTrGnbBannerImg[trGnbBnrIdxR]);document.getElementById("trGnbBannerLnk").href= "javascript:goStatUrl('" + _arrTrGnbBannerLnk[trGnbBnrIdxR] + "','TOB0105');";}catch(e){}}
var _arrSearchTextAdTxt = new Array();var _arrSearchTextAdLnk = new Array();var _arrSearchTextAdTrcNo = new Array();var _arrSearchTextAdRank = new Array();var _arrSearchTextAdPrdNo = new Array();
function setGnbKwdAd(){ try{ _arrSearchTextAdTxt.push("미사용전시 박스개봉 삼성노트북 특가판매!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=189033739");_arrSearchTextAdTrcNo.push("1201408123198892212");_arrSearchTextAdRank.push(10.0);_arrSearchTextAdPrdNo.push(189033739);_arrSearchTextAdTxt.push("담배냄새 종결자");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=832435757");_arrSearchTextAdTrcNo.push("1201408123198892216");_arrSearchTextAdRank.push(10.0);_arrSearchTextAdPrdNo.push(832435757);_arrSearchTextAdTxt.push("pH5.5 저자극 약산성 세안제 트러블피부맞춤");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=856343928");_arrSearchTextAdTrcNo.push("1201408123198892218");_arrSearchTextAdRank.push(10.0);_arrSearchTextAdPrdNo.push(856343928);_arrSearchTextAdTxt.push("가려움/비듬/머리기름 인체 적용 시험 완료!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=26740572");_arrSearchTextAdTrcNo.push("1201408123198892220");_arrSearchTextAdRank.push(10.0);_arrSearchTextAdPrdNo.push(26740572);_arrSearchTextAdTxt.push("후기 5000개 돌파! 얼굴경락기구");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=286580178");_arrSearchTextAdTrcNo.push("1201408123198892225");_arrSearchTextAdRank.push(10.0);_arrSearchTextAdPrdNo.push(286580178);_arrSearchTextAdTxt.push("여드름 1위 기적의 비누");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=218706706");_arrSearchTextAdTrcNo.push("1201408123198892228");_arrSearchTextAdRank.push(4.2);_arrSearchTextAdPrdNo.push(218706706);_arrSearchTextAdTxt.push("여드름흔적1위! 달팽이수분크림");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1048712774");_arrSearchTextAdTrcNo.push("1201408123198892230");_arrSearchTextAdRank.push(4.2);_arrSearchTextAdPrdNo.push(1048712774);_arrSearchTextAdTxt.push("번들거림 NO 피지잡는 마다가스카르 수분크림");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=991294550");_arrSearchTextAdTrcNo.push("1201408123198892231");_arrSearchTextAdRank.push(4.2);_arrSearchTextAdPrdNo.push(991294550);_arrSearchTextAdTxt.push("SBS.KBS방송! 토소웅 모공브러쉬정품19900원클릭");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=8496619");_arrSearchTextAdTrcNo.push("1201408123198892237");_arrSearchTextAdRank.push(4.2);_arrSearchTextAdPrdNo.push(8496619);_arrSearchTextAdTxt.push("토소웅 폼클렌징4종구성택1 특가9900원+무료배송");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=11987052");_arrSearchTextAdTrcNo.push("1201408123198892239");_arrSearchTextAdRank.push(4.2);_arrSearchTextAdPrdNo.push(11987052);_arrSearchTextAdTxt.push("11번가에서 가장 많이 팔린 썬크림1위 클릭");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=8530265");_arrSearchTextAdTrcNo.push("1201408123198892240");_arrSearchTextAdRank.push(4.2);_arrSearchTextAdPrdNo.push(8530265);_arrSearchTextAdTxt.push("11번가MD추천 남성화장품판매1위! 주문폭주!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=7549175");_arrSearchTextAdTrcNo.push("1201408123198892241");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdPrdNo.push(7549175);_arrSearchTextAdTxt.push("임산부사춘기튼살개선! 1+1초특가구성! 클릭");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=29040026");_arrSearchTextAdTrcNo.push("1201408123198892243");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdPrdNo.push(29040026);_arrSearchTextAdTxt.push("하기스 프리미어 플러스 축탄생선물!!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897176");_arrSearchTextAdTrcNo.push("1201407303171133692");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("하기스 프리미어 플러스 축탄생선물!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897176");_arrSearchTextAdTrcNo.push("1201407303171133691");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("무전기 한정특가!! 레져스포츠용/업무용 ");_arrSearchTextAdLnk.push("http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=510248525");_arrSearchTextAdTrcNo.push("1201406133083901730");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("OK캐쉬백앱에입력하고100%쿠폰받자");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897340");_arrSearchTextAdTrcNo.push("1201408073186310493");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("11번가 할인권 100% 득템!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897340");_arrSearchTextAdTrcNo.push("1201408073186310496");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("11번가 할인권 100% 득템 방법?");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897340");_arrSearchTextAdTrcNo.push("1201408073186310492");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("多당첨 페스티벌! 쿠폰받자!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897340");_arrSearchTextAdTrcNo.push("1201408073186310494");_arrSearchTextAdRank.push(1.1);_arrSearchTextAdTxt.push("多당첨 페스티벌~ 쿠폰받자!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897340");_arrSearchTextAdTrcNo.push("1201408073186310495");_arrSearchTextAdRank.push(1.5);_arrSearchTextAdTxt.push("11번가 할인권 100% 당첨!");_arrSearchTextAdLnk.push("http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=897340");_arrSearchTextAdTrcNo.push("1201408073186310491");_arrSearchTextAdRank.push(1.5);var searchTextAdIdx = getRanNumWeight(_arrSearchTextAdRank);var gnbFormObj = document.forms['GNBSearchForm'];document.getElementById('AKCKwd').value = _arrSearchTextAdTxt[searchTextAdIdx];document.getElementById('adUrl').value = _arrSearchTextAdLnk[searchTextAdIdx];document.getElementById('adKwdTrcNo').value = _arrSearchTextAdTrcNo[searchTextAdIdx];document.getElementById('AKCKwd').blur();document.getElementById('gnbTxtAd_divId').title =  document.getElementById('gnbTxtAd_divId').title + _arrSearchTextAdTrcNo[searchTextAdIdx];document.getElementById('adPrdNo').value = _arrSearchTextAdPrdNo[searchTextAdIdx];}catch(e){} }

function setGnbSubBannerSub(){}




var _stckImg2 =[];
var stck = function( pageId, zoneId, trcNo, redirectNo, redirectUrl, target, option , clickType)
{
	if( trcNo != null )
	{
		if( isValidTrcCode(trcNo) )
		{

			if(clickType == undefined || clickType == ''){

				clickType = "C";   //C 인경우는 클릭,I 노출
			}

			var img = new Image();
			_stckImg2.push(img);
			if( document.location.href.indexOf( "https" ) == 0 )
			{
				if(document.location.href.indexOf( "login" ) > 0) {
					img.src = 'https://www.11st.co.kr/login/a.st?a=' + pageId + zoneId + clickType + trcNo + "^" + "&noCache=" + (new Date()).getTime();
				} else {
					img.src = 'https://www.11st.co.kr/a.st?a=' + pageId + zoneId + clickType + trcNo + "^" + "&noCache=" + (new Date()).getTime();
				}
			}
			else
			{
				img.src = 'http://st.11st.co.kr/a.st?a=' + pageId + zoneId + clickType + trcNo + "^" + "&noCache=" + (new Date()).getTime();
			}

			try {
				banner_clickthru ( pageId+zoneId, pageId+zoneId+trcNo );
			} catch (e) {}
		}

		if( redirectUrl != null && redirectUrl != '' )
		{
			if( target != null && target != '' )
			{
				if( option != null && option != '' ) window.open( redirectUrl, target, option );
				else				 				 window.open( redirectUrl, target );
			}
			else
			{
				location.href = redirectUrl;
			}
		}
	}
};

var _hdstckImg1=[];
var hdStck = function( channel, typGubn, areaGubn, areaLoadCnt, logicFlag, order, trcNo, clickType)
{
	try {
		if( trcNo != null )
		{
			if(clickType == undefined || clickType == ''){
				clickType = "I";   //C 인경우는 클릭,I 노출
			}
			var trackingInfo = channel + typGubn + areaGubn + "_" + areaLoadCnt + logicFlag + order + clickType + trcNo;
			hdStckSimple(trackingInfo);
		}
	} catch(e) {}
};

var hdStckSimple = function(trackingInfo) {
	try {
		var img = new Image();
		_hdstckImg1.push(img);

		if( document.location.href.indexOf( "https" ) == 0 ) {
			img.src = "https://www.11st.co.kr/track.st?turl=" + trackingInfo + "^";
		} else {
			img.src = "http://st.11st.co.kr/track.st?turl=" + trackingInfo + "^";
		}
	} catch(e) {}
};

var _hdstckUrl=[];
var hdStckPush = function( channel, typGubn, areaGubn, areaLoadCnt, logicFlag, order, trcNo, clickType)
{
	try {
		if( trcNo != null )
		{
			if(clickType == undefined || clickType == ''){
				clickType = "I";   //C 인경우는 클릭,I 노출
			}

			var trackingInfo = channel + typGubn + areaGubn + "_" + areaLoadCnt + logicFlag + order + clickType + trcNo + "^";
			_hdstckUrl.push(trackingInfo);
		}
	} catch(e) {}
};

var hdStckPushSimple = function(trackingInfo) {
	try {
		if(trackingInfo != null) {
			_hdstckUrl.push(trackingInfo + "^");
		}
	} catch(e) {}
};

var hdStckFlush = function() {
	try {
		if(_hdstckUrl != null && _hdstckUrl.length > 0) {

			var baseURL;
			if( document.location.href.indexOf( "https" ) == 0 ) {
				baseURL = "https://www.11st.co.kr/track.st?turl=";
			} else {
				baseURL = "http://st.11st.co.kr/track.st?turl=";
			}

			var tempParam = '';
			for(idx=0; idx < _hdstckUrl.length; idx++) {
				tempParam += _hdstckUrl[idx];
				if(idx > 0 && idx%9 == 0) {
					var img = new Image();
					img.src = baseURL + tempParam;
					tempParam = "";
				}
			}
			if(tempParam != "") {
				var img = new Image();
				img.src = baseURL + tempParam;
			}
			if(_hdstckUrl != null && _hdstckUrl.length > 0) {
				_hdstckUrl.splice(0, _hdstckUrl.length);
			}
		}
	} catch(e) {}
};

try
{
	var ad_list = new Array();
	var arrIdx = 0;
	var t_cells = document.getElementsByTagName("div");

	function ADImpression(){

		for (var i = 0; i < t_cells.length; i++) {
			var t_link = t_cells[i].getAttribute("title");
			if ( t_link == null ) continue;
			if( isValidTrcStrLength( t_link ) )
			{
				if( isValidTrcStrChar( t_link ) )
				{
					if( isValidTrcStrTrcCode( t_link ) ) {
						ad_list[arrIdx] = t_link;
						arrIdx++;
					}
				}
			}
		}
		throwImpression();
	}

	function splitByUnitByteLength(arrList, size, strDelimiter) {
		var byteLength = 0, addLength, lineNo = 0;
		var rtn = new Array();
		rtn[lineNo] = "";

		for ( var k = 0; k < arrList.length; k++ ) {

			addLength = arrList[k].length + 1;

			if ( byteLength + addLength > size ) {
				rtn[++lineNo] = "";
				byteLength = 0;
			}
			if ( trim(arrList[k]).length > 0 ) {
				rtn[lineNo] += arrList[k] + strDelimiter;
				byteLength += addLength;
			}
		}
		return rtn;
	}

	//Remove Duplicated Unit
	Array.prototype.unique = function() {
		var a = {};
		for(var i=0 ; i< this.length ; i++) {
			if( typeof a[this[i]] == "undefined" )
				a[this[i]] = 1;
		}

		this.length = 0;

		for(var i in a) {
			this[this.length] = i;
		}

		return this;
	}

	function throwImpression(){
		var arr = splitByUnitByteLength(ad_list, 1900, "^");

		//ad. Impression Request
		for (var j=0; j < arr.length ; j++ ) {

			if( arr[j].length > 1 )
			{
				var img = new Image();
				_stckImg2.push(img);
				// cache 방지를 위해 시간 추가
				if( document.location.href.indexOf( "https" ) == 0 )
				{
					if(document.location.href.indexOf( "login" ) > 0) {
						img.src = 'https://www.11st.co.kr/login/a.st?a=' +arr[j] + '&noCache='+(new Date()).getTime();;
					} else {
						img.src = 'https://www.11st.co.kr/a.st?a=' +arr[j] + '&noCache='+(new Date()).getTime();;
					}
				}
				else
				{
					img.src = 'http://st.11st.co.kr/a.st?a='+arr[j] + '&noCache='+(new Date()).getTime();
				}
			}
		}
	}
}
catch( exp ){}






//푸터 공통팝업 컨트롤









(function(){	
	try{
		if(typeof(removeCookie) === "function") {
			var GCArr = ["djid", "nssoauthdomain", "ssoprovidertoken", "stdomaincookie", "stdomaintoken", "__utma", "__utmb", "__utmc", "__utmv", "__utmz", "s_lv", "espresso_viewAdvToolbar", "XTLID", "XTVID", "KonanAKC"];
			for(var idx=0, size=GCArr.length; idx < size; idx++){	
				removeCookie(GCArr[idx], ".11st.co.kr", "/");
			}
		}
	} catch(e){}
})(); 
