let orv = ['Kim Dokja', 'TLS123', '3rd line'];


orv[0] = 'Yjh';
console.log(orv[0]);
console.log(orv);

let mc = ['shirone', 'cale', 'cyan', , , , 'jiwoo'];
console.log(mc.length); // 7

let asc = [10, 20, 30, 40, 50];

asc.push(70, 90);
console.log(asc); // [ 10, 20, 30, 40, 50, 70, 90]

asc.pop();
console.log(asc); // [ 10, 20, 30, 40, 50, 70 ]

asc.unshift(5);
console.log(asc); // [5, 10, 20, 30,40, 50, 70]

asc.shift();
console.log(asc); // [ 10, 20, 30, 40, 50, 70 ]



