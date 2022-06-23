var Browzer = /** @class */ (function () {
    function Browzer() {
        if (typeof window !== "undefined") {
            this.user_lang = window.navigator.language;
        }
    }
    Browzer.prototype["default"] = function () {
        console.log("".concat(this.user_lang));
    };
    return Browzer;
}());
var browser = new Browzer();
browser["default"]();
// browser in console
// console.log(window.navigator.language)
