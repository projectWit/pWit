
(function($) {
	var _currentMenuNum = 0;
	
		var gnb11stEvent = {
				
				init : function(element, options){
					 var settings = $.extend({}, $.fn.gnb11st.defaults, options);
					 var vars = {						
							totalSlides: 0				
							};
					 var slider = $(element);	
					 
					 this.setting(slider, vars, settings);
					
					 this.Event(slider, settings);

					 $('#gnbMenu3 .arrow').bind({
						 mouseover : function(e){	

							 $('#gnbMenu3 > ul > li').eq(_currentMenuNum).mouseover();
						 }
					 });

				},
				setting : function(slider, vars, settings){				
					$("#gnbMenu3>ul>li",slider).each(function(){
						$(this).css({ 'background-position':'0px -' + (Number(settings.titleHeight) + ($(this).height()*vars.totalSlides) ) + 'px'}).attr("rel", vars.totalSlides);
						vars.totalSlides ++;
					});
				},
				Event : function(slider, settings){
					
					$("li", slider).each(function(idx) {						
						var $li = $(this);						
						$li.hover(function(){							
							_currentMenuNum = idx;
							$li.addClass("selected")
								.css({'background-position': '-' + $li.width() + "px -" + (Number(settings.titleHeight) + (Number($li.attr("rel"))*$li.height())) + "px"});
							$li.find(".gnb_inner_wrap2").show();
							$(".arrow", slider).show();
							gnb11stEvent.arrow((Number($li.attr("rel"))*$li.height()), settings, slider);
						},function(){
							$(this).removeClass("selected");
							$(this).css({'background-position': "0px  -" + (Number(settings.titleHeight) + (Number($(this).attr("rel"))*$(this).height())) + "px"});
							$(this).find(".gnb_inner_wrap2").hide();
							$(".arrow", slider).hide();
						});
					});
				},
				
				arrow : function(i, settings, slider){
					$(".arrow", slider).animate({top : (i+10) + 'px'}, settings.animSpeed);
					//transform: matrix(1, 0, 0, 1, 0, 216);
					//$(".arrow", slider).css({'transform' : 'matrix(1, 0, 0, 1, 0, ' + i + ')'});
		
				}
		 };

		 $.fn.gnb11st = function(options) {

	        return this.each(function(key, value){
	            var element = $(this);
				 gnb11stEvent.init($(element), options);
	        });

		};

		$.fn.gnb11st.defaults = {
			animSpeed: 100,
			pauseTime: 4000,
			titleHeight: 37,
			arrowTop: 11
		};
		
		$.fn._reverse = [].reverse;

	})(jQuery);
 