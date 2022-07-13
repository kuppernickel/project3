let btn1 = document.querySelector('.button-class1');
let btn2 = document.querySelector('.button-class2');

function click1(){
    if (btn1.classList.contains('btn-default')){
        btn1.classList.remove('btn-default');
    }
    if(!btn1.classList.contains('btn-primary')){
        btn1.classList.add('btn-primary');
    }
    if(btn2.classList.contains('btn-primary')){
        btn2.classList.remove('btn-primary');
    }
    if(!btn2.classList.contains('btn-default')){
        btn2.classList.add('btn-default');
    }
    // document.login.action = ''

}
function click2(){
    if (btn2.classList.contains('btn-default')){
        btn2.classList.remove('btn-default');
    }
    if(!btn2.classList.contains('btn-primary')){
        btn2.classList.add('btn-primary');
    }
    if(btn1.classList.contains('btn-primary')){
        btn1.classList.remove('btn-primary');
    }
    if(!btn1.classList.contains('btn-default')){
        btn1.classList.add('btn-default');
    }
    // document.login.action = ''
}











// $(function() {
//
//     $('.button-class1').click(function(){
//         if( $(this).hasClass('btn-default') ) $(this).removeClass('btn-default');
//         if( !$(this).hasClass('btn-primary') ) $(this).addClass('btn-primary');
//         if( $('.button-class2').hasClass('btn-primary') ) $('.button-class2').removeClass('btn-primary');
//         if( !$('.button-class2').hasClass('btn-default') ) $('.button-class2').addClass('btn-default');
//     });
//
//     $('.button-class2').click(function(){
//         if( $(this).hasClass('btn-default') ) $(this).removeClass('btn-default');
//         if( !$(this).hasClass('btn-primary') ) $(this).addClass('btn-primary');
//         if( $('.button-class1').hasClass('btn-primary') ) $('.button-class1').removeClass('btn-primary');
//         if( !$('.button-class1').hasClass('btn-default') ) $('.button-class1').addClass('btn-default');
//     });
//
// });



// let btn1 = document.querySelector('.button-class1');
// let btn2 = document.querySelector('.button-class2');
//
// function click1(){
//     if (btn1.classList.contains('btn-default')){
//         btn1.classList.remove('btn-default');
//     }
//     if(!btn1.classList.contains('btn-primary')){
//         btn1.classList.add('btn-primary');
//     }
//     if(btn2.classList.contains('btn-primary')){
//         btn2.classList.remove('btn-primary');
//     }
//     if(!btn2.classList.contains('btn-default')){
//         btn2.classList.add('btn-default');
//     }
// }
// function click2(){
//     if (btn2.classList.contains('btn-default')){
//         btn2.classList.remove('btn-default');
//     }
//     if(!btn2.classList.contains('btn-primary')){
//         btn2.classList.add('btn-primary');
//     }
//     if(btn1.classList.contains('btn-primary')){
//         btn1.classList.remove('btn-primary');
//     }
//     if(!btn1.classList.contains('btn-default')){
//         btn1.classList.add('btn-default');
//     }
// }