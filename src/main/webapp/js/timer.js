let time = 1800; // 제한시간
let min = "";    // 분
let sec = "";    // 초
let timer = document.querySelector('.timer');
let modal = document.querySelector('.modalBackground');
let checkModal = document.querySelector('.modalBackground2');


function submitForm() { // 폼 전송
    document.getElementById("examForm").submit();
    location.replace('index.html');
}

function check(){ // 확인 모달
    checkModal.classList.remove('inactive2');
}


let t = setInterval( () => {  //주기적으로 실행 하도록 함
    min = parseInt(time / 60);
    sec = time % 60;

    timer.innerHTML = min + '분' + sec + '초';
    time --;


    if(time < 0){ // 시간 종료 시

        clearInterval(t); // setInterval 종료
        timer.innerHTML = '시간초과';
        modal.classList.remove('inactive'); // 시험종료 메세지


        setTimeout( () => {
                submitForm();
                location.replace('index.html');
            }, 5000);

    }
    clearTimeout()
    }, 1000);



