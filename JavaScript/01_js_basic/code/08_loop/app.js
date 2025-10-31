const character = [
    ['Dokja', 'Jeha', 'Hsy'],
    ['Shirone' , 'Neid', 'Eruki'],
    ['Deon', 'Cruel', 'Caver']
]

for(let i = 0 ; i < character.length ; i++){
    const row = character[i];
    console.log(`character row ${i+1}`);

    for(let j = 0; j < row.length ; j++){
        console.log(row[j]);
    }
}

for (let row of character){
    for(let ch of row ){
        console.log(ch);
    }
}


const password = '123';
let guess = prompt("Enter the password: ");

while(guess != password){
    guess = prompt("Enter the valid passrowd: ");
}

alert("Password Valid")


let max = parseInt(prompt("Masukkan nilai maximal dari tebakan: "));

while(!max){
    max = parseInt(prompt("Masukkan angka max nya la"));
}

targetNum = Math.floor(Math.random()* max) +1;
console.log(targetNum);

tebakan = parseInt(prompt("tebakan anda berapa? "));

while(tebakan != targetNum){
    if(tebakan < targetNum){
        tebakan = parseInt(prompt("Masukkan tebakan yang lebih tinggi: "));
    }else{
        tebakan = parseInt(prompt("Masukkan tebakan dengan nilai lebih rendah"));
    }
}

alert("Tebakan anda benar yeay");




let matkul = ['basdat', 'oop', 'os'];

for (let namaMatkul of matkul){
    console.log(`matkul ${namaMatkul}`);
}

const studentScore = {
    hamin: 90,
    jaemin: 90,
    somin: 90,
};

for (let student in studentScore){
    console.log(`nama : ${student} score nya ${studentScore[student]}`);
};