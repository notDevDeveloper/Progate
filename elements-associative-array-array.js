var users = [
  {
    name: "太郎",
    age: 21,
    nationality: "日本"
  },
  {
    name: "リリー",
    age: 37,
    nationality: "イギリス"
  },
  {
    name: "ジョン",
    age: 16,
    nationality: "アメリカ"
  }
];

// この下にコードを書いてください
for (i = 0; i < users.length; i++) {
  console.log(i + 1 + "人目");
  console.log("名前：" + users[i].name);
  console.log("年齢：" + users[i].age);
  console.log("国籍：" + users[i].nationality);
}
