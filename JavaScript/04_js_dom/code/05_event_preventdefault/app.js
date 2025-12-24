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


