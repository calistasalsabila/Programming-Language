const delayBackgroundChanger = (color, delay) => {
    return new Promise((resolve, reject) => {
        setTimeout(()=> {
            document.body.style.backgroundColor = 'color';
            resolve()
        })
    })
}


delayBackgroundChanger('blue', 2000)
    .then(() => delayBackgroundChanger('green', 4000))
    .then(() => delayBackgroundChanger('purple', 6000));