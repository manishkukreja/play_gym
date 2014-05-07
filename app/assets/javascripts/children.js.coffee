jQuery ->
  $('.add_fields').on 'click', (event) ->
   time = new Date().getTime()
   regexp = new RegExp($(this).data('id'), 'g')
   $(this).before($(this).data('fields').replace(regexp, time))
   event.preventDefault()