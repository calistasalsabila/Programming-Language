const allImages = document.getElementsByTagName('img');

for (let img of allImages) {
	// console.log(img.src);
	img.src =
		'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1920px-Cat_August_2010-4.jpg';
}

const squareImages = document.getElementsByClassName('square');

for (let img of squareImages) {
	img.src =
		'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1920px-Cat_August_2010-4.jpg';
}



// all in one cuy
const links = document.querySelectorAll('a');

for (let link of links) {
	link.style.color = 'rgb(0, 108, 134)';
	link.style.textDecorationColor = 'magenta';
	link.style.textDecorationStyle = 'wavy';
}


// style
const linkss = document.querySelectorAll('p a'); // a yang ada di dalam paragraf

for (let link of linkss) {
	link.style.color = 'rgb(0, 108, 134)';
	link.style.textDecorationColor = 'magenta';
	link.style.textDecorationStyle = 'wavy';
}

// bisa buat nyari ni
const cari = document.querySelectorAll('div[lang="en"]')