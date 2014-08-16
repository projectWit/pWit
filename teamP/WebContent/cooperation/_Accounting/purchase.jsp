<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>매입전표</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<style>
body {
	font-size: 14px;
}

.title {
	text-align: center;
	height: 40px;
	font-size: 18px;}

.all {
	width: 100%;	
	margin-top: 30px;
	text-align: left;}

.contents {
height: 400px;}

.innercontents {margin: auto;}
tr td{border: 1px solid black;height: 15px;}
input {width: 30%;height: 100%; float: left;background: #eff7fd;}
.img {display: inline;float: left; height: 149%;cursor: pointer;}
.bottombuttons{margin: 0 auto;}
</style>
<body>
	<form action="#" method="get">
		<div class="all">
			<div class="title">
				<div>매입전표</div>
			</div>
			<div class="contents">
				<fieldset>
					<table class="innercontents">
						<col width="150px" />
						<col width="" />
						<tr>
							<th>전표일자</th>
							<td><input type="text"/>
							<img src='images/WebResource.gif' class="img"/>
							</td>
						</tr>
						<tr>
							<th>계정과목</th>
							<td><input type="text" readonly="readonly"/><img class="img"
								src="images/Icon_zoom.gif" />
							</td>
						</tr>
						<tr>
							<th>부서코드</th>
							<td><input type="text" readonly="readonly"/><img class="img"
								src="images/Icon_zoom.gif" />
							</td>
						</tr>
						<tr>
							<th>프로젝트코드</th>
								<td><input type="text" readonly="readonly"/>
								<img src="images/Icon_zoom.gif"
									 alt="프로젝트검색" class="img"/>
								</td>
						</tr>
						<tr>
							<th>부가세유형 <a href="#"
								onclick="alert('매출을 일으키면서 세금신고에 근거가 되는 정규증빙을 발행할 때 다음 중에서 선택합니다.\n\n* 세금계산서 : 일반적인 매출 세금계산서입니다. \n\n* 계산서 : 세금계산서처럼 정규증빙이지만 간이영수증과는 다릅니다. 면세품목을 거래할 때 발행합니다.\n\n면세품목 - 미가공식품(야채, 과일, 해산물, 고기, 생선 등등), 책 등을 취급하는 경우입니다.\n\n* 영세율 : 세율이 0인 품목을 파는 경우입니다. 예 - 장애인 품목(휠체어 등), 수출품(국내 거래)\n\n* 고정자산 : 차량을 중고로, 혹은 컴퓨터, 가구, 냉장고, 에어컨 등을 팔 경우입니다.\n\n* 수출 : 재화(물품)나 용역(사람의 노동)을 직수출하는 경우입니다.\n\n* 주민등록번호 : 개인에게 물건을 팔 때, 세금계산서에 주민등록번호를 기재하는 경우입니다.');">
									<img src='images/icon_q.gif' alt="도움말" /></a>
							</th>
							<td><input type="text" readonly="readonly"/><select style="width: 24%; height: 110%; float: left;">
									<option value="11ㆍ0.10000ㆍNㆍㆍ0ㆍ11ㆍKO-11ㆍ100.00"
										style="color: #cc0000;" selected="selected">세금계산서</option>
									<option value="12ㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-22ㆍ100.00"
										style="color: #cc0000;">영세율</option>
									<option value="13ㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-12ㆍ100.00"
										style="color: #cc0000;">계산서</option>
									<option value="14ㆍ0.10000ㆍYㆍㆍ0ㆍ11ㆍKO-18ㆍ100.00"
										style="color: #cc0000;">소매매출</option>
									<option value="16ㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-24ㆍ100.00"
										style="color: #cc0000;">수출</option>
									<option value="17ㆍ0.10000ㆍYㆍㆍ0ㆍ11ㆍKO-15ㆍ100.00"
										style="color: #cc0000;">카드매출</option>
									<option value="18ㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-14ㆍ100.00"
										style="color: #cc0000;">계산서(고정자산)</option>
									<option value="19ㆍ0.10000ㆍNㆍㆍ0ㆍ11ㆍKO-13ㆍ100.00"
										style="color: #cc0000;">세.계(고정자산)</option>
									<option value="1Aㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-19ㆍ100.00"
										style="color: #cc0000;">소매(면세)</option>
									<option value="1Bㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-17ㆍ100.00"
										style="color: #cc0000;">카드매출(면세)</option>
									<option value="1Cㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-21ㆍ100.00"
										style="color: #cc0000;">현금영수증(면세)</option>
									<option value="1Dㆍ0.10000ㆍYㆍㆍ0ㆍ11ㆍKO-20ㆍ100.00"
										style="color: #cc0000;">현금영수증</option>
									<option value="1Fㆍ0.10000ㆍNㆍㆍ0ㆍ22ㆍKO-30ㆍ100.00"
										style="color: #cc0000;">매입자발행세금계산서</option>
									<option value="1Gㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-23ㆍ100.00"
										style="color: #cc0000;">영세율(기타)</option>
									<option value="1Zㆍ0.00000ㆍNㆍㆍ0ㆍ12ㆍKO-49ㆍ100.00"
										style="color: #cc0000;">기타매출</option>
							</select>
						</tr>
						<tr>
							<th>거래처 <a><img src="images/icon_q.gif" alt="도움말"
									onclick="alert('기초등록 > 거래처등록에 등록 되어있는 거래처만 검색됩니다.\n\n거래처 검색창에 커서를 놓고 Tab키 또는 Enter키를 치면 입력할 거래처를 선택할 수 있습니다.\n\n거래처가 등록되지 않은 경우는 거래처검색창에서 [간편등록]버튼을 클릭하여 신규등록 가능합니다.');" /></a>
							</th>
							<td><input type="text" readonly="readonly"/> <img class="img"
								src="images/Icon_zoom.gif" alt="검색" />
						</tr>
						<tr>
							<th>공급가액</th>
							<td><input type="text"/> <a href="#" >공급가액계산</a> <a
								href="#" id="a_trx_amt_f"> 외화 </a></td>
						</tr>
						<tr>
							<th>부가세</th>
							<td><input type="text"/></td>
						</tr>
						<tr>
							<th>수수료 <a><img src="images/icon_q.gif" alt="도움말"
									onclick="alert('입력한 수수료 만큼 차변의 채권계정의 금액이 감소하고, 지급수수료(판) 계정의 금액이 증가합니다.');" /></a>
							</th>
							<td><input type="text" readonly="readonly"/></td>
						</tr>
						<tr>
							<th>적요</th>
							<td><input type="text" style="width: 100%;" /></td>
						</tr>
						<tr>
							<th>매출유형</th>
							<td><input type="text" readonly="readonly"/><img src="images/Icon_zoom.gif"
								class="img" alt="검색" /></td>
						</tr>
					</table>
				</fieldset>
			</div>
			<div>
				<input type="button" value="저장" class="bottombuttons" /><input type="button" value="저장/전표" class="bottombuttons" />
				<input type="button" value="다시작성" class="bottombuttons" />
			</div>
		</div>
	</form>
</body>
</html>