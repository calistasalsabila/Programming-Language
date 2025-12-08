document.querySelector('button').addEventListener('click', (evt) => {
    console.log(evt);
})

const input = document.querySelector('input');

// pada saat neken tombol keyboard
input.addEventListener('keydown', () => {
    console.log("hehehe");
})

// pada saat lepas tombol keyboard
input.addEventListener('keyup', () => {
    console.log("hahaha");
});

// atau bisa gini 
input.addEventListener('keyup', (e) => {
    console.log(e);
    console.log(e.key);
    console.log(e.code);
    // atau bisa gini
    switch(e.code){
        case 'ArrowUp' :
            console.log('ea');
            break;
        // dst
        default:
            console.log("bebas");
    }
});