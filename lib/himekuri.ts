const week = ["日","月","火","水","木","金","土"];
const OneDay = new Date();
const comma = " : ";
const str = "時刻を表示";
const OneYear = OneDay.getFullYear();

const TimeNow = str + comma + OneDay.getFullYear() + "年" +
  (OneDay.getMonth() + 1)  + "月" +
  (OneDay.getDate() - 1)+ "日" + comma +
  OneDay.getHours() + "時" +
  OneDay.getMinutes() + "分" +
  OneDay.getSeconds() + "秒" + comma +
  week[OneDay.getDay()] + "曜日"

const TwoYear = OneYear + 1;
const newYear= new Date(TwoYear+"/1/1").valueOf();
const newDays = new Date().valueOf();
const ThreeYear = OneYear - 2018;
const newTwoDay = ((OneDay.getMonth() + 1)  + "月" + (OneDay.getDate() + "日"));
const dot = ".";
const newThreeDay = ((OneDay.getMonth() + 1)  + dot + (OneDay.getDate()));
const day = Math.ceil((newYear-newDays)/(60*60*24*1000) -1);
// const himekuri_version = "1.0.1"
// const version = "日めくり数え番号" + comma + himekuri_version 

console.log(TimeNow);
console.log("来年の1月1日まであと" + comma + day + "日です");

// R0 → R10 = R010 | R10 Change
console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay);
// console.log(version);
