$( document ).ready(function() {
  $("#new_message").on("submit", function(event) {
    event.preventDefault();
    let $that = $(this)
    let url = $(this).attr("action")
    let data = $(this).serialize()
    $.ajax({
      method: "POST",
      url: url ,
      data: data,
    }).done(function(res){
      $("div.chat-main").append(res);
      $that.trigger("reset")
    })
  })
});
