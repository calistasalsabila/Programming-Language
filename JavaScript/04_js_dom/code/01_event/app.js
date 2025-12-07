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

// addeventlistener
const eventbtn = document.querySelector('#eventbtn');

eventbtn.addEventListener('click', function(){
    alert('clicked');
})


function stepOne (){
    console.log("step one");
}

function stepTwo (){
    console.log("step two");
}

// on click, ketimpa variable terbaru
eventbtn.onclick = stepOne;
eventbtn.onclick = stepTwo; // -> ni outputnya <nimpa yg 1>

// biar ga ketumpuk
eventbtn.addEventListener('click', stepOne);
eventbtn.addEventListener('click', stepTwo);