function Env() {
    const env = process.env;
    const language = env.LANG || env.LANGUAGE || env.LC_ALL || env.LC_MESSAGES;

    // console.log(env)
    console.log(language)
}

Env()