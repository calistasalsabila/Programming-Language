let arr = [1,2 ]

arr.hi = () => "hello";

console.log(arr.hi()); // hello

let arr1 = [2,3]

// arr1.hi(); // error

Array.prototype.hm = () => "hmm";

// bisa
console.log(arr.hm());
console.log(arr1.hm());