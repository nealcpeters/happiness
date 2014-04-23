$(function(){

  $('#jub-submit').on('click', function(e){
    e.preventDefault();
    data = {jubilation: {content: $('#jubilation_content').val()}};
    $.post("/jubilations", data, function(reply){
      $('#jub-container').html(reply);
    });
  });

  $(document).on('click', '.jub-arrow', function(e){
    e.preventDefault();
    url = this.href;
    $.get(url, function(reply){
      $('#jub-container').html(reply);
    });
  });
});

