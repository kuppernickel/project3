<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>과제 목록</title>
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
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/assignmentList.css">
</head>
<body  id="body-pd">

<header>
    <form>
        <nav class="navbar sticky-top navbar-dark bg-light">


            <!-- 서브메뉴  -->
            <div class="subMenu">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">강의리스트</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">과제</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">수업계획서</a>
                    </li>
                </ul>
            </div>


				<div class="loginInfo">"${user.name}"님</div>
                <!-- 로그아웃 버튼 사이드바와 중복되어 제외 -->
        </nav>
    </form>
</header> <!--  헤더 끝 -->




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




    <main>


        <div>
            <h2 class="lectureTitle">내 과목 과제리스트</h2>
        </div>


        <!-- 테이블 -->
        <div class="tableWrap">
            <table class="tight">
                <thead><tr>
                    <th style="width:10%; flex-basis: 10%;" >주차</th>
                    <th style="width:10%; flex-basis: 10%;">차시</th>
                    <th style="width:55%; flex-basis: 55%">강의명</th>
                    <th class="hide" style="width:15%; flex-basis: 15%;">수업기간</th>
                    <th style="width:10%; flex-basis: 10%;">과제</th>
                </tr></thead>
                <tbody>
	                <%-- <c:forEach items="${subjectList}" var="subject"> --%>
		                <tr>
		                    <td>1</td>
		                    <td>1</td>
		                    <td><a href="getSubject.do?subjectCode=J1B01">스마트웹 콘텐츠 개발자 양성</a></td>
		                    <td class="hide">22.01.12 ~ 22.07.26</td>
		                    <td><span class="badge bg-secondary">없음</span></td>
		                </tr>
		            <%-- </c:forEach> --%>
                <!-- <tr>
                    <td>1</td>
                    <td>Item2</td>
                    <td><a href="#">Item2</a></td>
                    <td class="hide">*</td>
                    <td><span class="badge bg-danger">미제출</span></td>
                </tr><tr>
                    <td></td>
                    <td>Item1</td>
                    <td><a href="#">Item1</a></td>
                    <td class="hide">*</td>
                    <td><span class="badge bg-success">제출</span></td>
                </tr> -->
                </tbody>
            </table>
        </div><!-- 테이블 끝 -->
    </main>

    <!-- 페이징 -->
    <div class="listNum" id="page_control">
        <a href="">이전</a>
        <a href="">1</a>
        <a href="">다음</a>
    </div>



    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>