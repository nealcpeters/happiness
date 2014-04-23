$(function(){

  $('#jub-submit').on('click', function(e){
    e.preventDefault();
    data = {jubilation: {content: $('#jubilation_content').val()}};
    $.post("/jubilations", data, function(reply){
      $('#jub-container').html(reply);
    });
  });

  $('body').on('click', '.jub-arrow', function(e){
    e.preventDefault();
    url = this.href;
    $.get(url, function(reply){
      $('#jub-container').html(reply);
    });
  });

  $('body').on('click', '.img-arrow', function(e){
    e.preventDefault();
    url = this.href;
    $.get(url, function(reply){
      $('#inner_image_container').html("<img src=" + reply.path +">");
    });
  });

  $('#img-more').on('click', function(e){
    e.preventDefault();
    $.get("/", function(reply){
      $('#inner_image_container').html("<img src=" + reply.path +">");
    });
  });

  
});

