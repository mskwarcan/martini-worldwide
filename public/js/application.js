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
	    $(this).children('img').fadeIn('fast');
    }
	  
	});
	
	$('.promos').cycle('fade');
	
	$('.individual').click(function() {
	  if(!$(this).hasClass('active')){
	    $('.tab').removeClass('active');
	    $(this).addClass('active');
	    $('.general_tab').fadeOut('fast', function() {
          // Animation complete.
          $('.individual_tab').fadeIn();
        });
	  }
	});
	
	$('.general').click(function() {
	  if(!$(this).hasClass('active')){
	    $('.tab').removeClass('active');
	    $(this).addClass('active');
	    $('.individual_tab').fadeOut('fast', function() {
          // Animation complete.
          $('.general_tab').fadeIn();
        });
	  }
	});
});