class Himekuri{
    OneDay: Date;
    OneYear: any;
    comma: string;
    ThreeYear: any;
    newTwoDay: string;
    dot: string;
    newThreeDay: any;

    constructor(){
    this.OneDay = new Date();
    this.OneYear = this.OneDay.getFullYear();
    this.comma = " : ";
    this.ThreeYear = this.OneYear - 2018;
    this.newTwoDay = ((this.OneDay.getMonth() + 1)  + "月" + (this.OneDay.getDate() + "日"));
    this.dot = ".";
    this.newThreeDay = ((this.OneDay.getMonth() + 1)  + this.dot + (this.OneDay.getDate()));
    }

    web(){
    // R0 → R10 = R010 | R10 Change
    if (this.ThreeYear >= 10){
        console.log(`令和${this.ThreeYear}年${this.newTwoDay}${this.comma}R${this.ThreeYear}${this.dot}${this.newThreeDay}`);
    } else {
        console.log(`令和${this.ThreeYear}年${this.newTwoDay}${this.comma}R0${this.ThreeYear}${this.dot}${this.newThreeDay}`);
    }
}
}

const himekuri = new Himekuri();
himekuri.web();


