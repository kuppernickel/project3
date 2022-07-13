let time = 5; // 제한시간
let min = "";    // 분
let sec = "";    // 초
let timer = document.querySelector('.check');


let t = setInterval( () => {  //주기적으로 실행 하도록 함
    min = parseInt(time / 60);
    sec = time % 60;


    time --;
    console.log(time);

    if(time < 0){ // 시간 종료 시

        clearInterval(t); // setInterval 종료
        timer.innerHTML = '수강완료';


    }
    clearTimeout()
}, 1000);
