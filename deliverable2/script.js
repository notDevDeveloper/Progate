$(function() {
  $("#second-btn").click(function() {
    // 「.active」要素からactiveクラスを取り除いてください
    // 2つ目の「.slide」要素にactiveクラスをつけてください
    $(".active").removeClass("active");
    $(".slide")
      .eq(1)
      .addClass("active");
  });
});
