$(document).ready(function(){
	$('ul.accordian li').click(function() {
	  if ($(this).children('.extra').hasClass('active'))
	  {
	    $(this).children('.extra').slideUp('fast');
	    $(this).children('.extra').removeClass('active');
	  } else {
	  $('.active').slideUp('fast');  
	  $('.active').removeClass('active');
	  $(this).children('.extra').addClass('active');
	  $(this).children('.extra').slideDown('fast');
    }
	  
	});
});