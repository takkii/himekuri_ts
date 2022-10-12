class Env{
    env: any;
    language: any;

    constructor(){
        this.env = process.env;
        this.language = this.env.LANG || this.env.LANGUAGE || this.env.LC_ALL || this.env.LC_MESSAGES;
    }

    run(){
    // console.log(this.env)
    if (this.language == "ja_JP.UTF-8"){
        console.log(`日本語`)
    } else if (this.language == "C.UTF-8"){
        console.log(`英語圏`)
    } else {
        console.log(`${this.language}`)
    }
}
}

const environ = new Env();
environ.run();