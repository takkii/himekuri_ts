class Himekuri{
	OneDay: Date;
	OneYear: any;
	TwoYear: any;
	newYear: number;
	newDays: number;
	day: number;
	comma: string;

	constructor(){
		this.OneDay = new Date();
		this.OneYear = this.OneDay.getFullYear();
		this.TwoYear = this.OneYear + 1;
		this.newYear= new Date(this.TwoYear+"/1/1").valueOf();
		this.newDays = new Date().valueOf();
		this.day = Math.ceil((this.newYear-this.newDays)/(60*60*24*1000) -1);
        this.comma = " : ";
    }

    days(){
    	console.log(`来年の1月1日まであと${this.comma}${this.day}日です`);
    }
}

const himekuri = new Himekuri();
himekuri.days();


