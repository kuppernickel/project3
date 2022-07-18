let container = document.querySelector('container');
let ring = document.querySelector('.ring');

function pageOn(){
    if (container.classList.contains('hide')){
        container.style.display='block';
        ring.style.display='none';
	}
}

setTimeout( () => {
	console.log('로딩중');
	pageOn();
    }, 2000);



