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
</head>
<body>
    <!-- 시험페이지 헤더 -->
    <header>
        <div class="headerWrap">
            <div>현재 시험 페이지 자리</div>
            <div class="timer"></div>
        </div>
    </header>
    <!--  시험 메인페이지  -->
    <main>
        <form id="examForm" action="">
            <div class="examMain">
                <div class="arrowLeft"><ion-icon name="caret-back-circle-sharp"></ion-icon></div>
                <div>메인 시험 페이지</div>
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



    <script src="${pageContext.request.contextPath}/js/timer.js"></script>
</body>
</html>