var week = ["日", "月", "火", "水", "木", "金", "土"];
var OneDay = new Date();
var comma = " : ";
var str = "時刻を表示";
var OneYear = OneDay.getFullYear();
var TimeNow = str + comma + OneDay.getFullYear() + "年" +
    (OneDay.getMonth() + 1) + "月" +
    OneDay.getDate() + "日" + comma +
    OneDay.getHours() + "時" +
    OneDay.getMinutes() + "分" +
    OneDay.getSeconds() + "秒" + comma +
    week[OneDay.getDay()] + "曜日";
var TwoYear = OneYear + 1;
var newYear = new Date(TwoYear + "/1/1").valueOf();
var newDays = new Date().valueOf();
var ThreeYear = OneYear - 2018;
var newTwoDay = ((OneDay.getMonth() + 1) + "月" + (OneDay.getDate() + "日"));
var dot = ".";
var newThreeDay = ((OneDay.getMonth() + 1) + dot + (OneDay.getDate()));
var day = Math.ceil((newYear - newDays) / (60 * 60 * 24 * 1000) - 1);
console.log(TimeNow);
console.log("来年の1月1日まであと" + comma + day + "日です");
// R0 → R10 = R010 | R10 Change
console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot + newThreeDay);
