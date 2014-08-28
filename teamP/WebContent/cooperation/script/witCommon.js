// JavaScript Document
$(document).ready(function(e) {
	$('.ibm-mm-close span').click(function(e) {
		slideUp();
	});
	/*$('#ibm-common-menu').mouseleave(function(e) {
		slideUp();
	});*/
	$('header').mouseleave(function(e) {
		slideUp();
	});
	
	/* $('#ibm-menu-links li').click(function(e) {
		$('#ibm-common-menu').slideToggle();
//		alert($('#ibm-menu-links li').length);
		var index = 0;
//		alert($('#ibm-menu-links li')[0]);
		alert($(this).clicked);
		for (var i=0; i<$('#ibm-menu-links li').length; i++) {
			if ($(this) == $('#ibm-menu-links li')[i]) {
				index = i;
				alert(index);
			}
		}
	}); */

	var currentIndex = 0;
	$('.ibm-menu-subtabs li[class*="subTab-"]').hover(function(e) {
		if ($(this).hasClass('ibm-active')) {
			
		} else {
	//		alert("헐");
			$('div[class~="ibm-col-5-4"]').animate({display:"none", opacity:0}).css('display', 'none');
			var className = $(this).attr('class');
			var index = className.substr(9, 1);
			var subTabNum = className.substr(7, 1);
			$($('div[class~="ibm-col-5-4"]')[index]).animate({display:"block", opacity:1}).css('display', 'block');
	
			$('.ibm-menu-subtabs li[class*="subTab-'+subTabNum+'-"]').removeClass('ibm-active', 400);
			$('.ibm-menu-subtabs li[class="'+className+'"]').addClass('ibm-active');
	//		$('.ibm-menu-subtabs li[class*="subTab-'+subTabNum+'-'+currentIndex+'"]').addClass('ibm-active');

		} // end if ($(this).hasClass('ibm-active')) 
	});
	
//	var width = document.getElementById("ibm-com").offsetWidth;
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
		$('.ibm-container .ibm-ribbon-section').css("left", (navIndex-1)*(width+30)*(-1));
		
		$('.dijitDialogUnderlayWrapper .dijitDialogUnderlay').css("width", width).css("height", height);
		if (isDragged) {
			
		} else {
			$('.dijitDialog').css("left", (width/2)-200).css("top", (height/2)-166);
		}
	});
	
	$('.ibm-ribbon-nav .ibm-ribbon-view').click(function(e) {
		var className = $(this).attr("class");
		navIndex = className.substr(31,1);
//		alert(navIndex);
		changeContainerImg(navIndex, width);
	});
	
	setTimeout(function(e) {
		navIndex = 2;
		changeContainerImg(navIndex, width);
	}, 2000);
	setTimeout(function(e) {
		navIndex = 3;
		changeContainerImg(navIndex, width);
	}, 4000);
	setTimeout(function(e) {
		navIndex = 1;
		changeContainerImg(navIndex, width);
	}, 6000);
	
	/* var className = $('.ibm-ribbon-nav .ibm-ribbon-view').attr("class");
	var navIndex = className.substr(31,1);
	alert(navIndex); */
	
	$(window).scroll(function(){
		$('#scroll').empty();
		$('#scroll').append($(window).scrollTop());
		if ($(window).scrollTop() > 70 ){ 
			smallHeader();
		} else {
			largeHeader();
		}
//		alert($(window).scrollTop());
	});
	$('#ibm-masthead').hover(largeHeader, mouseoutHeader);
	
	
	$(window).mousemove(function(e){
		$('#mouse').empty();
		var coord = e.pageX+', '+e.pageY;
		$('#mouse').append(coord);
	});
	$('.ibm-sso-signin').click(function(e) {
		showLogin();
		/*if ($('#loginStatus').val()=="true" ) {	// 로그인 상태가 true 일 때는 로그아웃의 요청이다
//			window.open("closeSession.jsp", "", "width=0, height=0");
			$('#loginStatusForm').submit();
		} else {
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
		} // end if ($('#loginStatus').val()=="true" )
*/	});
	$('.dijitDialogCloseIcon').click(function(e) {
		$('.dijitDialogUnderlayWrapper').fadeOut();
		$('.dijitDialog').fadeOut();
	});
});

function showLogin() {
	if ($('#loginStatus').val()=="true" ) {	// 로그인 상태가 true 일 때는 로그아웃의 요청이다
//		window.open("closeSession.jsp", "", "width=0, height=0");
		$('#loginStatusForm').submit();
	} else {
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
	} // end if ($('#loginStatus').val()=="true" )
}

function changeContainerImg(navIndex, width) {
	$('.ibm-ribbon-nav a').removeClass("ibm-active");
	$($('.ibm-ribbon-nav a')[navIndex-1]).addClass("ibm-active");
	$('.ibm-container .ibm-columns img.ibm-no-mobile').animate({left:(navIndex-1)*(width+30)*(-1)}, 200);
	$('.ibm-container .ibm-ribbon-section').animate({left:(navIndex-1)*(width+30)*(-1)},500);
}
function largeHeader() {
	$('#ibm-mast-options').animate({height: "21px"},50);
	$('#ibm-universal-nav').animate({height: "50px"},50);
	$('#ibm-menu-links').removeClass("ibm-access");
	$('#ibm-search-module').removeClass("ibm-access");
	$('#ibm-home').removeClass("ibm-sm-logo");
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
	$('#ibm-top').animate({"margin-top":"74px"});
}
function slideDown() {
	$('#ibm-common-menu').slideDown();
	$('#ibm-top').animate({"margin-top": "366px"});
}

var currentIndex = 100000;
function slideRibbon(index) {
	var display = $('#ibm-common-menu').css("display");
//	alert(display);
	if (display == "none") {
		slideDown();
		currentIndex = index;
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
	
	if (index == 0) {
		$('.ibm-menu-subtabs').slideDown(1000);
	} else {
		$('.ibm-menu-subtabs').slideUp(1000);
	}
	$('#ibmweb_ribbon_2_scrollable').animate({left:(-980*index)+"px"});
}
