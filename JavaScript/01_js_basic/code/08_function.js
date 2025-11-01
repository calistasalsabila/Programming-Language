function hi(){
    console.log("hi");
}


// function expression
const hello = function hehehe(){
    console.log("Hello");
}

hello();

// function as argument
function hm(){
    console.log('hm');
}

function doublee(func){
    func();
    func();
}

doublee(hm);

// function return function

function angkaRand(){
    const rand = Math.random();
    console.log(rand);

    if(rand > 0.5){
        return function yeay(){
            console.log("u got more than 0.5");
        }
    }else{
        return function yeay2(){
            console.log("u got less than 0.5");
        }
    }

}

// cara manggilnya
angkaRand()();

const result = angkaRand();
result();


const math = { // object
    perkalian: function(x, y){ // method
        return x*y;
    }
}

