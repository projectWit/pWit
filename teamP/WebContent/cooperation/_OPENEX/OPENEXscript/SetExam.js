$(function() {
	$('[id^="mainMenu"]').attr("tabindex", 1).focus();
	$('[id^="subMenu"]').attr("tabindex", 1).focus();
	$('[id^="subMenu"]').hide();
	$('#openex_setExam_selectbox').hide();
	for (var i = 0; i < 10; i++) {
		$('[id^="mainMenu' + i + '"]').click(function(e) {
			var targetId = $(e.target).attr("id");
			var targetIdValue = targetId.substring(8, 9);
			if ($('[id^="subMenu' + targetIdValue + '"]').is(':hidden')) {
				$('[id^="mainMenu"]').css('color', '#3DB7CC');
				$(this).css('border-radius', '0 40px');
				$('[id^="mainMenu"]').blur(function() {
					$('[id^="mainMenu"]').css('border-radius', '0 20px');
					$(this).css('color', '#005766')
					$(this).css('font-weight', 'bold');
					$(this).css('border-radius', '0 40px');
					$(this).css('background-color', '#D4F4FA');
				});
				var targetText = $(e.target).text();
				$('#sel1stCategory').empty();
				$('#sel2ndCategory').empty();
				$('#sel1stCategory').append(targetText);
				$('[id^="subMenu"]').slideUp(400);
				$('[id^="subMenu' + targetIdValue + '"]').slideDown(400);
			} else {
				$('[id^="mainMenu"]').blur(function() {
					$('[id^="mainMenu"]').css('border-radius', '0 20px');
					$(this).css('color', 'white')
				});
				$('#sel1stCategory').empty();
				$('#sel2ndCategory').empty();
				$('[id^="subMenu"]').slideUp(400);
				$('#openex_setExam_selectbox').slideUp(400);
			}
		});
	}
	$('[id^="subMenu"]').click(function(e) {
		$('#openex_setExam_selectbox').slideDown(400);
		$('[id^="subMenu"]').css('color', 'white');
		$('[id^="subMenu"]').css('width', '70px');
		$(this).css('width', '140px');
		$('[id^="subMenu"]').blur(function() {
			$(this).css('color', '#F15F5F')
		});
		var targetText = $(e.target).text();
		$('#sel2ndCategory').empty();
		$('#sel2ndCategory').append('(' + targetText + ')');
	});
	$('#OPENEX_LogoMenu').click(function() {
		$('[id^="subMenu"]').slideUp(400);
		$('#openex_setExam_selectbox').slideUp(400);
	});
});