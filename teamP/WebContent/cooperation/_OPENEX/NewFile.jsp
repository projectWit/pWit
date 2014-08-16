<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../script/jquery-2.1.1.js"></script>
<script type="text/javascript" src="OPENEXscript/wz_jsgraphics2.js"></script>
<script type="text/javascript" src="OPENEXscript/pie.js"></script>
<script type="text/javascript" src="OPENEXscript/graph.js"></script>
<script type="text/javascript" src="OPENEXscript/highcharts.js"></script>
<script type="text/javascript" src="OPENEXscript/exporting.js"></script>
<script type="text/javascript">
	$(function() {

		var g = new graph();
		g.add("title1", 1);
		g.add("title2", 2);
		g.render("abc", "title");

		var p = new pie();
		p.add("title1", 1);
		p.add("title2", 2);
		p.render("def", "title", 200);
	});
	$(function() {
		$('#container').highcharts(
				{
					title : {
						text : '성적 추이',
						x : -20
					//center
					},
					subtitle : {
						text : '최근 1년간',
						x : -20
					},
					xAxis : {
						categories : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ]
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
								data : [ -0.2, 0.8, 5.7, 11.3, 17.0, 21.5,
										25.2, 24.1, 20.1, 14.1, 8.6, 2.5 ]
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
	});
	
	$(function () {

	    var colors = Highcharts.getOptions().colors,
	        categories = ['MSIE', 'Firefox', 'Chrome', 'Safari', 'Opera'],
	        data = [{
	            y: 55.11,
	            color: colors[0],
	            drilldown: {
	                name: 'MSIE versions',
	                categories: ['MSIE 6.0', 'MSIE 7.0', 'MSIE 8.0', 'MSIE 9.0'],
	                data: [10.85, 7.35, 33.06, 2.81],
	                color: colors[0]
	            }
	        }, {
	            y: 21.63,
	            color: colors[1],
	            drilldown: {
	                name: 'Firefox versions',
	                categories: ['Firefox 2.0', 'Firefox 3.0', 'Firefox 3.5', 'Firefox 3.6', 'Firefox 4.0'],
	                data: [0.20, 0.83, 1.58, 13.12, 5.43],
	                color: colors[1]
	            }
	        }, {
	            y: 11.94,
	            color: colors[2],
	            drilldown: {
	                name: 'Chrome versions',
	                categories: ['Chrome 5.0', 'Chrome 6.0', 'Chrome 7.0', 'Chrome 8.0', 'Chrome 9.0',
	                    'Chrome 10.0', 'Chrome 11.0', 'Chrome 12.0'],
	                data: [0.12, 0.19, 0.12, 0.36, 0.32, 9.91, 0.50, 0.22],
	                color: colors[2]
	            }
	        }, {
	            y: 7.15,
	            color: colors[3],
	            drilldown: {
	                name: 'Safari versions',
	                categories: ['Safari 5.0', 'Safari 4.0', 'Safari Win 5.0', 'Safari 4.1', 'Safari/Maxthon',
	                    'Safari 3.1', 'Safari 4.1'],
	                data: [4.55, 1.42, 0.23, 0.21, 0.20, 0.19, 0.14],
	                color: colors[3]
	            }
	        }, {
	            y: 2.14,
	            color: colors[4],
	            drilldown: {
	                name: 'Opera versions',
	                categories: ['Opera 9.x', 'Opera 10.x', 'Opera 11.x'],
	                data: [ 0.12, 0.37, 1.65],
	                color: colors[4]
	            }
	        }],
	        browserData = [],
	        versionsData = [],
	        i,
	        j,
	        dataLen = data.length,
	        drillDataLen,
	        brightness;


	    // Build the data arrays
	    for (i = 0; i < dataLen; i += 1) {

	        // add browser data
	        browserData.push({
	            name: categories[i],
	            y: data[i].y,
	            color: data[i].color
	        });

	        // add version data
	        drillDataLen = data[i].drilldown.data.length;
	        for (j = 0; j < drillDataLen; j += 1) {
	            brightness = 0.2 - (j / drillDataLen) / 5;
	            versionsData.push({
	                name: data[i].drilldown.categories[j],
	                y: data[i].drilldown.data[j],
	                color: Highcharts.Color(data[i].color).brighten(brightness).get()
	            });
	        }
	    }

	    // Create the chart
	    $('#container2').highcharts({
	        chart: {
	            type: 'pie'
	        },
	        title: {
	            text: 'Browser market share, April, 2011'
	        },
	        yAxis: {
	            title: {
	                text: 'Total percent market share'
	            }
	        },
	        plotOptions: {
	            pie: {
	                shadow: false,
	                center: ['50%', '50%']
	            }
	        },
	        tooltip: {
	            valueSuffix: '%'
	        },
	        series: [{
	            name: 'Browsers',
	            data: browserData,
	            size: '60%',
	            dataLabels: {
	                formatter: function () {
	                    return this.y > 5 ? this.point.name : null;
	                },
	                color: 'white',
	                distance: -30
	            }
	        }, {
	            name: 'Versions',
	            data: versionsData,
	            size: '80%',
	            innerSize: '60%',
	            dataLabels: {
	                formatter: function () {
	                    // display only if larger than 1
	                    return this.y > 1 ? '<b>' + this.point.name + ':</b> ' + this.y + '%'  : null;
	                }
	            }
	        }]
	    });
	});
</script>
</head>
<body>
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	<div id="container2"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	<div id="abc"
		style="overflow: auto;  position: relative; height: 300px; width: 400px; border: 1px solid red;"></div>
	<div id="def"
		style="overflow: auto; position: relative;float: left; height: 400px; width: 400px; border: 1px solid black;"></div>
</body>

</html>