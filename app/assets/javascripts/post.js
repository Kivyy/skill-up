$(document).ready(function(){
    $('.send-button').prop('disabled',true);
    $('#message').keyup(function(){
        $('.send-button').prop('disabled', this.value == "" ? true : false);
    })
});
