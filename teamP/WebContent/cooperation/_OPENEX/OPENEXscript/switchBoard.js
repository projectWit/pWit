$(function() {
	$('#openex_boardList').hide();
	$('#list_selectBtn_graphBtn').click(function() {
		$('#openex_boardList').fadeOut(100);
		$('#listContainer').fadeIn(500);
	});
		$('#list_selectBtn_listBtn').click(function() {
		$('#listContainer').fadeOut(100);
		$('#openex_boardList').fadeIn(500);
	});
	$('[id^="list_selectBtn_"]').attr("tabindex", 1).focus();
	$('#list_selectBtn_graphBtn').focus();
	$('#list_selectBtn_listBtn').hover(function() {
		$('#list_selectBtn_graphBtn').focusOut();
	});
});
