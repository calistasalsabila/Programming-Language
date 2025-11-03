const angka = [1,2,3]

const ganjil = angka.filter(n =>{
    return n%2 == 1; // sebagai kondisi, output berupa array yang telah di filter
});

console.log(ganjil);


const anime = [
    {
        title: "Demon Slayer",
        rate: 9.1
    },
    {
        title: "Bungou Stray Dogs",
        rate: 8.9
    },
    {
        title: "86",
        rate: 8.6
    }
];


const animes = anime.filter((anime) => {
    return anime.rate < 9
});

console.log(animes);