// JavaScript Document

$(document).ready(function(e) {
	findInput();
});
function findInput() {
	$('section form input[type="text"], section form textarea, section form input[type="number"]').eq(0).focus();
}