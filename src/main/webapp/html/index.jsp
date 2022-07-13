<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>딩동댕대학교</title>
    <!--  부트스트랩 CDN  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <!--  제이쿼리 CDN  -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!--  chart  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!--  CSS  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body id="body-pd">

    <!--  헤더  -->
    <header>
        <form>
            <nav class="navbar sticky-top navbar-dark bg-light" style="justify-content: end;">
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-primary button-class1" onclick="click1()">학생</button>
                    <button type="button" class="btn btn-default button-class2" onclick="click2()">교수</button>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control" placeholder="학번" aria-label="First name">
                    </div>
                    <div class="col">
                        <input type="password" class="form-control" placeholder="비밀번호" aria-label="Last name">
                    </div>
                </div>
                <button type="submit" class="btn btn-dark" style="margin:0 2vW">로그인</button>
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
                        <a href="/html/index.html" class="nav__link active">
                            <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                            <span class="nav_name">홈으로</span>
                        </a>
                        <a href="/html/detailedLectureList.html" class="nav__link">
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
                        <a href="/html/myInfo.html" class="nav__link">
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
        </div> <!-- 사이드바 끝 -->



    <main>

        <!-- 콘텐츠 -->
        <div class="board_wrap">


            <!-- 강의 목록 -->
            <div class="board_first">
                <table class="table table-hover">
                    <thead>
                        <tr style='colspan:"4"; background: #f5f5f5'>
                            <th><a href="">강의 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr><tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    </tbody>
                </table>
            </div><!-- 강의 목록 끝 -->



            <!--   과제리스트  -->
            <div class="board_second">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5';>
                        <th><a href="">과제 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265120</td>
                        <td>수학</td>
                        <td>2020.04.23</td>
                    </tr>
                    </tbody>
                </table>
            </div> <!--   과제리스트 끝 -->

            <!--  학사 공지  -->
            <div class="board_third">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5'>
                        <th><a href="">학사 공지<ion-icon name="add-circle-outline"></ion-icon></a></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>
                    <tr>
                        <td>265121</td>
                        <td>국어</td>
                        <td>2020.04.23</td>
                    </tr>

                    </tbody>
                </table>
            </div><!--  학사 공지 끝 -->


            <!--   성적 그래프    -->
            <div class="board_fourth">
                <div class="graphWrap">
                    <canvas id="canvas1" ></canvas>
                </div>
            </div>
        </div><!--   성적 그래프 끝    -->


    </main><!--  콘텐츠 끝  -->

<!-- JS -->
<script src="${pageContext.request.contextPath}/js/chart.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>


</body>


</html>