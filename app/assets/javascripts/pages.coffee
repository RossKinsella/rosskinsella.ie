# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#// Initialize collapse button
$ ->	
	$(".button-collapse").sideNav()
	$('ul.tabs').tabs()
	$('#slide-out').pushpin()
	$('.skillbar').each ->
	  jQuery(this).find('.skillbar-bar').animate { width: jQuery(this).attr('data-percent') }, 6000
	  return

	$("#slide-out").on 'click', ->
		if window.matchMedia( "(max-width : 992px)" ).matches
			setTimeout (->
				$('#sidenav-overlay').click()
				return
			), 350
			return
		return
	return




# Initialize collapsible (uncomment the line below if you use the dropdown variation)
# $('.collapsible').collapsible();