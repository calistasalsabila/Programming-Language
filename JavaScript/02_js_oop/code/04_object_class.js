class Color {
    constructor(r, g, b, name){
        this.r = r;
        this.g = g;
        this.b = b;
        this.name = name;
    }

    innerRgb(){
        const {r,g,b} = this;
        return `${r}, ${g}, ${b}` 
    }

    color(){
        console.log("the color is " + this.name);
        return "huahahahhaa"
    }
    rgb() {
        return `rgb(${this.innerRgb()})` 
    }

}


const blue = new Color(0,0,255, "blue");


console.log(blue.color());
console.log(blue.rgb());
