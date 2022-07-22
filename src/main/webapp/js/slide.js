$(document).ready(function() {
    var slide = $('.examSlide').bxSlider({
        pager: false,   // 페이지
        controls: false, // 좌우 컨트롤러 on/off
        pager: true,  // 블릿버튼
        mode: "horizontal",
        pagerType:'short'
    }); //시험 문제 슬라이드


    $(".arrowLeft").on("click", function() {
        slide.goToPrevSlide();
        return false;
    });
    $(".arrowRight").on("click", function() {
        slide.goToNextSlide();
        return false;
    });// 슬라이드 및 좌,우 클릭 버튼
    
   
});


$(".Item").click(function(){
	var value = $("input:radio:checked").val();
	
	if(value == undefined){
		alert('화이팅!' + '인생은 실전이야');
	}
	console.log(value);
}
)