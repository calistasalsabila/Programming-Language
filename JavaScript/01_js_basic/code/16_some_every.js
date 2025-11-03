const exam = [90, 87, 88, 99]

const isPass = exam.every((exam) => exam > 80);

console.log(isPass); // true

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

const adaGa = anime.some((anime) => anime.rate > 8.0);

console.log(adaGa); // true