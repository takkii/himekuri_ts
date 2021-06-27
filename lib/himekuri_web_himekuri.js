function himekuri_web_himekuri() {
    var OneDay = new Date();
    var OneYear = OneDay.getFullYear();
    var comma = " : ";
    var TwoYear = OneYear + 1;
    var newYear = new Date(TwoYear + "/1/1").valueOf();
    var newDays = new Date().valueOf();
    var ThreeYear = OneYear - 2018;
    var newTwoDay = ((OneDay.getMonth() + 1) + "月" + (OneDay.getDate() + "日"));
    var dot = ".";
    var newThreeDay = ((OneDay.getMonth() + 1) + dot + (OneDay.getDate()));
    // R0 → R10 = R010 | R10 Change
    console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot + newThreeDay);
}
himekuri_web_himekuri();
