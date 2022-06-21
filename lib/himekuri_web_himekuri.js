var Himekuri = /** @class */ (function () {
    function Himekuri() {
        this.OneDay = new Date();
        this.OneYear = this.OneDay.getFullYear();
        this.comma = " : ";
        this.ThreeYear = this.OneYear - 2018;
        this.newTwoDay = ((this.OneDay.getMonth() + 1) + "月" + (this.OneDay.getDate() + "日"));
        this.dot = ".";
        this.newThreeDay = ((this.OneDay.getMonth() + 1) + this.dot + (this.OneDay.getDate()));
    }
    Himekuri.prototype.web = function () {
        // R0 → R10 = R010 | R10 Change
        if (this.ThreeYear >= 10) {
            console.log("\u4EE4\u548C".concat(this.ThreeYear, "\u5E74").concat(this.newTwoDay).concat(this.comma, "R").concat(this.ThreeYear).concat(this.dot).concat(this.newThreeDay));
        }
        else {
            console.log("\u4EE4\u548C".concat(this.ThreeYear, "\u5E74").concat(this.newTwoDay).concat(this.comma, "R0").concat(this.ThreeYear).concat(this.dot).concat(this.newThreeDay));
        }
    };
    return Himekuri;
}());
var himekuri = new Himekuri();
himekuri.web();
