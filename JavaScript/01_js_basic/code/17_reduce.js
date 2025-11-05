let score = [98, 104, 89, 90];

const totalScore = score.reduce((total, score) => {
    return total + score;
});

console.log(totalScore);

const anime = [
    {
        title: "Demon Slayer",
        rate: 8.1
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

const bestAnime = anime.reduce((bestAnime, currentAnime) => {
    if(currentAnime.rate > bestAnime.rate){
        return currentAnime;
    }
    return bestAnime;
});

console.log(bestAnime);