let main = document.querySelector('main');
let ring = document.querySelector('.ring');

function pageOn(){
    if (main.classList.contains('hide')){
        main.classList.remove('hide');
        ring.style.display='none';
	}
}

setTimeout( () => {
	console.log('asdf');
	pageOn();
    }, 2000);



