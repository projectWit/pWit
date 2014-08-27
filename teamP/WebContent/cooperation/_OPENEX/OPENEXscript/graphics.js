$(function() {
	$('#openex_archive_graph').hide();
});
function graphTr() {
	if ($('#openex_archive_graph').is(':hidden')) {
		$('#openex_archive_comment').hide();
		$('#openex_archive_graph').show();
	} else if ($('#openex_archive_comment').is(':hidden')) {
		$('#openex_archive_comment').show();
		$('#openex_archive_graph').hide();
	}
}

function graph1() {
	$('#graph_space').empty();
	$('#graph_space')
			.append(
					'<div id="canvas_line" style="position: relative; height: 270px; width: 530px;"></div>');
	$('#canvas_line').highcharts(
			{
				title : {
					text : '성적 추이',
					x : -20
				// center
				},
				subtitle : {
					text : '최근 1년간',
					x : -20
				},
				xAxis : {
					categories : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ]
				},
				yAxis : {
					title : {
						text : '점수'
					},
					plotLines : [ {
						value : 0,
						width : 1,
						color : '#808080'
					} ]
				},
				tooltip : {
					valueSuffix : '점'
				},
				legend : {
					layout : 'vertical',
					align : 'right',
					verticalAlign : 'middle',
					borderWidth : 0
				},
				series : [
						{
							name : '최고 점수',
							data : [ 7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2,
									26.5, 23.3, 18.3, 13.9, 9.6 ]
						},
						{
							name : '내 점수',
							data : [ -0.2, 0.8, 5.7, 11.3, 17.0, 21.5, 25.2,
									24.1, 20.1, 14.1, 8.6, 2.5 ]
						},
						{
							name : '평균 점수',
							data : [ -0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6,
									17.9, 14.3, 9.0, 3.9, 1.0 ]
						},
						{
							name : '최하 점수',
							data : [ 3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0,
									16.6, 14.2, 10.3, 6.6, 4.8 ]
						} ]
			});
};
function graph2() {
	$('#graph_space').empty();
	$('#graph_space')
			.append(
					'<div id="canvas_pie" style= "position: relative; height: 270px; width: 530px;"></div>');
	var colors = Highcharts.getOptions().colors, categories = [ '난이도 상',
			'난이도 중', '난이도 하' ], data = [ {
		y : 9,
		color : colors[0],
		drilldown : {
			name : '난이도 상',
			categories : [ '정답자', '오답자' ],
			data : [ 2, 7 ],
			color : colors[0]
		}
	}, {
		y : 46,
		color : colors[1],
		drilldown : {
			name : '난이도 중',
			categories : [ '정답자', '오답자' ],
			data : [ 34, 11 ],
			color : colors[1]
		}
	}, {
		y : 45,
		color : colors[2],
		drilldown : {
			name : '난이도 하',
			categories : [ '정답자', '오답자' ],
			data : [ 40, 5 ],
			color : colors[2]
		}
	}, ], browserData = [], versionsData = [], i, j, dataLen = data.length, drillDataLen, brightness;

	// Build the data arrays
	for (i = 0; i < dataLen; i += 1) {

		// add browser data
		browserData.push({
			name : categories[i],
			y : data[i].y,
			color : data[i].color
		});

		// add version data
		drillDataLen = data[i].drilldown.data.length;
		for (j = 0; j < drillDataLen; j += 1) {
			brightness = 0.2 - (j / drillDataLen) / 5;
			versionsData.push({
				name : data[i].drilldown.categories[j],
				y : data[i].drilldown.data[j],
				color : Highcharts.Color(data[i].color).brighten(brightness)
						.get()
			});
		}
	}

	// Create the chart
	$('#canvas_pie').highcharts(
			{
				chart : {
					type : 'pie'
				},
				title : {
					text : '자바 문법 중급 50문제'
				},
				yAxis : {
					title : {
						text : 'Total percent market share'
					}
				},
				plotOptions : {
					pie : {
						shadow : false,
						center : [ '50%', '50%' ]
					}
				},
				tooltip : {
					valueSuffix : '%'
				},
				series : [
						{
							name : '문제 점유율',
							data : browserData,
							size : '60%',
							dataLabels : {
								formatter : function() {
									return this.y > 5 ? this.point.name : null;
								},
								color : 'white',
								distance : -30
							}
						},
						{
							name : '비율',
							data : versionsData,
							size : '80%',
							innerSize : '60%',
							dataLabels : {
								formatter : function() {
									// display only if larger than 1
									return this.y > 1 ? '<b>' + this.point.name
											+ ':</b> ' + this.y + '%' : null;
								}
							}
						} ]
			});
};

function graph3() {
	$('#graph_space').empty();
	$('#graph_space')
			.append(
					'<div id="canvas_name" style="overflow: auto; position: relative; height: 270px; width: 320px"></div>');
};

$(function() {
	var categories = [ '철학일반', '철학체계', '동양철학', '서양철학', '논리학', '심리학', '윤리학',
			'종교일반', '비교종교', '불교', '그리스도교', '이슬람교', '힌두교', '기타 종교', '사회과학일반',
			'통계', '사회', '정치', '행정', '법', '교육', '국방 및 군사', '뉴스와 미디어', '경제일반',
			'기업', '금융', '재정', '노동', '국제경제', '산업', '전통사회경제', '각국의 경제', '부동산',
			'경영', '수학', '물리학', '화학', '지구과학', '생명과학', '건축공학', '토목건설공학', '기계공학',
			'자동차공학', '항공우주공학', '전기공학', '전자공학', '금속재료공학', '화학공학', '원자력공학',
			'환경공학', '조선해양공학', '무기 및 병기공학', '산업공학', '의학', '의학 일반', '한의학', '수의학',
			'약학', '건강 및 보건위생', 'IT 일반', '하드웨어', '소프트웨어', '통신 및 네트워크', '인터넷',
			'문화예술일반', '문학', '음악', '미술', '건축', '사진', '영화', '연극', '무용', '현대예술',
			'대중연예', '각국의 문화예술', '아시아사', '유럽사', '아프리카사', '아메리카사', '오세아니아사',
			'서양사', '역사일반' ];
	$(document)
			.ready(
					function() {
						$('#listContainer')
								.highcharts(
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
														return (Math
																.abs(this.value) / 1)
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
															+ Highcharts
																	.numberFormat(
																			Math
																					.abs(this.point.y),
																			0);
												}
											},

											series : [
													{
														name : '출제 수',
														data : [ -146, -184,
																-200, -220,
																-201, -210,
																-190, -537,
																-350, -360,
																-310, -272,
																-200, -222,
																-210, -100,
																-836, -350,
																-500, -280,
																-388 ]
													},
													{
														name : '증가량',
														data : [ 16, 14, 2, 22,
																20, 20, 19, 50,
																35, 36, 31, 22,
																20, 22, 210,
																10, 506, 350,
																90, 28, 308 ]
													} ]
										});
					});

});