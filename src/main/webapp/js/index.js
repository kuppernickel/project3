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



/* ACTIVE */


function getsStorage(value, address) {
    sessionStorage.setItem('id', value);
    location.href = address;
}


const linkColor = document.querySelectorAll('.nav__link');
for (let i = 0; i < linkColor.length; i++) {
    var arr = [linkColor[0].id, linkColor[1].id, linkColor[2].id, linkColor[3].id];
}


function colorLink() {
    if (this.id == sessionStorage.getItem('id')) {
        this.classList.add('active')
    } else {
        this.classList.remove('active')
    }
    console.log(this.id == sessionStorage.getItem('id'));
}
linkColor.forEach(l => l.addEventListener('click', colorLink))
