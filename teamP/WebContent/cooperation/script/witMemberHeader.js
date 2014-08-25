// JavaScript Document

var currentNavIndex = -1;		// 현재 네비게이션 메뉴의 인덱스 0 1 2 3 ...
var currentSubtabIndex = -1;	// 현재 네비게이션 서브탭의 인덱스 0 1 2 3 ...

$(document).ready(function(e) {
	/*$('.ibm-mm-close span').click(function(e) {
		slideUp();
	});*/
	$('header').mouseleave(function(e) {
//		slideUp();
		$('.ibm-menu-subtabs ul').css("display", "none");
		$('#subTab-'+currentNavIndex).css("display", "block");	
	});
	
//	var currentIndex = 0;
	$('.ibm-menu-subtabs li[class*="subTab-'+currentNavIndex+'-'+currentSubtabIndex+'"]').addClass('ibm-active');
	$('.ibm-menu-subtabs li[class*="subTab-"]').hover(function(e) {
		var className = $(this).attr('class');
		var index = className.substr(9, 1);
		var subTabNum = className.substr(7, 1);

		$('.ibm-menu-subtabs li[class*="subTab-'+subTabNum+'-"]').removeClass('ibm-active');
		$('.ibm-menu-subtabs li[class="'+className+'"]').addClass('ibm-active');
		$('.ibm-menu-subtabs li[class*="subTab-'+currentNavIndex+'-'+currentSubtabIndex+'"]').addClass('ibm-active');

	});
	/*$('.ibm-menu-subtabs li[class*="subTab-"]').click(function(e) {
		var className = $(this).attr('class');
		var index = className.substr(9, 1);
		var subTabNum = className.substr(7, 1);
		currentIndex = index;
		$('.ibm-menu-subtabs li[class*="subTab-'+subTabNum+'-"]').removeClass('ibm-active');
		$('.ibm-menu-subtabs li[class="'+className+'"]').addClass('ibm-active');
	});*/
	
//	var width = document.getElementById("ibm-com").offsetWidth;
//	var height = document.getElementById("ibm-com").offsetHeight;
	var width = $(window).width();
	var height = $(window).height();
	var isDragged = false;
	$('.ibm-container .ibm-columns').css("width", width+30);
	$('.ibm-container .ibm-ribbon-pane').css("width", width);
	$('.dijitDialogUnderlayWrapper .dijitDialogUnderlay').css("width", width).css("height", height);
	$('.dijitDialog').css("left", (width/2)-200).css("top", (height/2)-166);
	var navIndex = 1;
	$(window).resize(function(e) {
		width = $(window).width();
		height = $(window).height();
//		alert(width);
		$('.ibm-container .ibm-columns').css("width", width+30);
		$('.ibm-container .ibm-ribbon-pane').css("width", width);
		
		$('.dijitDialogUnderlayWrapper .dijitDialogUnderlay').css("width", width).css("height", height);
		if (isDragged) {
			
		} else {
			$('.dijitDialog').css("left", (width/2)-200).css("top", (height/2)-166);
		}
	});
	
	
	$(window).scroll(function(){
		$('#scroll').empty();
		$('#scroll').append($(window).scrollTop());
		if ($(window).scrollTop() > 70 ){ 
			smallHeader();
		} else {
			largeHeader();
		}
	});
	$('#ibm-masthead').hover(largeHeader, mouseoutHeader);
	
	
	$(window).mousemove(function(e){
		$('#mouse').empty();
		var coord = e.pageX+', '+e.pageY;
		$('#mouse').append(coord);
	});
	$('.ibm-sso-signin').click(function(e) {
		$('.dijitDialogUnderlayWrapper').fadeIn();
		$('.dijitDialog').fadeIn();
		$('#iframe1').contents().find('.ibm-btn-cancel-sec').click(function(e) {
			$('.dijitDialogUnderlayWrapper').fadeOut();
			$('.dijitDialog').fadeOut();
		});
		$( ".dijitDialog" ).draggable({
			  drag: function( event, ui ) {
				  isDragged = true;
			  }
		});
	});
	$('.dijitDialogCloseIcon').click(function(e) {
		$('.dijitDialogUnderlayWrapper').fadeOut();
		$('.dijitDialog').fadeOut();
	});

});

function largeHeader() {
	$('#ibm-mast-options').animate({height: "21px"},50);
	$('#ibm-universal-nav').animate({height: "50px"},50);
	$('#ibm-menu-links').removeClass("ibm-access");
	$('#ibm-search-module').removeClass("ibm-access");
	$('#ibm-home').removeClass("ibm-sm-logo");
	slideDown();
}
function smallHeader() {
	$('#ibm-mast-options').animate({height: "4px"},50);
	$('#ibm-universal-nav').animate({height: "30px"},50);
	$('#ibm-menu-links').addClass("ibm-access");
	$('#ibm-search-module').addClass("ibm-access");
	$('#ibm-home').addClass("ibm-sm-logo");
	slideUp();
}
function mouseoutHeader() {
	if ($(window).scrollTop() > 70 ){ 
		smallHeader();
	} else {
		largeHeader();
	}
}
function slideUp() {
	$('#ibm-common-menu').slideUp();
//	$('#ibm-top').animate({"margin-top":"74px"});
}
function slideDown() {
	$('#ibm-common-menu').slideDown();
//	$('#ibm-top').animate({"margin-top": "120px"});
}

var navIndex = 0;
function slideRibbon(index) {
	var display = $('#ibm-common-menu').css("display");
//	alert(display);
	if (display == "none") {
		slideDown();
		navIndex = index;
//		$($('#ibm-menu-links li a')[index]).addClass("nav-active");
	} else { // 열려있으면
		/*if (currentIndex == index) {
			$('#ibm-common-menu').slideUp();
			$('#ibm-top').animate({"margin-top":"74px"});
			currentIndex = 100000;
//			$($('#ibm-menu-links li a')[index]).removeClass("nav-active");
		} else {
			currentIndex = index;
		}*/
	}
	
	/*if (index == 0) {
		$('.ibm-menu-subtabs').slideDown(1000);
	} else {
		$('.ibm-menu-subtabs').slideUp(1000);
	}
	$('#ibmweb_ribbon_2_scrollable').animate({left:(-980*index)+"px"});*/
	
	if (navIndex != index) {
		navIndex = index;
		$('.ibm-menu-subtabs ul').css("display", "none");
		$('#subTab-'+index).fadeIn();
	}
}
