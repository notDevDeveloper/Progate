$(function() {
  // 「.social-icon」にマウスが乗ったときに、そのfont-sizeを30pxに変更し、
  // 離れたときにはfont-sizeを24pxにしてください。
  $(".social-icon").hover(
    function() {
      // over
      $(this).animate({ "font-size": "30px" }, 300);
    },
    function() {
      // out
      $(this).animate({ "font-size": "24px" }, 300);
    }
  );
});
