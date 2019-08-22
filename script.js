$(function() {
  // 「#language-wrapper」にhoverしたときのhoverイベントを作成してください
  $("#language-wrapper").hover(
    function() {
      // over
      $(".language-text").fadeIn();
    },
    function() {
      // out
      $(".language-text").fadeOut();
    }
  );
});
