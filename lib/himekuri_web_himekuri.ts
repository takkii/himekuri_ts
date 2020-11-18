const OneDay = new Date();
const OneYear = OneDay.getFullYear();
const comma = " : ";

const TwoYear = OneYear + 1;
const newYear= new Date(TwoYear+"/1/1").valueOf();
const newDays = new Date().valueOf();
const ThreeYear = OneYear - 2018;
const newTwoDay = ((OneDay.getMonth() + 1)  + "月" + (OneDay.getDate() + "日"));
const dot = ".";
const newThreeDay = ((OneDay.getMonth() + 1)  + dot + (OneDay.getDate()));

// R0 → R10 = R010 | R10 Change
console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay);

