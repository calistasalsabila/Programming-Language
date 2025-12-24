const form = document.querySelector('form');
const input = document.querySelector('input');
const list = document.querySelector('#notes');

input.addEventListener('change' , (e) => {
    console.log('nilai input berubah');
})

input.addEventListener('input' , (e) => {
    console.log('nilai input berubah');
})

form.addEventListener('submit', function(e){
    // aksi otomatis browser dibatalkan
    e.preventDefault();
    const noteValue = input.value;
    const newList = document.createElement('li');
    newList.innerText = noteValue;
    list.append(newList);
    console.log(noteValue);
    input.value = '';
});



list.addEventListener('click', (e) => {
    console.log(e);
    e.target.nodeName ==='LI' && e.target.remove();
    console.dir(e.target);
})
// const lis = document.querySelector('li');

// for(let li in lis){
//     li.addEventListener('click', function(){
//         li.remove();
//     })
// }