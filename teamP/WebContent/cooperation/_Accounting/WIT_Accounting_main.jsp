<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="robots" content="noindex,nofollow" />
<title>WIT는 당신을 환영합니다!</title>
<!--[if lt IE 9]>
<script src="dist/html5shiv.js"></script>
<![endif]-->
<style type="text/css">
</style>
<link type="text/css" rel="stylesheet" href="css/2_base.css" />
<link type="text/css" rel="stylesheet" href="css/2_layout.css" />
<link type="text/css" rel="stylesheet" href="css/2_table.css" />
<link type="text/css" rel="stylesheet" href="css/2_menu.css" />
<link type="text/css" rel="stylesheet" href="css/2_rpt_print.css" />
<link type="text/css" rel="stylesheet" href="css/2_etc.css" />
<link type="text/css" rel="stylesheet" href="css/2_setting.css" />
<link type="text/css" rel="stylesheet" href="css/dhtmlwindow.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../script/jquery-ui.js"></script>
<script src="script/highcharts.js"></script>
<script src="script/exporting.js"></script>
<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Monthly Gragh'
        },
        xAxis: {
            categories: [
                         '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'
               /*  'Jan',
                'Feb',
                'Mar',
                'Apr',
                'May',
                'Jun',
                'Jul',
                'Aug',
                'Sep',
                'Oct',
                'Nov',
                'Dec' */
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: '월 금액 (천원단위)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: '월 매출',
            data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

        }, {
            name: '월 매입원가',
            data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

        }, {
            name: '월 기타비용',
            data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

        }, {
            name: '월 순이익',
            data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

        }]
    });
});
</script>
</head>
<body">
	<form method="get" action="" id="form1">
	<div id="wrap" style="margin: auto;margin-bottom: 20px;margin-top: 20px;">
			<div id="contents">
			<p class="reporting_title" style="position:relative;"></p>
				<table summary="" class="eb_reporting">
					<col width="300px" />
					<col width="300px" />
					<col width="300px" />
					<col width="300px" />
					<tr>
						<td>
							<dl>
								<dt>경영자료</dt>
								<dd id=""><a href="WIT_Accounting_dFundsStatus.jsp">자금현황표</a></dd>
								<dd id=""><a href="WIT_Accounting_cashVary.jsp">자금증감내역</a></dd>
								<dd id=""><a href="WIT_Accounting_monthly_IS.jsp">월별손익분석</a></dd>
								<dd id=""><a href="WIT_Accounting_monthly_CA.jsp">월별원가분석</a></dd>
								<dd id=""><a href="WIT_Accounting_confirmationTerm.jsp">채권/채무회수기간표</a></dd>
								<dd id=""><a href="WIT_Accounting_confirmationBank.jsp">채권잔액분석표</a></dd>
								<dd id=""><a href="#">경영요약보고서</a></dd>
							</dl>
						</td>
						<td>
							<dl>
								<dt>재무제표</dt>
								<dd id=""><a href="WIT_Accounting_balanceSheet.jsp">대차대조표</a></dd>
								<dd id=""><a href="WIT_Accounting_incomeStatement.jsp">손익계산서</a></dd>
								<dd id=""><a href="WIT_Accounting_trialBalance.jsp">시산표</a></dd>
								<dd id=""><a href="WIT_Accounting_cashFlow.jsp">현금흐름표</a></dd>
								<dd id=""><a href="#">이익잉여금처분계산서</a></dd>
								<dd id=""><a href="WIT_Accounting_costSpecification.jsp">원가명세서</a></dd>
							</dl>
						</td>
						<td>
							<dl>
								<dt>장부</dt>
								<dd id=""><a href="WIT_Accounting_journal.jsp">분개장</a></dd>
								<dd id=""><a href="WIT_Accounting_ledger.jsp">계정별원장</a></dd>
								<dd id=""><a href="WIT_Accounting_customersLedger.jsp">거래처별거래내역</a></dd>
								<dd id=""><a href="WIT_Accounting_cashBook.jsp">현금출납장</a></dd>							
								<dd id=""><a href="WIT_Accounting_psLedger.jsp">매입/매출장</a></dd>
								<dd id=""><a href="WIT_Accounting_pLedger.jsp">매입집계표</a></dd>
								<dd id=""><a href="WIT_Accounting_sLedger.jsp">매출집계표</a></dd>
							</dl>
						</td>
						<td style="border-right: 0;">
							<dl>
								<dt>기타</dt>
								<dd id=""><a href="WIT_Accounting_slipList.jsp">고정자산현황</a></dd>
								<dd id=""><a href="WIT_Accounting_slipList.jsp">감가상각현황</a></dd>
								<dd id=""><a href="WIT_Accounting_slipList.jsp">전표현황</a></dd>
								<dd id=""><a href="WIT_Accounting_customersList.jsp">거래처관리대장</a></dd>
								<dd id=""><a href="WIT_Accounting_customersList.jsp">부서목록</a></dd>
								<dd id=""><a href="WIT_Accounting_accountsList.jsp">회계계정</a></dd>
								<dd id=""><a href="WIT_Accounting_accountsList.jsp">내용참조</a></dd>
							</dl>
						</td>
					</tr>
				</table>
			</div>
			<!--contents end-->
			<div id="container" style="width:1024px; min-width: 310px; height: 310px; margin: 0 auto; margin-top: 20px;"></div>
		</div>		
	</form>
</body>
</html>