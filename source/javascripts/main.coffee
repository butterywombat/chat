$ -> 
  $('.message_form').submit ->
    input = $('.message_input')
    message_txt = input.val()
    new_msg = $('#message_template').clone().removeAttr('id').end().find('.message_txt').text(message_txt)
    $('.messages').append(new_msg)
    input.val('')
    false
