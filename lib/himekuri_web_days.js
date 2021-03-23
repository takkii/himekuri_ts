var OneDay = new Date();
var OneYear = OneDay.getFullYear();
var TwoYear = OneYear + 1;
var newYear = new Date(TwoYear + "/1/1").valueOf();
var newDays = new Date().valueOf();
var day = Math.ceil((newYear - newDays) / (60 * 60 * 24 * 1000) - 1);
var comma = " : ";
console.log("来年の1月1日まであと" + comma + day + "日です");
