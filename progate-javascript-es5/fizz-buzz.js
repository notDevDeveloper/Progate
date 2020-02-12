for (var i = 1; i <= 100; i++) {
  // 変数の宣言
  var result = "";
  var residueFlag = false;

  // 3で割り切れる時
  if (i % 3 === 0) {
    result += "Fizz";
    residueFlag = true;
  }

  // 5で割り切れる時
  if (i % 5 === 0) {
    result += "Buzz";
    residueFlag = true;
  }

  // 3か5で割り切れたかどうか
  if (residueFlag === true) {
    console.log(result);
  } else {
    console.log(i);
  }
}
