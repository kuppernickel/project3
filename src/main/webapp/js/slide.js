$(document).ready(function() {
    var slide = $('.examSlide').bxSlider({
        pager: false,   // 페이지
        controls: false // 좌우 컨트롤러 on/off
    }); //메인배너 슬라이드



    $(".arrowLeft").on("click", function() {
        slide.goToPrevSlide();
        return false;
    });
    $(".arrowRight").on("click", function() {
        slide.goToNextSlide();
        return false;
    });
}); // 슬라이드 및 좌,우 클릭 버튼
