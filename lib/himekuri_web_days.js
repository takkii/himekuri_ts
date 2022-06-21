var Himekuri = /** @class */ (function () {
    function Himekuri() {
        this.OneDay = new Date();
        this.OneYear = this.OneDay.getFullYear();
        this.TwoYear = this.OneYear + 1;
        this.newYear = new Date(this.TwoYear + "/1/1").valueOf();
        this.newDays = new Date().valueOf();
        this.day = Math.ceil((this.newYear - this.newDays) / (60 * 60 * 24 * 1000) - 1);
        this.comma = " : ";
    }
    Himekuri.prototype.days = function () {
        console.log("\u6765\u5E74\u306E1\u67081\u65E5\u307E\u3067\u3042\u3068".concat(this.comma).concat(this.day, "\u65E5\u3067\u3059"));
    };
    return Himekuri;
}());
var himekuri = new Himekuri();
himekuri.days();
