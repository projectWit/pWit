(function($) {

 var banner2013092502eFfect = function(element, options){
   var settings = $.extend({}, $.fn.banner2013092502effect.defaults, options); //초반 셋팅값 가져오기
     var vars = {
            currentSlide: 0,
			oldSlide: 0,
            totalSlides: 0,
		    randAnim: '',
			titleAnim: '',
            running: false,
            paused: false,
            stop: false
        };

       var slider = $(element);		
	   
		slider.find('.part').each(function() {
            $(".partNum", slider).append('<div class="Num wap_Num' + vars.totalSlides + '" rel="' + vars.totalSlides + '"><a href="#" class="link">'+(vars.totalSlides+1)+'</a></div>');
			vars.totalSlides++;
		});    
		
		//초기셋팅 
	  vars.oldSlide = vars.currentSlide;
	  
	  var $partNum = $(".partNum");
	  var $Pt_partNum = $partNum.parent();
	  var numLeft =  ($Pt_partNum.width() - $partNum.width()) / 2;

	  $partNum.css({'left':numLeft+'px'});
	  
	 $(".wap_Num" + vars.currentSlide, slider).addClass("active");

	 $(".part", slider).find("img").css({'float':'left','position': 'relative','width':'90%', 'height' : '90%'});
	 $(".part", slider).find("img").css({'left':  ( ($(".part").width() - $(".part", slider).find("img").width())/2 ) + 'px', 'top' : ( ($(".part").height() - $(".part", slider).find("img").height())/2  ) + 'px'});

	 $(".part[rel='" + vars.currentSlide + "']", slider).css({'z-index' : '50', 'opacity':1}).find("img").css({ 'left':'0px','top':'0px','width':'100%','height':'100%' });

   
	
	 var timer = 0;
	timer = setInterval(function(){ imgeffectRun(slider, settings, false); }, settings.pauseTime);


	var imgeffectRun = function(slider, settings, nudge){
       //Trigger the lastSlide callback
			
	        vars.runing = true;
            if(vars && (vars.currentSlide == vars.totalSlides - 1)){ 
				settings.lastSlide.call(this);
			}
            if((!vars || vars.stop) && !nudge) return false;
			settings.beforeChange.call(this);
			//이전꺼 처리
			vars.currentSlide++;		
			if(vars.currentSlide == vars.totalSlides){ 
				
				vars.currentSlide = 0;
				vars.startSlide =0;
				
				settings.slideshowEnd.call(this);	
			}		 

            
       if(vars.oldSlide == vars.currentSlide){
		}else{

			$(".wap_Num" + vars.oldSlide, slider).removeClass("active");			
			$(".part[rel='" + vars.oldSlide + "']", slider).animate({"left" : "-" + $(".part[rel='" + vars.oldSlide + "']", slider).width() + 'px'}, settings.animSpeed,'',function(){
					$(this).css({'left':'0px','opacity':'0','z-index':'1'})
					$(this).find("img").css({'width':'90%', 'height' : '90%'});					
					$(this).find("img").css({'left':  ( ($(this).width() - $(this).find("img").width())/2 ) + 'px', 'top' : ( ($(this).height() - $(this).find("img").height())/2  ) + 'px'});

			});
			 
			 $(".wap_Num" + vars.currentSlide, slider).addClass("active");
			$(".part[rel='" + vars.currentSlide + "']", slider).find("img").animate({"left" :  '0px','top':'0px', 'width' : $(".part[rel='" + vars.currentSlide + "']", slider).width() + 'px', 'height' : $(".part[rel='" + vars.currentSlide + "']", slider).height() + 'px'}, settings.animSpeed,'',function(){});
			$(".part[rel='" + vars.currentSlide + "']", slider).css({'opacity':'0.3'}).animate({'opacity':'1','z-index':'50'}, settings.animSpeed, '', function(){ vars.runing = false; });		

		}
		   	    
    
	
	vars.oldSlide = vars.currentSlide;			
	}
   
   //오버설정
   //멈춤기능활성화시기위해서 부분 제거

    slider.hover(function(){
		
                vars.paused = true;
                clearInterval(timer);
                timer = '';           
		
            }, function(){
			
                vars.paused = false;
				if(timer == '' && !settings.manualAdvance){
					timer = setInterval(function(){   imgeffectRun(slider,  settings, false);	}, settings.pauseTime);
				}
			
      });
    
$(".Num", slider).click(function(){
		vars.oldSlide = vars.currentSlide;	
		vars.currentSlide = $(this).attr("rel") -1;
		imgeffectRun(slider,  settings, true);

});

$(".partNum", slider).find("a").trigger('focus').focus(function(){
	if(vars.runing == false){
		  clearInterval(timer);
          timer = '';      
	
		  vars.oldSlide = vars.currentSlide;	
		  vars.currentSlide = $(this).parent().attr("rel") -1;
		  imgeffectRun(slider,  settings, true);
	}
});

$(".partNum", slider).find("a").trigger('focusout').focusout(function(){
		 if(timer == '' && !settings.manualAdvance){
					timer = setInterval(function(){   imgeffectRun(slider,  settings, false);	}, settings.pauseTime);
		}
	})


   settings.afterLoad.call(this);
	return this;
	 };


  
 $.fn.banner2013092502effect = function(options) {
    //데이터 로딩셋팅
        return this.each(function(key, value){
            var element = $(this);
			
			 banner2013092502eFfect($(element), options);
			  $("a:last").focus();
        });

	};

//Default settings
	$.fn.banner2013092502effect.defaults = {
		animSpeed: 1000, //이벤트 속도
		pauseTime: 4000, //대기시간
	
		pauseOnHover: true,
		beforeChange: function(){},	
		afterChange: function(){},
		slideshowEnd: function(){},
        lastSlide: function(){},
        afterLoad: function(){}
	};
	
	$.fn._reverse = [].reverse;

})(jQuery);

