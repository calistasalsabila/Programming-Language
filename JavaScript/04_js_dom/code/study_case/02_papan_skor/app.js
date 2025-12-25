const p1Button = document.querySelector('#p1-button');
const p2Button = document.querySelector('#p2-button');
const p1Display = document.querySelector('#p1-display');
const p2Display = document.querySelector('#p2-display');
const reset = document.querySelector('#reset');
const winPointOption = document.querySelector('#winPoint');


let p1Score = 0;
let p2Score = 0;
let winPoint = 3;
let isGameOver = false;

p1Button.addEventListener('click', ()=>{
    if(!isGameOver){
        p1Score +=1;
        if(p1Score == winPoint){
            isGameOver = true;
        }
        p1Display.textContent = p1Score;
    }
    
})

p2Button.addEventListener('click', ()=> {
    if(!isGameOver){
        p2Score += 1;
        if(p2Score == winPoint){
            isGameOver = true;
        }
        p2Display.textContent = p2Score;
    } 
})

reset.addEventListener('click', ()=>{
    // reset bisa di buat function sendiri
    isGameOver = false;
    p1Display.textContent = 0;
    p1Score = 0;
    p2Display.textContent = 0;
    p2Score = 0;
})

winPointOption.addEventListener('change', function(){
    winPoint = parseInt(this.value);
    reset();
})



