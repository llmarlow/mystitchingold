$ ->
  $('#updates').imagesLoaded ->
    $('#updates').masonry
      itemSelector: '.box'
      isFitWidth: true
      
$ ->     
$(document).on("hidden.bs.modal", function (e) {
    $(e.target).removeData("bs.modal").find(".modal-content").empty();
});