var Himekuri = /** @class */ (function () {
    function Himekuri() {
        this.OneWeek = ['日', '月', '火', '水', '木', '金', '土'];
        this.OneDay = new Date();
        this.comma = ' : ';
        this.time_now = '時刻を表示';
        this.OneYear = this.OneDay.getFullYear();
        this.anything_month = this.OneDay.getMonth();
        this.OneMonth = this.anything_month + 1;
        this.anyDays = this.OneDay.getDate();
        this.OneHour = this.OneDay.getHours();
        this.OneMinute = this.OneDay.getMinutes();
        this.OneSecond = this.OneDay.getSeconds();
        this.WeekDay = this.OneDay.getDay();
        this.anyMonth = ['睦月', '如月', '弥生', '卯月', '皐月', '水無月', '文月', '葉月', '長月', '神無月', '霜月', '師走'];
        this.something_Month = this.anyMonth[this.anything_month];
        this.TimeNow = this.time_now + this.comma +
            (this.OneYear) + '年' +
            (this.OneMonth) + '月' +
            (this.anyDays) + '日' + this.comma +
            (this.OneHour) + '時' +
            (this.OneMinute) + '分' +
            (this.OneSecond) + '秒' + this.comma +
            (this.OneWeek[this.WeekDay]) + '曜日';
    }
    Himekuri.prototype.justnow = function () {
        try {
            if (isNaN(this.OneMonth || this.anything_month)) {
                throw new Error('暦の月判定にNaNが表示されました、例外を発生させます!');
            }
            else if (this.something_Month == '') {
                throw new Error('和風月に空文字列が表示されました、例外を発生させます!');
            }
            else {
                console.log(this.TimeNow + this.comma + this.something_Month);
            }
        }
        catch (e) {
            console.error('例外を補足しました、メッセージです ... ', e.message);
        }
    };
    return Himekuri;
}());
var himekuri = new Himekuri();
himekuri.justnow();
