class Himekuri{
    week: string[];
    OneDay: Date;
    comma: string;
    str: string;
    OneYear: any;
    TimeNow: string;
    TwoYear: any;
    newYear: number;
    newDays: number;
    ThreeYear: any;
    newTwoDay: any;
    dot: string;
    newThreeDay: any;
    day: number;
    MonthWareki: any;
    env: any;
    language: any;

    constructor(){
    this.week = ["日","月","火","水","木","金","土"];
    this.OneDay = new Date();
    this.comma = " : ";
    this.str = "時刻を表示";
    this.OneYear = this.OneDay.getFullYear();
    this.TimeNow = this.str + this.comma + this.OneDay.getFullYear() + "年" +
    (this.OneDay.getMonth() + 1)  + "月" +
    this.OneDay.getDate()+ "日" + this.comma +
    this.OneDay.getHours() + "時" +
    this.OneDay.getMinutes() + "分" +
    this.OneDay.getSeconds() + "秒" + this.comma +
    this.week[this.OneDay.getDay()] + "曜日"
    this.TwoYear = this.OneYear + 1;
    this.newYear= new Date(this.TwoYear+"/1/1").valueOf();
    this.newDays = new Date().valueOf();
    this.ThreeYear = this.OneYear - 2018;
    this.newTwoDay = ((this.OneDay.getMonth() + 1)  + "月" + (this.OneDay.getDate() + "日"));
    this.dot = ".";
    this.newThreeDay = ((this.OneDay.getMonth() + 1)  + this.dot + (this.OneDay.getDate()));
    this.day = Math.ceil((this.newYear-this.newDays)/(60*60*24*1000) -1);
    this.MonthWareki = (this.OneDay.getMonth()+1)
    this.env = process.env;
    this.language = this.env.LANG || this.env.LANGUAGE || this.env.LC_ALL || this.env.LC_MESSAGES;
}

koyomi(){
    // console.log(this.env)
    if (this.language == "ja_JP.UTF-8"){
        console.log(`${this.TimeNow} : 日本語`);
        console.log("来年の1月1日まであと" + this.comma + this.day + "日です");
    } else {
        console.log(`${this.TimeNow} : ${this.language}`);
        console.log("来年の1月1日まであと" + this.comma + this.day + "日です");
}

// R0 → R10 = R010 | R10 Change
if (this.ThreeYear >= 10) {
    if (this.MonthWareki == 1) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[睦月]");
    }
    else if (this.MonthWareki == 2) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[如月]");
    }
    else if (this.MonthWareki == 3) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[弥生]");
    }
    else if (this.MonthWareki == 4) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[卯月]");
    }
    else if (this.MonthWareki == 5) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[皐月]");
    }
    else if (this.MonthWareki == 6) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[水無月]");
    }
    else if (this.MonthWareki == 7) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[文月]");
    }
    else if (this.MonthWareki == 8) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[葉月]");
    }
    else if (this.MonthWareki == 9) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[長月]");
    }
    else if (this.MonthWareki == 10) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[神無月]");
    }
    else if (this.MonthWareki == 11) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[霜月]");
    }
    else if (this.MonthWareki == 12) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[師走]");
    }
    else {
        console.log("警告" + this.comma + "ありえない月です！JavaScriptの記述を確認願います！");
    }
    } else {
    if (this.MonthWareki == 1) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[睦月]");
    }
    else if (this.MonthWareki == 2) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[如月]");
    }
    else if (this.MonthWareki == 3) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[弥生]");
    }
    else if (this.MonthWareki == 4) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[卯月]");
    }
    else if (this.MonthWareki == 5) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[皐月]");
    }
    else if (this.MonthWareki == 6) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[水無月]");
    }
    else if (this.MonthWareki == 7) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[文月]");
    }
    else if (this.MonthWareki == 8) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[葉月]");
    }
    else if (this.MonthWareki == 9) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[長月]");
    }
    else if (this.MonthWareki == 10) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[神無月]");
    }
    else if (this.MonthWareki == 11) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[霜月]");
    }
    else if (this.MonthWareki == 12) {
        console.log("令和" + this.ThreeYear + "年" + this.newTwoDay + this.comma + "R0" + this.ThreeYear + this.dot +  this.newThreeDay  + this.comma + "[和風月]" + " → " + "[師走]");
    }
    else {
        console.log("警告" + this.comma + "ありえない月です！JavaScriptの記述を確認願います！");
    }
}
}
}


const himekuri = new Himekuri();
himekuri.koyomi();
