// JavaScript Document

$(document).ready(function(e) {
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
		e.preventDefault();
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
});