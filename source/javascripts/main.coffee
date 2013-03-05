$ -> 
  $('.message_form').submit ->
    msg_input = $('.message_input')
    msg_window = $('.messages_window')
    msg_txt = msg_input.val()
    msg_new = $('#message_template').clone().removeAttr('id').find('.message_txt').text(msg_txt).end()
    $('.messages').append(msg_new)
    msg_input.val('')

    msg_window.scrollTop(msg_window.prop('scrollHeight'))

    false
