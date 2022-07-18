<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>전체 강의 목록</title>
    <!--  부트스트랩 CDN  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <!--  제이쿼리 CDN  -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lectureList.css">
</head>
<body  id="body-pd">


     <!--  헤더  -->
    <header>
        <form>
            <nav class="navbar sticky-top navbar-dark bg-light" style="justify-content: end;">
                
                <!-- 로그인/로그아웃 테스트 -->
                <div class="loginInfo">"${user.name}"님</div>
                <!-- 로그아웃 버튼 사이드바와 중복되어 제외 -->
            </nav>
        </form>
    </header><!--  헤더 끝  -->



<!-- 사이드바 -->
<div class="l-navbar" id="navbar">
    <nav class="nav">
        <div>
            <div class="nav__brand">
                <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                <span class="nav__logo">학사 종합 포털</span>
            </div>
            <div class="nav__list">
                <a href="home.do" class="nav__link active">
                    <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">홈으로</span>
                </a>
                <a href="detail.do" class="nav__link">
                    <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">강의</span>
                </a>
                <a href="#" class="nav__link">
                    <ion-icon name="pie-chart-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">ㅁㄴㅇㄹ</span>
                </a>
                <a href="#" class="nav__link">
                    <ion-icon name="book-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">ㅁㄴㅇㄹ</span>
                </a>
                <a href="myInfo.html" class="nav__link">
                    <ion-icon name="ellipsis-horizontal-sharp" class="nav__icon"></ion-icon>
                    <span class="nav_name">내 정보</span>
                </a>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">로그아웃</span>
                </a>
            </div>
        </div>
    </nav>
</div><!-- 사이드바 끝 -->


<!-- 메인 리스트 -->
<main>
    <div class="mainWrap">
        <div class="search"><input type="text" placeholder="강의명을 입력하세요"> <button type="submit" class="btn btn-dark" style="margin:0 2vW">검색</button></div>
        <!--  검색창 끝  -->

        <!--  강의 목록   -->
        <div class="listWrap">
        	<c:forEach items="${subjectList}" var="subject">
	            <a href="/getLessonList.do?subjectCode=${subject.subjectCode}">
	                <div class="list">
	                    <img src="../img/KakaoTalk_20220711_152825809.jpg" alt="">
	                    <div class="text">
	                        <span class="badge bg-success">${subject.location}</span>
	                        <span class="textTitle">${subject.lessonName}</span><br>
	                        <span>담당교수: ${subject.profName}</span><br>
	                        <span>${subject.scd}</span>
	                    </div>
	                </div>
	            </a>
	        </c:forEach>
        </div>
    </div>
</main>

<!-- 페이징 -->
<div class="listNum" id="page_control">
    <a href="">이전</a>
    <a href="">1</a>
    <a href="">다음</a>
</div>


<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>