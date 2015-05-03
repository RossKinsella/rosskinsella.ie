# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#// Initialize collapse button
$ ->
	is_mobile = screen.width < 992 ? true : false

	$(".button-collapse").sideNav()
	$('ul.tabs').tabs()
	$('#slide-out').pushpin()
	$('.skillbar').each ->
	  jQuery(this).find('.skillbar-bar').animate { width: jQuery(this).attr('data-percent') }, 6000
	  return

	$("#slide-out").on 'click', ->
		if is_mobile
			$('#sidenav-overlay').click()
			return
		return
	return




# Initialize collapsible (uncomment the line below if you use the dropdown variation)
# $('.collapsible').collapsible();