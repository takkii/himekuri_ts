var Env = /** @class */ (function () {
    function Env() {
        this.env = process.env;
        this.language = this.env.LANG || this.env.LANGUAGE || this.env.LC_ALL || this.env.LC_MESSAGES;
    }
    Env.prototype.run = function () {
        // console.log(env)
        console.log(this.language);
    };
    return Env;
}());
var environ = new Env();
environ.run();
