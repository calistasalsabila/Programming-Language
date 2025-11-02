const angka = [1, 2, 3, 4, 5];

function print(ygMaudiPrint){
    console.log(ygMaudiPrint);
}


angka.forEach(print);

// callback function
angka.forEach(function(elemen){
    if(elemen %2 == 0){
        console.log(elemen);
    }
});


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

titlesMc.forEach(function(titleMc){
    console/log(`novel title: ${titlesMc.title} and the mc is ${titlesMc.mc}`);
});
