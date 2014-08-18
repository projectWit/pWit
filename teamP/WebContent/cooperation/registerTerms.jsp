<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xml:lang="ko" lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<style>
* {
	font-family: '맑은 고딕';
}
.enter_information .family_member .ssg_article {
	float: left;
	position: relative;
//	width: 385px;
	width: 585px;
	margin-bottom: 20px;
}
.enter_information .family_member .content {
	overflow: hidden;
	width: 100%;
	padding-top: 22px;
}
.enter_information.content_primary .section_wrap, .complete_register.content_primary .section_wrap, .terms_agreement.content_primary .section_wrap, .member_certification.content_primary .section_wrap {
	width: 790px;
	margin: 0 auto;
}
.content_primary {
	float: none;
	*zoom:1: ;
	clear: both;
	position: relative;
	z-index: 1;
}
.content_primary {
	clear: both;
	width: 1020px;
	margin: 0 auto;
}
.enter_information.content_primary, .complete_register.content_primary, .terms_agreement.content_primary, .member_certification.content_primary {
	padding: 45px 0 90px 0;
}
#content {
	position: relative;
	z-index: 1;
}
#container {
	width: 100%;
}
#container {
	position: relative;
	z-index: 1;
	width: 1020px;
	margin: 0 auto;
	min-height: 300px;
}
#container::after {
	display: block;
	visibility: hidden;
	clear: both;
	width: 0px;
	height: 0px;
	content: "";
}
#wrap {
	margin: 0 auto;
	background: url(../../img/common/bg_layout_header02.gif) 0 96px repeat-x;
	-webkit-text-size-adjust: none;
	*zoom:1: ;
	position: relative;
//	width: 600px;
//	height: 300px;
	border: 1px solid red;
}
.enter_information .family_member .content h5 {
	margin-bottom: 9px;
	font-size: 12px;
	color: #272727;
}
.user_agreement {
	overflow-y: scroll;
	padding: 10px;
	border: solid 1px #dedede;
	line-height: 18px;
	font-size: 11px;
	color: #b3b3b3;
}
.enter_information .family_member .user_agreement {
	height: 83px;
	border: 1px solid #B2B2B2;
	color: #666;
}
.choice_agr.small.option_select {
	text-align: left !important;
}
.enter_information .family_member .content .option_select {
	font-size: 11px;
	color: #666;
}
.enter_information .family_member .ssg_article .all_view, .enter_information .family_member .ssg_assent .all_view, .enter_information .family_member .ssg_assent02 .all_view {
	position: absolute;
	top: 2px;
	right: 0px;
}
.enter_information .family_member .ssg_article .all_view a, .enter_information .family_member .ssg_assent .all_view a, .enter_information .family_member .ssg_assent02 .all_view a {
	font-size: 11px;
	color: #999;
}
.radio_state {
	position: relative;
	color: #303030;
}
.small.option_select label {
	margin-left: 15px;
}
.small.option_select label:first-child {
	margin-left: 0px;
}
.choice_agr.small.option_select label {
	line-height: 27px;
	font-size: 11px;
	font-weight: normal;
	color: #666;
}
.enter_information .medium.error_txt {
	display: block;
	margin-top: 0px;
	line-height: 14px;
}
input.checkbox, input.radio {
	width: 13px;
	height: 13px;
	vertical-align: middle;
}
input.checkbox, input.radio {
	width: 13px;
	height: 13px;
	margin: -1px 0 1px;
	vertical-align: middle;
}
.choice_agr.small.option_select label input {
	margin-top: -2px;
}
.enter_information .family_member .user_agreement pre {
	word-break: break-all;
	white-space: pre-line;
	line-height: 18px;
	font-size: 11px;
	font-family: '맑은 고딕',"Apple SD Gothic Neo",AppleGothic,"돋움",Dotum,Tahoma,Verdana,Geneva,Arial,Helvetica,sans-serif;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="container">
			<div class="content_primary enter_information" id="content">
				<div class="section_wrap">
				
				<form id="returnForm" action="/member/join/successEmail.ssg" method="post">
					<div class="section family_member"><div class="content" id="agreeWrap">
						<div class="ssg_article">
                        <h5>SSG 패밀리 회원 이용약관(필수)</h5>
                        <div class="user_agreement">
                            

<pre>제1조 (목적)

이 약관은 (주)신세계와 ㈜이마트(이하 "양사"라 한다)에서 운영하는 SSG닷컴(http://www.ssg.com) 및 신세계몰(http://shinsegaemall.ssg.com), 이마트몰(http://emart.ssg.com) 등의 SSG 패밀리 사이트(이하 합쳐서 "닷컴"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 "양사"와 이용자의 권리, 의무 및 책임 사항을 규정함을 목적으로 합니다.

제2조 (정의)

① "닷컴"이란 양사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터, TV, 모바일 등 정보통신 설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
② "이용자"란 "닷컴"에 접속하여 이 약관에 따라 "닷컴"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ "회원"이라 함은 "닷컴"에 개인정보를 제공하여 회원 등록을 한 자로서, "닷컴"의 정보를 지속적으로 제공 받으며, "닷컴"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
④ "비회원"이라 함은 회원에 가입하지 않고 "닷컴"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관 등의 명시와 설명 및 개정)

① "닷컴"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 "닷컴"의 초기 서비스 화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결 화면을 통하여 볼 수 있도록 할 수 있습니다.
② "닷컴"은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약 철회, 배송 책임, 환불 조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결 화면 또는 팝업 화면 등을 제공 하여 이용자의 확인을 구하여야 합니다.
※ 청약 철회, 배송, 환불에 대한 안내 보기
③ "닷컴"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ "닷컴"이 약관을 개정할 경우에는 적용 일자 및 개정 사유를 명시하여 현행 약관과 함께 "닷컴"의 초기 화면에 그 적용 일자 7일 전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관 내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예 기간을 두고 공지합니다. 이 경우 "닷컴"은 개정전 내용과 개정후 내용을 명확히 비교하여 이용자가 알기 쉽도록 표시합니다.
⑤ "닷컴"이 개정약관을 공지 또는 통지하면서 회원에게 일정 기한 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 따로 공지 또는 고지하였음에도 회원이 명시적으로 거부의사를 표시하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다. 또한, 회원이 개정약관의 적용에 동의하지 않는 경우 "닷컴"은 개정약관의 내용을 적용할 수 없으며, 이 경우, 회원은 이용계약을 해지할 수 있습니다. 다만, 기존약관을 적용할 수 없는 특별한 사정이 있는 경우에는 "닷컴"은 이용계약을 해지할 수 있습니다.
⑥ "닷컴"이 약관을 개정할 경우에는 그 개정 약관은 그 적용 일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관 조항이 그대로 적용됩니다. 다만 이 계약을 체결한 이용자가 개정 약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정 약관의 공지 기간 내에 "닷컴"에 송신하여 "닷컴"의 동의를 받은 경우에는 개정 약관 조항이 적용됩니다.
⑦ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계 법령 또는 상관례에 따릅니다.

제4조 (서비스의 제공 및 변경)

① "닷컴"은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매 계약의 체결
2. 구매 계약이 체결된 재화 또는 용역의 배송
3. 기타 "닷컴"이 정하는 업무
② "닷컴"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공 할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공 일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
③ "닷컴"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지 합니다.
④ 전항의 경우 "닷컴"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "닷컴"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제 5조 (서비스의 중단)

① "닷컴"은 컴퓨터, TV, 모바일 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
② "닷컴"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "닷컴"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
③ 사업 종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "닷컴"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "닷컴"에서 제시한 조건에 따라 소비자에게 보상 합니다. 다만, "닷컴"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "닷컴"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.

제6조 (회원가입)

① 회원으로 가입하고자 하는 이용자는 "닷컴"이 정한 가입 양식에 정해진 사항을 기입한 후 본 약관과 "개인정보의 수집, 제공 및 활용 동의서"에 동의함으로써 회원가입을 신청합니다.
② "닷컴"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입 신청자가 이 약관 제7조제3항에 의하여 이전에 회원 가입을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원 자격 상실 후 3년이 경과한 자로서 "닷컴"의 회원 재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재 누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "닷컴"의 기술상 현저히 지장이 있다고 판단되는 경우.
4. 회원가입 신청일 현재 만 14세 미만의 아동인 경우
③ 회원 가입 계약의 성립 시기는 "닷컴"의 승낙이 회원에게 도달한 시점으로 합니다.
④ 회원은 제15조 제1항에 의한 등록 사항에 변경이 있는 경우, 즉시 전자 우편 기타 방법으로 "닷컴"에 대하여 그 변경 사항을 통지하거나 수정하여야 합니다.
⑤ "닷컴"의 통합회원으로 가입하시면 “SSG 패밀리 통합” 회원 및 "신세계포인트" 회원이 되며, 패밀리사이트를 선택하여 동시 가입할 수 있습니다.
⑥ “닷컴” 의 간편가입 회원으로 가입하시면 “SSG 패밀리 통합” 회원으로만 가입됩니다.

제7조 (회원 탈퇴 및 자격 정지 등)

① 회원은 "닷컴"에 언제든지 탈퇴를 요청할 수 있으며 "닷컴"은 즉시 회원 탈퇴를 처리합니다.
② 회원이 다음 각호의 사유에 해당하는 경우, "닷컴"은 회원 자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. "닷컴"을 이용하여 구입한 재화 등의 대금, 기타 "닷컴" 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 "닷컴"이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
4. "닷컴"을 이용하여 법령 또는 이 약관이 금지하거나 공서 양속에 반하는 행위를 하는 경우
5. 회원이 사망한 경우
6. "닷컴" 화면에 음란물을 게제하거나 음란사이트를 링크시키는 경우
7. 기타 닷컴의 정상적인 영업활동 및 서비스 운영을 고의로 방해하는 행위를 하는 경우
가. “닷컴” 의 이용과정에서 직원에게 폭언, 협박 또는 음란한 언행 등을 하는 경우
나. “닷컴” 을 통해 재화 등을 구매한 후 정당한 이유 없이 상습 또는 반복적으로 취소, 반품하여 업무를 방해하는 행위
③ “닷컴"이 회원 자격을 제한, 정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정 되지 아니하는 경우 "닷컴"은 회원 자격을 상실시킬 수 있습니다.
④ "닷컴"이 회원 자격을 상실시키는 경우에는 회원 등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원 등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제8조 (회원에 대한 통지)

① "닷컴"이 회원에 대한 통지를 하는 경우, 회원이 "닷컴"과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.
② "닷컴"은 불특정 다수 회원에 대한 통지의 경우 1주일 이상 "닷컴" 게시판에 게시함으로써 개별 통지에 갈음 할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지를 합니다.

제9조 (구매신청)

"닷컴" 이용자는 "닷컴"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "닷컴"은 이용자가 구매를 신청함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.
1. 재화 등의 검색 및 선택
2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
3. 약관 내용, 청약 철회권이 제한되는 서비스, 배송료, 설치비등의 비용 부담과 관련한 내용에 대한 확인
4. 이 약관에 동의하고 위 3호의 사항을 확인하거나 거부하는 표시(예. 마우스 클릭)
5. 재화 등의 구매 신청 및 이에 관한 확인 또는 "닷컴"의 확인에 대한 동의
6. 결제 방법의 선택
7. 기타 "닷컴"이 별도로 정하는 절차

제10조 (계약의 성립)

① "닷컴"은 제9조와 같은 구매 신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정 대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
1. 신청 내용에 허위, 기재 누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 상행위(재판매)를 목적으로 구매하는 거래이거나, 거래 정황상 상행위(재판매)를 목적으로 한 구매로 판단되는 경우
4. 기타 구매 신청에 승낙하는 것이 "닷컴" 기술상 현저히 지장이 있다고 판단하는 경우
② “닷컴"의 승낙이 제12조 제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
③ "닷컴"의 승낙의 의사 표시에는 이용자의 구매 신청에 대한 확인 및 판매 가능 여부, 구매 신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.

제11조 (지급 방법)

"닷컴"에서 구매한 재화 또는 용역에 대한 대금 지급 방법은 다음 각호의 방법중 가용한 방법으로 할 수 있습니다. 단, "닷컴"은 이용자의 지급 방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
1. 온라인 무통장 입금, 폰뱅킹, 인터넷 뱅킹, 메일 뱅킹 등의 각종 계좌 이체
2. 선불 카드, 직불 카드, 신용카드 등의 각종 카드 결제
3. 전자 화폐에 의한 결제
4. 마일리지 등 "닷컴"이 지급한 포인트에 의한 결제
5. "닷컴"과 계약을 맺었거나 "닷컴"이 인정한 상품권에 의한 결제
6. 기타 전자적 지급 방법에 의한 대금 지급 등

제12조 (수신 확인 통지, 구매 신청 변경 및 취소)

① "닷컴"은 이용자의 구매 신청이 있는 경우 이용자에게 수신 확인 통지를 합니다.
② 수신 확인 통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인 통지를 받은 후 즉시 구매 신청 변경 및 취소를 요청할 수 있고 "닷컴"은 배송 전에 이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조 청약 철회 등에 관한 규정에 따릅니다.

제13조 (재화 등의 공급)

① "닷컴"은 이용자와 재화 등의 공급 시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만 "닷컴"이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 다만, 소비자와 "닷컴"간 재화 등의 공급 시기에 관하여 별도의 약정이 있는 경우에는 그러하지 아니합니다. 이때 "닷컴"은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.
② "닷컴"은 이용자가 구매한 재화에 대해 배송 수단, 수단별 배송 비용 부담자, 수단별 배송 기간 등을 명시 합니다. 만약 "닷컴"이 약정 배송 기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 "닷컴"이 고의, 과실이 없음을 입증한 경우에는 그러하지 아니합니다.

제14조 (환급)

"닷컴"은 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

제15조 (청약 철회 등)

① "닷컴"과 재화 등의 구매에 관한 계약을 체결한 이용자는 계약 내용에 관한 서면을 교부 받은 날 또는 수신 확인의 통지를 받은 날로부터 7일 이내에 청약의 철회를 할 수 있습니다. 다만 그 서면을 교부 또는 수신확인의 통지를 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등의 공급을 받거나 공급이 개시된 날부터 7일 이내에 청약의 철회를 할 수 있습니다.
② 이용자는 재화 등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우 (다만 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약 철회를 할 수 있음)
2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우
4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우
5. 그 밖에 거래의 안전을 위하여 대통령령이 정하는 경우
③ 제2항 제2호 내지 제4호의 경우에는 "닷컴"이 사전에 청약 철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용 상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약 철회 등이 제한되지 않습니다.
④ 이용자는 제1항 및 제2항의 규정에도 불구하고 재화 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약 철회 등을 할 수 있습니다.

제16조 (청약 철회 등의 효과)

① "닷컴"은 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급 합니다. 이 경우 "닷컴"이 이용자에게 재화 등의 환급을 지연한 때에는 그 지연 기간에 대하여 전자상거래등에서의 소비자보호에 관한 법률 시행령이 정하는 지연 이자율을 곱하여 산정한 지연 이자(이하 "지연 배상금"이라 한다)를 지급합니다.
② "닷컴"은 위 대금을 환급함에 있어서 이용자가 신용카드 그밖에 대통령령이 정하는 결제 수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제 수단을 제공한 사업자로 하여금 재화 등의 대금 청구를 정지 또는 취소하도록 요청합니다.
③ 청약 철회 등의 경우 공급 받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. "닷컴"은 이용자에게 청약 철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행되어 청약 철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 "닷컴"이 부담합니다.
④ 이미 재화 등이 일부 사용 또는 일부 소비된 경우에는 그 재화 등의 사용 또는 일부 소비에 의하여 소비자가 얻은 이익 또는 그 재화 등의 공급에 소요된 비용에 상당하는 금액으로서 대통령령이 정하는 범위의 금액의 지급을 이용자에게 청구할 수 있습니다.
⑤ 상품을 구매하여 적립금을 지급 받은 경우 해당 상품의 취소시 지급 받은 적립금을 환급하셔야 취소가 가능합니다.
⑥ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 "닷컴"은 청약 철회시 그 비용을 누가 부담하는지를 알기 쉽도록 명확하게 표시합니다.

제17조 (적립금 등 제도 운영)

① 적립금은 "닷컴" 내에서 현금처럼 사용할 수 있는 전자 화폐로 S-머니라고 합니다.
② "닷컴" 회원으로 가입하시고, 적립금 지급 상품을 구입하실 경우, "닷컴"의 운영정책에 따라 상품 별로 정해진 사은 적립금을 드립니다.
③ 사은 적립금은 "닷컴"에서 상품을 구매하실 경우 금액과 상관없이 현금과 동일하게 사용하실 수 있으나, (상품권, 기프트카드, PP카드, 공동구매, 여행 등 일부 품목 제외) 현금으로 교환할 수 없습니다
④ 다음의 경우 적립금이 소멸됩니다.
1. 회원을 탈퇴한 경우
2. 각 지급 적립금별 정의된 사용가능 조건 및 소멸에 대한 기준이 도래한 경우
⑤ 적립금을 이용하여 부당 이득을 취하거나, 악의적인 상거래가 발생할 경우, "닷컴"은 해당 적립금의 지급을 중지 또는 회입할 수 있습니다.
⑥ "예치금"이란 이용자가 "닷컴"이 지정한 은행계좌를 통해 온라인 무통장 입금의 방식으로 주문하였다가 취소나 반품하여 “닷컴”이 환불해야 하는 대금이지만, 고객의 요청 등에 따라 차후 주문을 위해 “닷컴”에 예치해 놓은 이자가 발생하지 않는 금원을 말합니다.

제18조 (개인정보보호)

① "닷컴"은 이용자의 정보 수집시 구매 계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수 사항으로 하며 그 외 사항은 선택 사항으로 합니다.
1. 성명
2. I-PIN등록번호 (I-PIN 가입시) /본인확인 인증결과값 (본인확인기관이 제공한 정보), 생년월일, 성별
3. 주소
4. 전화번호
5. 희망 ID (회원의 경우)
6. 비밀번호 (회원의 경우)
7. 전자우편주소 및 이동전화번호 와 각각 수신여부
8. 현금영수증 자동발급 여부
② “닷컴"이 이용자의 개인 식별이 가능한 개인 정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.
③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "닷컴"이 집니다. 다만, 다음의 경우는 예외로 합니다.
1. 배송 업무상 배송 업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
2. 통계 작성, 학술 연구 또는 시장 조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
3. 재화 등의 거래에 따른 대금 정산을 위하여 필요한 경우
4. 도용 방지를 위하여 본인 확인에 필요한 경우
5. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우
④ "닷컴"이 제2항과 제3항에 의해 이용자의 동의를 받아야만 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진및정보보호등에관한법률 제22조 등에서 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
⑤ 이용자는 언제든지 "닷컴"이 가지고 있는 자신의 개인 정보에 대해 열람 및 오류 정정을 요구할 수 있으며 "닷컴"은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "닷컴"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
⑥ "닷컴"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.
⑦ "닷컴" 또는 그로부터 개인 정보를 제공받는 제3자는 개인정보의 수집 목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.
⑧ "닷컴"이 제3자에게 회원의 개인정보를 제공하려는 경우 본 약관 제18조 3항 단서의 규정에 해당하는 경우를 제외하고는 다음 각 호의 모든 사항에 대하여 회원에게 알리고 동의를 받습니다.
1. 개인정보를 제공받는 자
2. 개인정보를 제공받는 자의 개인정보 이용목적
3. 제공하려는 개인정보의 항목
4. 개인정보를 제공받는 자의 개인정보 보유 및 이용기간
※ 개인정보와 관련된 보다 자세한 사항은 "개인정보처리방침"에 고지하고 있으며, 약관과 별도의 동의를 얻습니다.

제19조 ("닷컴"의 의무)

① "닷컴"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화, 용역을 제공하는데 최선을 다하여야 합니다.
② "닷컴"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함) 보호를 위한 보안 시스템을 갖추어야 합니다.
③ "닷컴"이 상품이나 용역에 대하여 "표시,광고의공정화에관한법률" 제3조 소정의 부당한 표시, 광고 행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.
④ "닷컴"은 이용자가 원하지 않는 영리 목적의 광고성 전자 우편을 발송하지 않습니다.

제20조 (회원의 ID 및 비밀번호에 대한 의무)

① 제 18조의 경우를 제외한 ID와 비밀번호에 관한 관리 책임은 회원에게 있습니다.
② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "닷컴"에게 통보하고 "닷컴"의 안내가 있는 경우에는 그에 따라야 합니다.

제21조 (이용자의 의무)

이용자는 다음 행위를 하여서는 안됩니다.
1. 신청 또는 변경시 허위 내용의 등록
2. 타인의 정보 도용
3. "닷컴"에 게시된 정보의 변경
4. "닷컴"이 정한 정보 이외의 정보 (컴퓨터 프로그램 등) 등의 송신 또는 게시
5. "닷컴" 기타 제3자의 저작권 등 지적 재산권에 대한 침해
6. "닷컴" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 “닷컴”에 공개 또는 게시하는 행위

제22조 (연결 웹사이트와 피연결 웹사이트 간의 관계)

① 상위 웹사이트와 하위 웹사이트가 하이퍼링크(예: 하이퍼 링크의 대상에는 문자, 그림, 동화상 등이 포함됨) 방식 등으로 연결된 경우, 전자를 연결 웹사이트라고 하고 후자를 피연결 웹사이트라고 합니다.
② 연결 웹사이트는 피연결 웹사이트가 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결 "닷컴" 초기 화면 또는 연결되는 시점의 팝업 화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.

제23조 (연결 웹사이트와 피연결 웹사이트 간의 관계)

① "닷컴"이 작성한 저작물에 대한 저작권 기타 지적 재산권은 "닷컴"에 귀속합니다.
② 이용자는 "닷컴"을 이용함으로써 얻은 정보 중 "닷컴"에게 지적 재산권이 귀속된 정보를 "닷컴"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리 목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.
③ "닷컴"은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.

제24조 (분쟁 해결)

① "닷컴"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상 처리하기 위하여 피해 보상 처리 기구인 고객만족센터를 설치 운영합니다.
② "닷컴"은 이용자로부터 제출되는 불만 사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리 일정을 즉시 통보합니다.
③"닷컴"과 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해 구제 신청이 있는 경우에는 공정거래위원회 또는 시도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.

제25조 (재판권 및 준거법)

①"닷컴"과 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방 법원의 전속 관할로 합니다. 다만 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사 소송법상의 관할 법원에 제기합니다.
②"닷컴"과 이용자간에 제기된 전자상거래 소송에는 한국법을 적용합니다.

부칙 제 1 조 (약관의 효력)

이 약관은 2014년 1월 1일부터 시행됩니다.
</pre>
                        </div>
                        <div class="option_select small choice_agr">
                            <label class="radio_state" for="agr_check_yes"><input name="agr_check" title="SSG 패밀리 회원 이용약관" class="radio joinSiteCds check_required" id="agr_check_yes" type="radio" value="40019">동의</label>
                            <label class="radio_state" for="agr_check_no"><input name="agr_check" title="동의 안함" class="radio" id="agr_check_no" type="radio" value="N">동의 인함</label>
                            <div class="msg_wrap" style="display: none;"><div class="error_txt medium"></div></div>
                        </div>
                        <!-- <div class="all_view"><a href="/comm/usageAgreement/info.ssg" target="_blank">약관전체보기</a></div> -->
                    </div></div></div></form></div></div></div></div></body>
</html>
