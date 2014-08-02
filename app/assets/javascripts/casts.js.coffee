# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$('.wait_0min').click ->
		setWaitTime($(this).data('cast_id'), 0)
	$('.wait_15min').click ->
		setWaitTime($(this).data('cast_id'), 15)
	$('.wait_30min').click ->
		setWaitTime($(this).data('cast_id'), 30)
	$('.wait_45min').click ->
		setWaitTime($(this).data('cast_id'), 45)
	$('.wait_60min').click ->
		setWaitTime($(this).data('cast_id'), 60)

setWaitTime = (castId, waitTime) ->
	$.ajax({
		url: '/casts/' + castId + '/set_wait_time/' + waitTime
		success: (free_after_datetime, status) ->
			$("td##{castId}.free_after").text(free_after_datetime)
			console.log(free_after_datetime)
		})