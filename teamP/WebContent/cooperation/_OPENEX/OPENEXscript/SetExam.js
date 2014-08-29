//순차 페이드인 애니메이션
$(function() {
	var delaySpeed = 100;
	var fadeSpeed = 1000;
	$('#OPENEX_LogoMenu').hide();
	$('[id^="mainMenu"]').each(function(i) {
		$(this).delay(i * (delaySpeed)).css({
			display : 'block',
			opacity : '0'
		}).animate({
			opacity : '1'
		}, fadeSpeed);
	});
	$('#OPENEX_LogoMenu').fadeIn(1000);
	$('[id^="mainMenu"]').attr("tabindex", 1).focus();
	$('[id^="subMenu"]').attr("tabindex", 1).focus();
	$('[id^="subMenu"]').hide();
	$('#openex_setExam_selectbox').hide();
	for (var i = 0; i < 10; i++) {
		$('[id^="mainMenu' + i + '"]').click(function(e) {
			$('#menuContaner').animate({
				top : "-20"
			});
			var targetId = $(e.target).attr("id");
			var targetVal = $(e.target).attr("name");
			var targetIdValue = targetId.substring(8, 9);
			if ($('[id^="subMenu' + targetIdValue + '"]').is(':hidden')) {
				$('[id^="mainMenu"]').css('color', '#3DB7CC');
				$(this).css('border-radius', '0 40px');
				$('[id^="mainMenu"]').blur(function() {
					$('[id^="mainMenu"]').css('border-radius', '0 20px');
					$(this).css('color', '#005766');
					$(this).css('font-weight', 'bold');
					$(this).css('border-radius', '0 40px');
					$(this).css('background-color', '#D4F4FA');
				});
				var targetText = $(e.target).text();
				$('#sel1stCategory').empty();
				$('#sel2ndCategory').empty();
				$('#sel1stCategory').append(targetText);
				$('#sel1stCategoryHd').val(targetVal);
				$('[id^="subMenu"]').slideUp(400);
				$('[id^="subMenu' + targetIdValue + '"]').slideDown(400);
			} else {
				$('[id^="mainMenu"]').blur(function() {
					$('[id^="mainMenu"]').css('border-radius', '0 20px');
					$(this).css('color', 'white');
				});
				$('#sel1stCategory').empty();
				$('#sel2ndCategory').empty();
				$('[id^="subMenu"]').slideUp(400);
				$('#openex_setExam_selectbox').slideUp(400);
			}
		});
	}
	$('[id^="subMenu"]').click(function(e) {
		var targetVal = $(e.target).attr("name");
		$('#openex_setExam_selectbox').slideDown(400);
		$('[id^="subMenu"]').css('color', 'white');
		$(this).css('color', '#004554');
		$('[id^="subMenu"]').css('width', '70px');
		$(this).css('width', '140px');
		$('[id^="subMenu"]').blur(function() {
			$(this).css('color', '#004554');
		});
		var targetText = $(e.target).text();
		$('#sel2ndCategory').empty();
		$('#sel2ndCategory').append('('+targetText+')');
		$('#sel2ndCategoryHd').val(targetVal);
	});
	$('#OPENEX_LogoMenu').click(function() {
		$('[id^="subMenu"]').slideUp(400);
		$('#openex_setExam_selectbox').slideUp(400);
		$('[id^="mainMenu"]').css('color', '#3DB7CC');
		$('[id^="mainMenu"]').css('border-radius', '0 20px');
		$('#menuContaner').animate({
			top : "+80"
		});
	});
});