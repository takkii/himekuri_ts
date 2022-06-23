var Env = /** @class */ (function () {
    function Env() {
        this.env = process.env;
        this.language = this.env.LANG || this.env.LANGUAGE || this.env.LC_ALL || this.env.LC_MESSAGES;
    }
    Env.prototype.run = function () {
        // console.log(this.env)
        if (this.language == "ja_JP.UTF-8") {
            console.log("\u65E5\u672C\u8A9E");
        }
        else {
            console.log("".concat(this.language));
        }
    };
    return Env;
}());
var environ = new Env();
environ.run();
