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


function getsStorage(value, pagemove) {
    sessionStorage.setItem('id', value);
    location.href = pagemove;
}

const linkColor = document.querySelectorAll('.nav__link');
for (let i = 0; i < linkColor.length; i++) {
    var arr = [linkColor[0].id, linkColor[1].id, linkColor[2].id, linkColor[3].id];
}
const page1 = document.getElementById('clickHome');
const page2 = document.getElementById('clickSubject');
const page3 = document.getElementById('clickMyInfo');
const page4 = document.getElementById('clickNotice');



if (linkColor[0].id == sessionStorage.getItem('id')) {
    page1.classList.add('active');
    console.log('1번' + linkColor[0].id == sessionStorage.getItem('id'));
}
if (linkColor[1].id == sessionStorage.getItem('id')) {
    page2.classList.add('active');
    console.log('2번' + linkColor[1].id == sessionStorage.getItem('id'));
}
if (linkColor[2].id == sessionStorage.getItem('id')) {
    page3.classList.add('active');
    console.log('3번' + linkColor[2].id == sessionStorage.getItem('id'));
}
if (linkColor[3].id == sessionStorage.getItem('id')) {
    page4.classList.add('active');
    console.log('4번' + linkColor[3].id == sessionStorage.getItem('id'));
}


