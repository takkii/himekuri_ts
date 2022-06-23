class Env{
    env: any;
    language: any;

    constructor(){
        this.env = process.env;
        this.language = this.env.LANG || this.env.LANGUAGE || this.env.LC_ALL || this.env.LC_MESSAGES;
    }

    run(){
    // console.log(env)
    console.log(this.language)
}
}

const environ = new Env();
environ.run();