// JavaScript Document

$(document).ready(function(e) {
	findInput();
});
function findInput() {
	$('section form input[type="text"], section form textarea').eq(0).focus();
}