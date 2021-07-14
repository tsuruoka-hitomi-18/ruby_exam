function get_achievement(x,y,z) {
  let sum = "合計";
  if ("条件") {
    return "A";
  }
}
function get_pass_or_failure(x,y,z){
  if ("条件") {
    return "合格";
  }
}
function judgement(x,y,z){
  let achievement = get_achievement();  //関数の結果（戻り値）
  let pass_or_failure =  get_pass_or_failure();  //関数の結果（戻り値）
  return `あなたの成績は${achievement}です。${pass_or_failure}です!`;
}
console.log(judgement(60,100,40));
