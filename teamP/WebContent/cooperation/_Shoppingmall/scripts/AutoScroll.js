
	var ongoing = false;
	var direction = 'left';
		function AutoScroll(){			
			if(ongoing) return;
			var _scroll = $("#slide>ul");
			ongoing = true;
			if(direction == 'left'){
				_scroll.animate({marginLeft:"-195px"},1500,function(){
					_scroll.css({marginLeft:0}).find("li:first").appendTo(_scroll);
					ongoing = false;
				});
			} else{
				_scroll.css({marginLeft:"-195px"}).find("li:last").prependTo(_scroll);
				_scroll.animate({marginLeft:"0px"},1500,function(){ongoing = false;});	
			}			
		}
