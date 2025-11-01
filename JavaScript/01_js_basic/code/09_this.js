// this

const fisikey = {
    nama: 'Iota',
    age: 12,
    apaYa: function (){

        return `hi my name is ${this.nama}, and my age is ${this.age}`;
    }
}


console.log(fisikey.apaYa());

fisikey.nama = 'Gamma';
fisikey.age = '7';

console.log(fisikey.apaYa());