<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myHome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
   
</head>
<body id="body-pd">

<!--  헤더 -->
<header>
    <form>
        <nav class="navbar sticky-top navbar-dark bg-light">


            <!-- 서브메뉴  -->
            <div class="subMenu">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="getSubjectList.do">강의리스트</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="gettaskstatus.do?subjectCode=${subjectCode}">과제</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="notice.do">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="getsyllabus.do?subjectCode=${subjectCode}">수업계획서</a>
                    </li>
                    
					<div class="loginInfo">"${user.name}"님</div>
	                <!-- 로그아웃 버튼 사이드바와 중복되어 제외 -->
                </ul>
            </div>


        </nav>
    </form>
</header> <!--  헤더 끝 -->



<!-- 사이드바 -->
<jsp:include page="../commonJSP/sideBar.jsp"/>


    <main>

        <!-- 콘텐츠 -->
        <div class="board_wrap">


            <!-- 강의 목록 -->
            <div class="board_first">
                <table class="table table-hover">
                    <thead>
                        <tr style='colspan:"4"; background: #f5f5f5'>
                            <th><a class="aTag" href="#">내 강의 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
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
                        <th><a class="aTag" href="#">내 강의 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
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

            <!--  공지 사항  -->
            <div class="board_third">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5'>
                        <th><a class="aTag" href="#">내 강의 공지<ion-icon name="add-circle-outline"></ion-icon></a></th>
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
            </div><!--  공지 사항 끝 -->


    </main><!--  콘텐츠 끝  -->

<!-- JS -->
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</body>


</html>