// JavaScript Document

var windowSizeArray = [ "width=420,height=500", "width=300,height=400,scrollbars=yes" ];

$(document).ready(function(e) {
	
	if ($('#loginStatus').val() == "true") {
		if (parseInt($('#powerStudy').val()) > 0) {
			
		} else {	// 알파스터디 관리자가 아닐 때
			$('#ibm-common-menu').css('height', '0px');
//			$('#ibm-common-menu').hide();
//			$('.ibm-menu-subtabs').hide();
			$('#ibm-menu-links li').removeAttr('onmouseover');
		}
	} else {	// 로그인 하지 않았을 때
		$('#ibm-common-menu').css('height', '0px');
//		$('#ibm-common-menu').hide();
//		$('.ibm-menu-subtabs').hide();
		$('#ibm-menu-links li').removeAttr('onmouseover');
	}
	
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
		} else if ($('#alIdText').val()=="") {
			e.preventDefault();
			alert("강의를 선택해 주세요");
		} else if ($('.lecTime').children('option[value=0]:selected').size() > 6) {
			e.preventDefault();
			alert("강의시각을 선택해 주세요");
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
	$('#findLectureResult tr').click(function(e) {
		$('#alIdText', opener.document).val($(this).children('td').eq(0).text());
		$('#alName', opener.document).val($(this).children('td').eq(1).text());
		window.close();
	});
	
	$('#numPerPage').val($('#numPerPageSET').val());
	$('.paging a').click(function(e) {
//		alert($(this).attr('value'));
		$('#curPage').val($(this).attr('value'));
		$(this).parents('form').submit();
	});
	$('#numPerPage').change(function(e) {
		$('#curPage').val("");
		$(this).parents('form').submit();
	});
	
	$('.paging a[value="'+$('#curPage').val()+'"]').addClass('activePage');
});

function hideCommonMenu() {
	$('#ibm-common-menu').hide();
}