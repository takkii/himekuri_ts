function himekuri_web_justnow() {
    var OneWeek = ['日', '月', '火', '水', '木', '金', '土'];
    var OneDay = new Date();
    var comma = ' : ';
    var time_now = '時刻を表示';
    var OneYear = OneDay.getFullYear();
    var anything_month = OneDay.getMonth();
    var OneMonth = anything_month + 1;
    var anyDays = OneDay.getDate();
    var OneHour = OneDay.getHours();
    var OneMinute = OneDay.getMinutes();
    var OneSecond = OneDay.getSeconds();
    var WeekDay = OneDay.getDay();
    var anyMonth = ['睦月', '如月', '弥生', '卯月', '皐月', '水無月', '文月', '葉月', '長月', '神無月', '霜月', '師走'];
    var something_Month = anyMonth[anything_month];
    var TimeNow = time_now + comma +
        (OneYear) + '年' +
        (OneMonth) + '月' +
        (anyDays) + '日' + comma +
        (OneHour) + '時' +
        (OneMinute) + '分' +
        (OneSecond) + '秒' + comma +
        (OneWeek[WeekDay]) + '曜日';
    try {
        if (isNaN(OneMonth || anything_month)) {
            throw new Error('暦の月判定にNaNが表示されました、例外を発生させます!');
        }
        else if (something_Month == '') {
            throw new Error('和風月に空文字列が表示されました、例外を発生させます!');
        }
        else {
            console.log(TimeNow + comma + something_Month);
        }
    }
    catch (e) {
        console.error('例外を補足しました、メッセージです ... ', e.message);
    }
}
himekuri_web_justnow();
