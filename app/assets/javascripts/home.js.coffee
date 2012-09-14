$ ->
  $('#message').keyup ->
    current_count = $(this).val().length
    remaining = 140 - current_count
    $('#char_count').html(remaining)
    $('#char_count').toggleClass('almost_overflow', remaining <= 20)
    $('#char_count').toggleClass('overflow', remaining <= 0)
    $('#submit_button_container input:submit').attr("disabled", ->
         if remaining <= 0 then true else false
      )
