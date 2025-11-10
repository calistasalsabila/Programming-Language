const requestCallBack = (url, sucess, failure) => {

    const delay = Math.floor(Math.random() * 4500) + 500;

    setTimeout(() => {
        if(delay > 4000){
            failure("Error : Connection Timeout");
        }else {
            sucess(`Success ${url} ${delay}ms`)
        }
    }, delay);
}


const requestPromise = (url) => {
    return new Promise((resolve, reject) => {

        const delay = Math.floor(Math.random() * 4500) + 500;
        setTimeout(() => {
            if(delay > 4000){
                reject("Error : Connection Timeout");
            }else {
                resolve(`Success ${url} ${delay}ms`)
            }
        }, delay);
    })
}



requestCallBack('manhwa.com', function(response){console.log(`success ${response}`);}, function(error){console.log(`Error ${error}`);})

requestPromise('manga.com').then((response) => {console.log('success', response)}).catch((error)=>{console.log('error', error)})


requestPromise('apa.com').then((result) => {
    console.log(result + '1');
    return requestPromise('apa.com');
}).then((result)=>{ // then dst
    console.log(result + '2');
    return requestPromise('apa.com');
}).catch((err) => {
    console.log(result);
});


new Promise((resolve, reject) => {
    resolve(()=> {

    })

    reject(() => {

    })
})


const contohPromise = () => {
    return new Promise((resolve, reject) => {
        // resolve
        
        reject(()=>{
            'failed';
        })
    })
}