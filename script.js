$(function() {
  $("#login-show").click(function() {
    $("#login-modal").fadeIn();
  });

  $(".signup-show").click(function() {
    $("#signup-modal").fadeIn();
  });

  $(".close-modal").click(function() {
    $("#login-modal").fadeOut();
    $("#signup-modal").fadeOut();
  });

  // 「.lesson-hover」がhoverされたときのhoverイベントを作成してください
  $(".lesson-hover").hover(
    function() {
      // over
    },
    function() {
      // out
    }
  );
});
