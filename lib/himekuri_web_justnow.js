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
console.log(TimeNow);