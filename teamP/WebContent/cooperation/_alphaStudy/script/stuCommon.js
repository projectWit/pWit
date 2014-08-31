// JavaScript Document

var windowSizeArray = [ "width=420,height=470", "width=300,height=400,scrollbars=yes" ];

$(document).ready(function(e) {
	$('.tabs a').click(function(e) {
		$('.tabs a').removeClass('tab-active');
		$(this).addClass('tab-active');
		var item = $('.tab-active');
		var index = $('.tabs a').index(item);
//		alert(index);
		$('table[id*="table-"]').hide();
		$('#table-'+index).show();
	});
	
	$('.tab-table .tabTable-td tr').click(function(e) {
		$('.tab-table .tabTable-td tr').removeClass('selected');
		$(this).addClass('selected');
	});
	
	$('#lecSubmit').click(function(e) {
		$('#lecResult').slideDown();
//		e.preventDefault();
	});
	$('#lecReset').click(function(e) {
		$('#lecResult').slideUp();
	});
	$('#stuSubmit').click(function(e) {
		$('#stuResult').slideDown();
		e.preventDefault();
	});
	$('#stuReset').click(function(e) {
		$('#stuResult').slideUp();
	});
	$('#regSubmit').click(function(e) {
		if ($('#tIdText').val()=="") {
			e.preventDefault();
			alert("강사를 선택해 주세요");
		}
	});
	
	/*$('#findTeacher').click(function(e) {
		window.open("/teamP/cooperation/_alphaStudy/p_findTeacher.jsp", "강사 검색", "width=420, height=470");
	});*/
	$('.newWindow').click(function (event){
		 
        var url = $(this).attr("href");
        var windowName = "popUp";		// or $(this).attr("name");
        var windowSize = windowSizeArray[$(this).attr("rel")];

        window.open(url, windowName, windowSize);

        event.preventDefault();

    });
	$('#findTeacherResult tr').click(function(e) {
		$('#tIdText', opener.document).val($(this).children('td').eq(0).text());
		$('#tName', opener.document).val($(this).children('td').eq(1).text());
		window.close();
	});
});