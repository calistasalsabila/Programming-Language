let mc = "Dokja";
let title = "DKoS";
let companion = " Jeha ";

// 1864 convert otomatis ke string
companion += 1864;

// string method with param
console.log(mc.indexOf("ok"));

// (start, stop)
console.log(mc.slice(1, 3)); 
console.log(companion.slice(3)); 

console.log(mc.replace('Dokja', 'Shirone'));

console.log(title.replace('DKoS', 'Prince of Underworld') + ' and ' + 'Oldest Dream');
console.log(`${title.replace('DKoS', 'Reader')} Hi ${companion}`);



let nebula = mc + companion;
nebula = nebula.toUpperCase();

console.log(mc[0]);

console.log(mc.length);
console.log(mc + " " + title);
console.log(nebula);