var scores = [
  88,
  62,
  65,
  21,
  47,
  92,
  57,
  89,
  79,
  89,
  54,
  82,
  69,
  72,
  74,
  54,
  66,
  92,
  64,
  96,
  47,
  89,
  95,
  93,
  70,
  30,
  84,
  93,
  81,
  98,
  78,
  96,
  32,
  56,
  64,
  42,
  67
];

var totalScore = 0;
var maxScore = 0;

for (var i = 0; i < scores.length; i++) {
  // 合計点を求める
  totalScore += scores[i];

  // 最高点を求める
  if (maxScore < scores[i]) {
    maxScore = scores[i];
  }
}

// 平均点を求める
var averageScore = totalScore / scores.length;

console.log("平均点は" + averageScore + "点です");
console.log("最高点は" + maxScore + "点です");
