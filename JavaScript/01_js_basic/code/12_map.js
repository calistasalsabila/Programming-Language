const angka = [1, 2, 3, 4, 5, 6, 7, 8, 9];

const angkaKaliDua = angka.map(function(num){
    return num*2;
});


console.log(angkaKaliDua);


const titlesMc= [
    {
        title: "ORV",
        mc: "Dokja"
    },
    {
        title: "Infinite Mage",
        mc: "Arian Shirone"
    }
]

const titlesMcc = titlesMc.map(function(mcc){
    return mcc.mc.toUpperCase();
});

console.log(titlesMcc);