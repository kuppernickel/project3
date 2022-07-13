var img = document.querySelector('#img');

function changeImg(){
    img.innerHTML = 'asdf';
    console.log('asdf');
}

img.addEventListener('click', changeImg);