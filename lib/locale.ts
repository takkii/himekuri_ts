class Browzer{
   user_lang: string;

   constructor(){
   	if (typeof window !== `undefined`) {
   	  this.user_lang = window.navigator.language;
   	}
   }

   default(){
   	console.log(`${this.user_lang}`);
   }
}

const browser = new Browzer();
browser.default();

// browser in console
// console.log(window.navigator.language)