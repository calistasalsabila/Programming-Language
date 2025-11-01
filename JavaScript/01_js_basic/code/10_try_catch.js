function wajibstring(stringnya){

    try {
        console.log(stringnya.toLowerCase());
    }catch(error){
        console.log("wajib string yang di masukkan")
    }
}

wajibstring(1); // output -> wajib string yang dimasukkan