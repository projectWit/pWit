<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WIT OPENEX</title>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts-3d.js"></script>
<script type="text/javascript" src="OPENEXscript/exporting.js"></script>
<script type="text/javascript" src="OPENEXscript/graphics.js"></script>
<script type="text/javascript">
	$(function() {
		var categories = [ '철학일반', '철학체계', '동양철학', '서양철학', '논리학', '심리학', '윤리학',
				'종교일반', '비교종교', '불교', '그리스도교', '이슬람교', '힌두교', '기타 종교',
				'사회과학일반', '통계', '사회', '정치', '행정', '법', '교육', '국방 및 군사',
				'뉴스와 미디어', '경제일반', '기업', '금융', '재정', '노동', '국제경제', '산업',
				'전통사회경제', '각국의 경제', '부동산', '경영', '수학', '물리학', '화학', '지구과학',
				'생명과학', '건축공학', '토목건설공학', '기계공학', '자동차공학', '항공우주공학', '전기공학',
				'전자공학', '금속재료공학', '화학공학', '원자력공학', '환경공학', '조선해양공학',
				'무기 및 병기공학', '산업공학', '의학', '의학 일반', '한의학', '수의학', '약학',
				'건강 및 보건위생', 'IT 일반', '하드웨어', '소프트웨어', '통신 및 네트워크', '인터넷',
				'문화예술일반', '문학', '음악', '미술', '건축', '사진', '영화', '연극', '무용',
				'현대예술', '대중연예', '각국의 문화예술', '아시아사', '유럽사', '아프리카사', '아메리카사',
				'오세아니아사', '서양사', '역사일반' ];
		$(document).ready(
				function() {
					$('#listContainer').highcharts(
							{
								chart : {
									type : 'bar'
								},
								title : {
									text : 'OPENEX 출제 현황'
								},
								subtitle : {
									text : '2014 최근 1년간'
								},
								xAxis : [ {
									categories : categories,
									reversed : false,
									labels : {
										step : 1
									}
								}, { // mirror axis on right side
									opposite : true,
									reversed : false,
									categories : categories,
									linkedTo : 0,
									labels : {
										step : 1
									}
								} ],
								yAxis : {
									title : {
										text : null
									},
									labels : {
										formatter : function() {
											return (Math.abs(this.value) / 1)
													+ '개';
										}
									},
									min : -1000,
									max : 1000
								},

								plotOptions : {
									series : {
										stacking : 'normal'
									}
								},

								tooltip : {
									formatter : function() {
										return '<b>'
												+ this.series.name
												+ ', 분야 '
												+ this.point.category
												+ '</b><br/>'
												+ '수량: '
												+ Highcharts.numberFormat(Math
														.abs(this.point.y), 0);
									}
								},

								series : [
										{
											name : '출제 수',
											data : [ -146, -184, -200, -220,
													-201, -210, -190, -537,
													-350, -360, -310, -272,
													-200, -222, -210, -100,
													-836, -350, -500, -280,
													-388 ]
										},
										{
											name : '증가량',
											data : [ 16, 14, 2, 22, 20, 20, 19,
													50, 35, 36, 31, 22, 20, 22,
													210, 10, 506, 350, 90, 28,
													308 ]
										} ]
							});
				});

	});
</script>
</head>
<body>
	<div id="listContainer"
		style="margin: 0px auto; width: 100%; height: 550px;"></div>
</body>
</html>