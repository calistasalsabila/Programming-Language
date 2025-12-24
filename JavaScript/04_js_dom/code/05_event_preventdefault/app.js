const form = document.querySelector('form');

form.addEventListener('submit', function(e){
    // aksi otomatis browser dibatalkan
    e.preventDefault();
    console.log("sumbitted");
})