function Color(r, g, b){
    this.r = r;
    this.g = g;
    this.b = b;
}


console.log(new Color(1,2,3));

Color.prototype.rgb = function (){
    const {r,g,b,} = this;
    return `rgb(${r}, ${g}, ${b})`
}

const color1 = new Color(1,2,3);

console.log(color1.rgb());

