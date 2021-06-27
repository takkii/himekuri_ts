function himekuri_web_justnow() {
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
    var MonthWareki = (OneDay.getMonth() + 1);
    if (MonthWareki == 1) {
        console.log(TimeNow + comma + "睦月");
    }
    else if (MonthWareki == 2) {
        console.log(TimeNow + comma + "如月");
    }
    else if (MonthWareki == 3) {
        console.log(TimeNow + comma + "弥生");
    }
    else if (MonthWareki == 4) {
        console.log(TimeNow + comma + "卯月");
    }
    else if (MonthWareki == 5) {
        console.log(TimeNow + comma + "皐月");
    }
    else if (MonthWareki == 6) {
        console.log(TimeNow + comma + "水無月");
    }
    else if (MonthWareki == 7) {
        console.log(TimeNow + comma + "文月");
    }
    else if (MonthWareki == 8) {
        console.log(TimeNow + comma + "葉月");
    }
    else if (MonthWareki == 9) {
        console.log(TimeNow + comma + "長月");
    }
    else if (MonthWareki == 10) {
        console.log(TimeNow + comma + "神無月");
    }
    else if (MonthWareki == 11) {
        console.log(TimeNow + comma + "霜月");
    }
    else if (MonthWareki == 12) {
        console.log(TimeNow + comma + "師走");
    }
    else {
        console.log("警告 : ありえない月です！JavaScriptの記述を確認願います！");
    }
}
himekuri_web_justnow();
