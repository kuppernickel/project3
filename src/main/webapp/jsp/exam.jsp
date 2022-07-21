<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>시험</title>
    <!--  CSS  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/exam.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

    <!--  부트스트랩 CDN  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <!-- 제이쿼리 cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
    <!--  -->      
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.bxslider.css">
    <script src="${pageContext.request.contextPath}/js/jquery.bxslider.js"></script>

</head>
<body>
    <!-- 시험페이지 헤더 -->
    <header>
        <div class="headerWrap">
            <div class='lectureName'>과목명</div>
            <div class="timer"></div>
        </div>
    </header>
    <!--  시험 메인페이지  -->
    <main>
        <form id="examForm" action="">
            <div class="examMain">
                <div class="arrowLeft"><ion-icon name="caret-back-circle-sharp"></ion-icon></div>
                <div class='examWrap'>
		            	<ul class='examSlide'>
		            		<li class='examQuestions'>
		            			<h2 class='examTitle'>1. 서울 시민 모두가 동시에 외치면 무슨 말이 될까?</h2>
		            			    <div class='btns'>
			            			    <label for='a' class='Item'>
									    	<input id='a' type="radio" name="1_answer" value="천만의소리">천만의소리
								        </label>
								        <label for='b' class='Item'>
								      		<input id='b' type="radio" name="1_answer" value="만만의콩떡">만만의콩떡
							      		</label>
								      	<label for='c' class='Item'>
								      		<input id='c' type="radio" name="1_answer" value="개소리">개소리
								      	</label>
								    </div>
		            		</li>
		            		<li class='examQuestions'>
		            			<h2 class='examTitle'>2. 서울 시민 모두가 동시에 외치면 무슨 말이 될까?</h2>
		            			   		            			    <div class='btns'>
			            			    <label class='Item'>
									    	<input type="radio" name="2_answer" value="천만의소리">천만의소리
								        </label>
								        <label class='Item'>
								      		<input type="radio" name="2_answer" value="만만의콩떡">만만의콩떡
							      		</label>
								      	<label class='Item'>
								      		<input type="radio" name="2_answer" value="개소리">개소리
								      	</label>
								    </div>
		            		</li>
		            		<li class='examQuestions'>
		            			<h2 class='examTitle'>3. 서울 시민 모두가 동시에 외치면 무슨 말이 될까?</h2>
		            			 		            			    <div class='btns'>
			            			    <label class='Item'>
									    	<input type="radio" name="1_answer" value="천만의소리">천만의소리
								        </label>
								        <label class='Item'>
								      		<input type="radio" name="1_answer" value="만만의콩떡">만만의콩떡
							      		</label>
								      	<label class='Item'>
								      		<input type="radio" name="1_answer" value="개소리">개소리
								      	</label>
								    </div>
		            		</li>
		            		<li class='examQuestions'>
		            			<h2 class='examTitle'>4. 서울 시민 모두가 동시에 외치면 무슨 말이 될까?</h2>
		            			 		            			    <div class='btns'>
			            			    <label class='Item'>
									    	<input type="radio" name="1_answer" value="천만의소리">천만의소리
								        </label>
								        <label class='Item'>
								      		<input type="radio" name="1_answer" value="만만의콩떡">만만의콩떡
							      		</label>
								      	<label class='Item'>
								      		<input type="radio" name="1_answer" value="개소리">개소리
								      	</label>
								    </div>
		            		</li>
		            	</ul>
		            </div>
                <div class="arrowRight"><ion-icon name="caret-forward-circle-sharp"></ion-icon></div>
            </div>
            <div class="examBtn">
                <button type="button" class=" btn btn-dark" onclick=check()>제출</button>
            </div>


            <!--   제출 확인 모달   -->
            <modal class="modalBackground2 inactive2">
                <div class="modalContainer2">
                    <div>
                        <br>
                        <br>
                        <P class="modalText2"> 제출하시겠습니까?<br> 제출하면 재수정은 불가합니다.</P>
                        <div class="modalBnt2">
                            <button class="examSendBtn btn btn-dark" type="button" onclick=submitForm()>시험 종료</button>
                        </div>
                    </div>
                </div>
            </modal>
        </form>
    </main>

    <!--  모달창  -->
    <modal class="modalBackground inactive">
        <div class="modalContainer">
            <div>
                <form  id="" name="" method="" action="">
                    <p class="modalTitle">시험 종료</p>
                    <P class="modalText"> 시험 종료 버튼을 누르면 자동 제출 되며,<br> 5초 뒤 시험은 종료됩니다.</P>
                    <div class="modalBnt">
                        <button class="examSendBtn btn btn-dark" type="button" onclick=submitForm()>시험 종료</button>
                    </div>
                </form>
            </div>
        </div>
    </modal>


	<script src="${pageContext.request.contextPath}/js/slide.js"></script>
    <script src="${pageContext.request.contextPath}/js/timer.js"></script>
</body>
</html>