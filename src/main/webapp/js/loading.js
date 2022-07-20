let main = document.querySelector('main');
let ring = document.querySelector('.ring');

function pageOn(){
  	main.style.display='none';
  	ring.style.display='block';
  	
  	loading();
		
    }

function loading(){
	
	  	setTimeout( () => {
		console.log('로딩완료');
		document.loginForm.submit();
		}, 2000);
		
		clearTimeout();
}

