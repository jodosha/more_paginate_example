$(document).ready(function() {
  $("#more_link").morePaginate({
    container: "#tweets",
    success: function() {
      $("#tweets ol:last").hide().slideToggle("slow");
    }
  });
});
