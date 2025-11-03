console.log("Dokja!")

setTimeout(() => {
    console.log("51/49");
}, 5000);


// tiap x detik akan bekerja terus menerus, 
// setInterval(() => {
//     console.log("2 detik berlalu yeay");
// }, 2000);


// klo mau stop pakai function clearInterval(identifiernya)
const interval = setInterval(() => {
    console.log("2 detik berlalu yeay");
}, 2000);