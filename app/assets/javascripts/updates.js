$ ->
  $('#updates').imagesLoaded ->
    $('#updates').masonry
      itemSelector: '.box'
      isFitWidth: true
      
$ ->     
$('body').on('hidden.bs.modal', '.modal', function () {
    $(this).removeData('bs.modal');
});