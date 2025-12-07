const button = document.querySelector('#clickgw');

button.onclick = function (){
    console.log("Eh ak di tekan");
};

// dijalankan sekali 
button.onmouseover = function(){
    console.log("ssshh");
};


// atau bisa dibuat gini
const again = function (){
    console.log("againnn");
}

button.onmouseover = again;