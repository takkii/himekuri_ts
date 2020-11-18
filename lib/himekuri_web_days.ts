const OneDay = new Date();
const OneYear = OneDay.getFullYear();
const TwoYear = OneYear + 1;
const newYear= new Date(TwoYear+"/1/1").valueOf();
const newDays = new Date().valueOf();
const day = Math.ceil((newYear-newDays)/(60*60*24*1000) -1);
const comma = " : ";

console.log("来年の1月1日まであと" + comma + day + "日です");
