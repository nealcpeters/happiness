$(function(){
  $('#jub-submit').on('click', function(e){
    e.preventDefault();
    data = {jubilation: {content: $('#jubilation_content').val()}}
    $.post("/jubilations", data, function(reply){
      console.log
    })
  })
})