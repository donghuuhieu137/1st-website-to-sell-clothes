$(function(){
	$('.multiple-items').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 1,
		autoplay: true,
		autoplayspeed: 7000,
		arrows: true,
		prevArrow: '.arrow-prev',
		nextArrow: '.arrow-next',
		centerMode: true,
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 600,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 480,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
		]
	});
});
var height = $('#header').height();

$(window).scroll(function(){
	if ($(this).scrollTop()>height-50) {
		$('.menu').addClass('fixed');
	}
	else{
		$('.menu').removeClass('fixed');
	}
});

$(document).ready(function() {
    $("input:radio:checked").next('label').addClass("sd");
});

function addClassRadio() {
	$("input:radio").next('label').removeClass("sd");
	$("input:radio:checked").next('label').addClass("sd");
}
$('input[type="radio"]').on('click', addClassRadio);

// Listen for input event on numInput.
var plusQuantity = function() {
	if ( jQuery('input[name="quantity"]').val() != undefined ) {
		var currentVal = parseInt(jQuery('input[name="quantity"]').val());
		if (!isNaN(currentVal)) {
			jQuery('input[name="quantity"]').val(currentVal + 1);
		} else {
			jQuery('input[name="quantity"]').val(1);
		}
	}else {
		console.log('error: Not see elemnt ' + jQuery('input[name="quantity"]').val());
	}
}
// Minus number quantiy product detail
var minusQuantity = function() {
	if ( jQuery('input[name="quantity"]').val() != undefined ) {
		var currentVal = parseInt(jQuery('input[name="quantity"]').val());
		if (!isNaN(currentVal) && currentVal > 1) {
			jQuery('input[name="quantity"]').val(currentVal - 1);
		}
	}else {
		console.log('error: Not see elemnt ' + jQuery('input[name="quantity"]').val());
	}
}
