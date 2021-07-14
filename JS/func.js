function introduce(name, age) {
  console.log(`私の名前は${name}です。年齢は${age}です。`);
}
introduce("ひとみ", "36");

// 下記のように定数で定義しておいた方が良い
function introduce(name, age) {
  console.log(`私は${name}です。年齢は${age}歳です。`);
}
const name = 'ひとみ';
const age = 36;
introduce(name, age);






// function mailTemplate(name, menu) { // 二つの引数を受け取る
  // console.log(`${name}さん,今日のランチは${menu}にしましょう。`);
// }
// mailTemplate("鈴木", "ラーメン"); // 誘いたい人, 食べたいものを引数で設定
