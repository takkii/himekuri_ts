function himekuri(){

const week = ["日","月","火","水","木","金","土"];
const OneDay = new Date();
const comma = " : ";
const str = "時刻を表示";
const OneYear = OneDay.getFullYear();

const TimeNow = str + comma + OneDay.getFullYear() + "年" +
  (OneDay.getMonth() + 1)  + "月" +
  OneDay.getDate()+ "日" + comma +
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

const MonthWareki = (OneDay.getMonth()+1)

console.log(TimeNow);

console.log("来年の1月1日まであと" + comma + day + "日です");

// R0 → R10 = R010 | R10 Change
    if (MonthWareki == 1) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[睦月]");
    }
    else if (MonthWareki == 2) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[如月]");
    }
    else if (MonthWareki == 3) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[弥生]");
    }
    else if (MonthWareki == 4) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[卯月]");
    }
    else if (MonthWareki == 5) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[皐月]");
    }
    else if (MonthWareki == 6) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[水無月]");
    }
    else if (MonthWareki == 7) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[文月]");
    }
    else if (MonthWareki == 8) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[葉月]");
    }
    else if (MonthWareki == 9) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[長月]");
    }
    else if (MonthWareki == 10) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[神無月]");
    }
    else if (MonthWareki == 11) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[霜月]");
    }
    else if (MonthWareki == 12) {
        console.log("令和" + ThreeYear + "年" + newTwoDay + comma + "R0" + ThreeYear + dot +  newThreeDay  + comma + "[和風月]" + " → " + "[師走]");
    }
    else {
        console.log("警告" + comma + "ありえない月です！JavaScriptの記述を確認願います！");
    }
}

himekuri()
