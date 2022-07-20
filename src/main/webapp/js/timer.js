let time = 305; // 제한시간
let minutes = "";    // 분
let seconds = "";    // 초
let timer = document.querySelector('.timer');
let modal = document.querySelector('.modalBackground');
let checkModal = document.querySelector('.modalBackground2');


function submitForm() { // 폼 전송
    document.getElementById("examForm").submit();
    location.replace('home.do');
}

function check(){ // 확인 모달
    checkModal.classList.remove('inactive2');
}


let t = setInterval( () => {  //주기적으로 실행 하도록 함
    minutes = parseInt(time / 60);
    seconds = time % 60;
    
    min = minutes < 10 ? `0` + minutes : minutes;
    sec = seconds < 10 ? `0` + seconds : seconds;
    
    timer.innerHTML = min + '분' + sec + '초';
    time --;


    if(time < 0){ // 시간 종료 시

        clearInterval(t); // setInterval 종료
        timer.innerHTML = '시간초과';
        modal.classList.remove('inactive'); // 시험종료 메세지


        setTimeout( () => {
                submitForm();
                location.replace('home.do');
            }, 5000);

    }
    clearTimeout()
    }, 1000);



