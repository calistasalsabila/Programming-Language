const dataStructure = {
    nama: 'Stack',
    id: 1,
    isFifo: false,
    apaYa: [],
    anotherSDA: {
        what: 'hm',
    }
}

dataStructure['id'] = 2;
dataStructure.anotherSDA.what = 'yeah';
// ga best practice
console.log(dataStructure['isFifo']) 

console.log(dataStructure.apaYa);

console.log(dataStructure.anotherSDA.what);


const mc = [
    {
        novel: 'ORV',
        nameMc: 'Dokja'
    }, 
    {
        novel: 'Im not that kind of talent',
        nameMc: 'Deon Hardt'
    }
]

console.log(mc[0].novel);

