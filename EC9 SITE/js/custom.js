$(document).ready(function() {
	$("a[rel^='prettyPhoto']").prettyPhoto({theme:'light_square'});
	$('.twitter-feed').tweet({
		username: 'ivanjezh',  //just enter your twitter username
		join_text: 'auto',
		avatar_size: null,
		count: 2, //number of tweets showing
		auto_join_text_default: '',
		loading_text: 'loading latest tweets...'
	});
	$('#flickr-images').append('<ul></ul>');
	$('#flickr-images ul').jflickrfeed({
		limit: 10,
		qstrings: {
			id: '58842866@N08', // enter Flickr ID			
			tags: 'interiors'  // Displays images with selected tags (optional)
		},
		itemTemplate: '<li><a href="{{image_b}}" rel="prettyPhoto" ><img src="{{image_s}}" alt="{{title}}" /></a></li>'
		}, function(data) {
			$('#flickr-images li a').prettyPhoto({theme:'light_square'});
		});
	$('.textbox, #message, #comment').focus(function (){
		$(this).css({borderColor : '#bbb'});
			$(this).blur(function (){
				$(this).css({borderTopColor : '#d1d1d1', borderLeftColor : '#d1d1d1', borderBottomColor : '#e1e1e1', borderRightColor : '#e1e1e1'});
			});
	});
	$('ul.tab-nav').tabs('.tabs > .tab-panels > div', {effect: 'fade'});
	$('.gallery-overlay a img').hover(function() {		
		$(this).stop().animate({ 
			opacity : '.1'
		}, 300);
			}, function() {
				$(this).stop().animate({ 
					opacity : '1' 
				}, 500);
			});	
	$('ul#filter a').click(function() {
		$(this).css('outline','none');
		$('ul#filter .active-filter').removeClass('active-filter');
		$(this).parent().addClass('active-filter');
		var filterVal = $(this).attr('href').toLowerCase().replace(' ','-');
		if(filterVal == 'all') {
			$('ul.gallery-thumbs li.hidden').fadeIn('slow').removeClass('hidden');
		} else {
			$('ul.gallery-thumbs li').each(function() {
				if(!$(this).hasClass(filterVal)) {
					$(this).fadeOut('normal').addClass('hidden');
				} else {
					$(this).fadeIn('slow').removeClass('hidden');
				}
			});
		}
		return false;
	});	
	$('.toggle-content').hide();
	$('.toggle-header a').click(function () {		
		if ($(this).is('.tog-close')) {
			$(this).removeClass('tog-close')
			.addClass('tog-open')
			.closest('.toggle-header')
			.next('.toggle-content')
			.slideToggle(300);
			return false;
		} 		
		else {
			$(this).removeClass('tog-open')
			.addClass('tog-close')
			.closest('.toggle-header')
			.next('.toggle-content')
			.slideToggle(300);
			return false;
		}
	});	
	$('.social-links li[title]').tooltip({
		effect: 'fade',
		fadeInSpeed: 300,
		fadeOutSpeed: 200,
		opacity: 0.9,
		offset: [-5, 0]		
	});	
	$(function() {
		$('.social-links li').animate({
			opacity : '.4'
		}); 
		
		$('.social-links li').hover(function() {  
			$(this).stop().animate({ 
				opacity: '1'
			});
		}, function() {
				$(this).stop().animate({ 
					opacity : '.4'
				});
			});
	});
	$('.scroll-top').hover(function() {		
		$(this).stop().animate({ 
			opacity : '1'
		}, 300);
			}, function() {
				$(this).stop().animate({ 
					opacity : '.6' 
				}, 500);
			});		
	$('.scroll-top').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});
	$('#navigation ul').css({display: 'none'}); 
	$("ul#navigation").superfish({
			hoverClass:    'dropdown',         
			pathClass:     'overideThisToUse', 
			pathLevels:    1,                  
			delay:         300,                
			animation:     {opacity:'show',height:'show'}, 
			speed:         'fast',        
			autoArrows:    false,
			dropShadows:   false	
	});
$(function (){	
	var button = $('.button');
	if ($.browser.msie) {
		$(button).css( {backgroundPosition: "-20px 35px"} ).hover(function() {		
			$(this).stop()
				.animate({ 
					backgroundPositionX: "-20px",
					backgroundPositionY: "94px"				
				},300);
				}, 
				function() {
					$(this).stop().animate({ 
					backgroundPositionX: "-20px",
					backgroundPositionY: "35px"				
				},300).css({backgroundPosition: "-20px 35px"});
			});
		}		
});				
});	





