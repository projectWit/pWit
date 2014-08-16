/**
 *	본플러그인은 저작권자의 허락을 듣하여 블루비에서 판매하고 있으며 저작권표시를 삭제하거나 무단 배포 또는 카피하였을경우 저작권법에 따라 처벌 받으실수 있습니다.
 * @name jquery.Slideshow.js
 * @description Slideshow
 * @author 조만묵 (muki2009@nate.com)
 */

(function($) {
	
	var number_skitter = 0,
	skitters = [];
	
	$.fn.slideshow = function(options) {
		return this.each(function() {
			$(this).data('skitter_number', number_skitter);
			skitters.push(new $ss(this, options, number_skitter));
			++number_skitter;
		});
	};

	var defaults = {
		opacity		: 				0.8,
		pauseTime	: 				4500, 
		animation	: 				1000,
		timer		: 				0,
		imgheight	:				0,
		imgwidth	:				0,
		heightcut	:				20,
		widthcut	:				20,
		boxwidth	:				200,
		boxheight	:				300,
		bultwidth	:				400,
		bultheight	:				30,
		boxtop		:				50,
		lineheight	:				20,
		boxright	:				10,
		bultTop		:				300,
		bultLeft	:				150,
		controllerboxWidth :		30,
		
		prevSlide	:				0,
		nextSlide	:				0,
		currentSlide:				0,
		oldprev		:				0,
		oldnext		:				0,
		oldSlide	:				0,
		totalSlides	:				0,
		maskcolor	:				"#FFFFFF",
		tmpboxwidth	:				42,
		tmpboxheight:				42,
		animation_type	:				"",
		viewbult	:			true,
		viewlist :				false,
		cntview	:				false,
		runing	:				false,
	};
	
	$.slideshow = function(obj, options, number) {
		this.slide = $(obj);
		this.timer = null;
		this.settings = $.extend({}, defaults,  options || {});
		this.setup();
	};
	
	// Shortcut
	var $ss = $.slideshow;
	
	$ss.fn = $ss.prototype = {};
	
	$ss.fn.extend = $.extend;
	
	$ss.fn.extend({
		
		setup: function() 
		{
			var self = this;
			//윤곽만들기
			this.skin();
			this.Resize();
			this.load();

			this.Event();
			//첫셋팅
			this.settings.currentSlide = Math.floor(Math.random() * this.settings.totalSlides);
			this.settings.prevSlide = this.settings.currentSlide -1;
			this.settings.nextSlide = this.settings.currentSlide + 1;
			if(this.settings.prevSlide < 0) {	this.settings.prevSlide = (this.settings.totalSlides -1);	 }
			if(this.settings.nextSlide >= this.settings.totalSlides) {	this.settings.nextSlide = 0;	 }
			self.settings.oldSlide = self.settings.currentSlide;
			$(".atitle[rel='" + this.settings.currentSlide + "']", self.slide).addClass("active");
			$(".box_skitter_left>.box", self.slide).eq(this.settings.prevSlide).css({'z-index': 10, 'left' : 0});
			$(".box_skitter_right>.box", self.slide).eq(this.settings.nextSlide).css({'z-index': 10, 'left' : 0});
			$(".box_skitter_main>.box", self.slide).eq(this.settings.currentSlide).css({'z-index': 10, 'left' : 0});
			
			if(this.settings.cntview == true){
				$(".cntview", self.slide).html(this.settings.currentSlide + "/" + this.settings.totalSlides).animate({'top' : (this.settings.imgheight - (this.settings.tmpboxheight + 10) ) + 'px'}, {duration : 1000, easing : "easeOutElastic"});
			}
			if(this.settings.viewlist == true){
				$(".viewlist", self.slide).animate({'left' : (this.settings.imgwidth - (this.settings.boxwidth + this.settings.boxright)) + 'px'}, 1000);
			}
			if(this.settings.viewbult == true){
				$(".box_skitter_bultbox", self.slide).animate({'top' : this.settings.bultTop + 'px'}, 1000);
				$(".bult[rel='" + this.settings.currentSlide + "']", self.slide).addClass("active");
			}
			this.settings.timer = setInterval(function(){ self.ani(true); }, this.settings.pauseTime);
		},
		skin: function(){
			var self = this;
				self.slide.append("<div class='box_skitter_body'></div>");
				$(".box_skitter_body", self.slide).append("<div class='box_skitter_left box_skitter'></div>");
				$(".box_skitter_body", self.slide).append("<div class='box_skitter_main box_skitter'></div>");
				$(".box_skitter_body", self.slide).append("<div class='box_skitter_right box_skitter'></div>");
				
				if(this.settings.cntview == true){
					$(".box_skitter_main", self.slide).append("<div class='cntview'></div>");
				}
				if(this.settings.viewlist == true){
					$(".box_skitter_main", self.slide).append("<div class='viewlist'><ul></ul></div>");
				}
				$(".box_skitter_main", self.slide).append("<div class='box_skitter_bultbox'></div>");
				$(".box_skitter_left, .box_skitter_right", self.slide).append("<div class='mask'></div>");
				$(".box_skitter_left", self.slide).append("<div class='controller_left controller'></div>");
				$(".box_skitter_right", self.slide).append("<div class='controller_right controller'></div>");
				$(".controller_left", self.slide).css({'float' :'left','position':'absolute','left' : (this.settings.imgwidth - this.settings.controllerboxWidth) + 'px', 'top' : ((this.settings.imgheight - 50) /2) + 'px', 'z-index': 2000000});
				$(".controller_right", self.slide).css({'float' :'left','position':'absolute', 'top' : ((this.settings.imgheight - 50) /2) + 'px', 'z-index': 2000000});
				$(".controller", self.slide).css({'cursor':'pointer'});
				$(".mask", self.slide).css({'float' :'left','position':'absolute','width': this.settings.imgwidth + 'px','height': this.settings.imgheight + 'px','background-color':this.settings.maskcolor, 'left' : '0px', 'top' : '0px','opacity':this.settings.opacity, 'z-index': 1000000 });
				$(".viewlist", self.slide).css({'float' :'left','position':'absolute','z-index':30000, 'width' : this.settings.boxwidth+ 'px', 'height':  this.settings.boxheight + 'px','opacity': this.settings.opacity,'line-height':  this.settings.lineheight + 'px', 'text-align':'left', 'top' : this.settings.boxtop + 'px', 'left': this.settings.imgwidth + 'px','color':'#000000' });
				if(this.settings.cntview == true){
					$(".cntview", self.slide).css({'float' :'left','position':'absolute','z-index':30000, 'width' : this.settings.tmpboxwidth+ 'px', 'height':  this.settings.tmpboxheight + 'px','line-height':  this.settings.tmpboxheight + 'px', 'text-align':'center', 'top' : 0 + 'px', 'left': (this.settings.imgwidth - (this.settings.tmpboxwidth + 10) ) + 'px' });
				}
				if(this.settings.viewbult == true){
					$(".box_skitter_bultbox", self.slide).css({'float' :'left','position':'absolute','overflow':'hidden','z-index':40000, 'width' : this.settings.bultwidth+ 'px', 'height':  this.settings.bultheight + 'px', 'top' : (this.settings.imgheight) + 'px', 'left': (this.settings.bultLeft) + 'px','color':'#FFFFFF' });
				}
		},
		Resize : function(){
				var self = this;
				$(".box_skitter_body", self.slide).css({'width' : ( this.settings.imgwidth * 3) + 'px', 'height': this.settings.imgheight + 'px'});
				self.slide.css({'width' : $(window).width() + 'px', 'height': this.settings.imgheight + 'px'});
				$(".box_skitter", self.slide).css({'position':'relative','float' :'left','overflow':'hidden','width': this.settings.imgwidth + 'px','height': this.settings.imgheight + 'px'});
				//$(".box_skitter", self.slide).css({'text-align':'center'});
				if($(window).width() < (this.settings.imgwidth * 3)){
					$(".box_skitter_left", self.slide).css({'margin-left': '-' + ( ((this.settings.imgwidth * 3)-$(window).width())/2  ) + 'px'});
				}
				
		},
		load: function(options){
			var self = this;
			$(".box_skitter_data", self.slide).find("li").each(function() {
				$(".box_skitter", self.slide).append('<div class="box" rel="' + self.settings.totalSlides + '">' + $(this).html() + '</div>');
				if(self.settings.viewlist == true){
					$(".viewlist>ul", self.slide).append('<li><a href="#" class="atitle" rel="' + self.settings.totalSlides +'">' + $(this).find("img").attr("title") + '</a></li>');
         		}
					$(".box_skitter_bultbox", self.slide).append('<div class="bult" rel="' + self.settings.totalSlides + '"></div>');
				self.settings.totalSlides ++;
			});  
			$(".box", self.slide).css({'float' :'left','position':'absolute','width': this.settings.imgwidth + 'px','height': this.settings.imgheight + 'px', 'left' :  (this.settings.imgwidth -  this.settings.tmpboxwidth) + 'px', 'top' : '0px', 'z-index': 0, 'margin-left': '0px' });

		},
		Event : function(){
			var self = this;
			self.slide.hover(function(){
             
                clearInterval(self.settings.timer);
                self.settings.timer = '';              
				
            }, function(){
               
				if(self.settings.timer == ''){
					self.settings.timer = setInterval(function(){  self.ani(true);	}, self.settings.pauseTime);
				}

            });
			$(window).resize(function(){
				self.Resize();
			});
			if(this.settings.viewbult == true){
				$(".bult", self.slide).click(function(){			
					if(self.settings.runing == false){
						self.settings.currentSlide = Number($(this).attr("rel")) - 1;
						self.ani(false);
					}
				});
			}
			if(this.settings.viewlist == true){
				$(".atitle", self.slide).click(function(){			
					if(self.settings.runing == false){
						self.settings.currentSlide = Number($(this).attr("rel")) - 1;
						self.ani(false);
					}
				});
			}
			$(".controller_left", self.slide).click(function(){			
				self.ani(true);
			});
			$(".controller_right", self.slide).click(function(){	
				if(self.settings.runing == false){
					self.settings.currentSlide = self.settings.currentSlide - 2;
					self.ani(false);
				}
			});
		},
		aniType : function(){
			animations_functions = [
				'HarpEvent'					
			];
			return animations_functions[Math.floor(Math.random() * animations_functions.length)];
		},
		aniEffect : function(flg){
			var self = this;
			var animation_type = "";
			if(this.settings.animation_type == "randam"){
				animation_type = self.aniType();
			}else{
				animation_type = this.settings.animation_type;
			}
			
			switch (animation_type) 
			{
				
				default : 
						this.animationHarp(flg);
				break;
			}	
			
			
		},
		animationHarp : function(flg){
			var self = this;
			//이미지추출
			var src = $(".box_skitter_main>.box", self.slide).eq(self.settings.oldSlide).find("img").attr("src");
			var time_animate = 400 / this.settings.velocity;
			var easingevent = (this.settings.animation_type == '') ? 'easeOutCirc' : this.settings.animation_type;

			for(i=0;i< 2;i++){
				$(".box_skitter_main", self.slide).append("<div class='cuttmp' style='float:left;position:absolute;left:" + ((this.settings.imgwidth/2) * i) + "px;top:0px;z-index:20000;width:" + (this.settings.imgwidth/2) + "px;height:" + this.settings.imgheight + "px;background-image:url(" + src + ");background-repeat:no-repeat;background-position:-" + ((this.settings.imgwidth/2) * i) + "px 0px;'></div>");
			}
			for(i=0;i < 2 ;i++){
					
				
					if(i == 0){	
						$(".cuttmp", self.slide).eq(i).animate({'left' : "-" + this.settings.imgwidth, 'opacity' : 0 }, this.settings.animation);
					}else{
						$(".cuttmp", self.slide).eq(i).animate({'left' :  this.settings.imgwidth, 'opacity' : 0 }, this.settings.animation, function(){
							self.finishAnimation();
						});
					}
				
			}

			
			$(".box_skitter_main>.box", self.slide).eq(self.settings.oldSlide).hide().css({'left': this.settings.imgwidth + 'px','z-index': 1});
			$(".box_skitter_main>.box", self.slide).eq(self.settings.currentSlide).css({'left':'0px', 'z-index':10000}).show();
			
		},
		finishAnimation: function (options) 
		{
			var self = this;
			
			this.settings.runing = false;
			$(".cuttmp", self.slide).remove();		
			
		},
		ani : function(flg){
			var self = this;
			if(self.settings.runing == false){
				self.settings.runing = true;
				
				self.settings.oldprev = self.settings.prevSlide;
				self.settings.oldnext = self.settings.nextSlide;				
				self.settings.currentSlide ++;
				
				if(self.settings.currentSlide < 0) {	self.settings.currentSlide = (self.settings.totalSlides -1);	 }
				if(self.settings.currentSlide >= self.settings.totalSlides) {	self.settings.currentSlide = 0;	 }
				self.settings.prevSlide = self.settings.currentSlide -1;
				self.settings.nextSlide = self.settings.currentSlide + 1;
				
				if(self.settings.prevSlide < 0) {	self.settings.prevSlide = (self.settings.totalSlides -1);	 }
				if(self.settings.nextSlide >= self.settings.totalSlides) {	self.settings.nextSlide = 0;	 }
				if(this.settings.viewlist == true){
					$(".atitle[rel='" + this.settings.oldSlide + "']", self.slide).removeClass("active");
					$(".atitle[rel='" + this.settings.currentSlide + "']", self.slide).addClass("active");
				}
				if(this.settings.viewbult == true){
					$(".bult[rel='" + this.settings.oldSlide + "']", self.slide).removeClass("active");
					$(".bult[rel='" + this.settings.currentSlide + "']", self.slide).addClass("active");
				}

				if(flg == true){ 
					$(".box_skitter_right>.box", self.slide).eq(self.settings.oldnext).css({'z-index': 1, 'left' : 0 + 'px'}).animate({'left' : '-' + self.settings.imgwidth + 'px'},  self.settings.animation, '', function(){ $(this).css({'left' : self.settings.imgwidth + 'px','z-index': 1}); });
					$(".box_skitter_right>.box", self.slide).eq(self.settings.nextSlide).css({'z-index': 10, 'left' : self.settings.imgwidth + 'px'}).animate({'left' : 0 + 'px'},  self.settings.animation, '', function(){ $(this).css({'left' : 0 + 'px','z-index': 10}); });
					
					
					$(".box_skitter_left>.box", self.slide).eq(self.settings.oldprev).css({'z-index': 1, 'left' : 0 + 'px'}).animate({'left' : '-' + self.settings.imgwidth + 'px'}, self.settings.animation, '', function(){ $(this).css({'left' : self.settings.imgwidth + 'px','z-index': 1}); });
					$(".box_skitter_left>.box", self.slide).eq(self.settings.prevSlide).css({'z-index': 10, 'left' : self.settings.imgwidth + 'px'}).animate({'left' : 0 + 'px'}, self.settings.animation, '', function(){ $(this).css({'left' : 0 + 'px','z-index': 10}); self.settings.runing = false; });
				}else{

					$(".box_skitter_right>.box", self.slide).eq(self.settings.oldnext).css({'z-index': 1, 'left' : 0 + 'px'}).animate({'left' : self.settings.imgwidth + 'px'},  self.settings.animation, '', function(){ $(this).css({'left' : - self.settings.imgwidth + 'px','z-index': 1}); });
					$(".box_skitter_right>.box", self.slide).eq(self.settings.nextSlide).css({'z-index': 10, 'left' : '-' + self.settings.imgwidth + 'px'}).animate({'left' : 0 + 'px'},  self.settings.animation, '', function(){ $(this).css({'left' : 0 + 'px','z-index': 10}); });
					
										
					$(".box_skitter_left>.box", self.slide).eq(self.settings.oldprev).css({'z-index': 1, 'left' : 0 + 'px'}).animate({'left' :  self.settings.imgwidth + 'px'},  self.settings.animation, '', function(){ $(this).css({'left' : - self.settings.imgwidth + 'px','z-index': 1}); });
					$(".box_skitter_left>.box", self.slide).eq(self.settings.prevSlide).css({'z-index': 10, 'left' : '-' + self.settings.imgwidth + 'px'}).animate({'left' : 0 + 'px'},  self.settings.animation, '', function(){ $(this).css({'left' : 0 + 'px','z-index': 10}); self.settings.runing = false;  });

				}

				self.aniEffect(flg);
				if(this.settings.cntview == true){
					$(".cntview", self.slide).html(this.settings.currentSlide + "/" + this.settings.totalSlides);
				}			
				
				self.settings.oldSlide = self.settings.currentSlide;
				
			}			
		}
	});

})(jQuery);