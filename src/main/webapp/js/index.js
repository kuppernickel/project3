/* EXPANDER MENU */
const showMenu = (toggleId, navbarId, bodyId) => {
    const toggle = document.getElementById(toggleId),
        navbar = document.getElementById(navbarId),
        bodypadding = document.getElementById(bodyId)
        

    if (toggle && navbar) {
        toggle.addEventListener('click', () => {
            navbar.classList.toggle('expander');
            bodypadding.classList.toggle('body-pd');
        })
    }
}

showMenu('nav-toggle', 'navbar', 'body-pd')

/* LINK ACTIVE */


function colorLink() {
	const linkColor = document.querySelectorAll('.nav__link')
	let i
    for(i = 0; i < linkColor.length; i++){
	linkColor[i].addEventListener('click', function(){
		linkColor[i].classList.toggle('active');
	})
}
}

