<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>강의 계획서</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/syllabus.css">
</head>
<body  id="body-pd">

<!--  헤더  -->
<header>
    <form>
        <nav class="navbar sticky-top navbar-dark bg-light">


            <!-- 서브메뉴  -->
            <div class="subMenu">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">강의실 홈</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">나의 강의 목록</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">Disabled</a>
                    </li>
                </ul>
            </div>


            <!-- 로그인 -->
            <div class="loginForm">
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
            </div>
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
                <a href="index.html" class="nav__link active">
                    <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">홈으로</span>
                </a>
                <a href="detailedLectureList.html" class="nav__link">
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
        <h2 class="lectureTitle">선택한 강의</h2>
    </div>


    <!--  검색필터  -->
    <div class="filter">
        <form>
            <div class="filterWrap">
                <div class="filterList">
                    <ul>
                        <li>
                            <select>
                                <option selected>학기 선택</option>
                                <option>1학년1학기</option>
                                <option>1학년2학기</option>
                                <option>2학년1학기</option>
                                <option>2학년2학기</option>
                                <option>3학년1학기</option>
                                <option>3학년2학기</option>
                                <option>1학년1학기</option>
                            </select>
                        </li>
                    </ul>
                    <div class="filterList">
                        <ul>
                            <li>
                                <select>
                                    <option selected>과목을 선택하세요</option>
                                    <option>스마트 웹</option>
                                    <option>콘텐츠 개발자</option>
                                    <option></option>
                                    <option></option>
                                    <option></option>
                                    <option></option>
                                    <option></option>
                                </select>
                            </li>
                        </ul>
                    </div>
                    <button type="button" class="btn btn-dark" style="margin:0 2vW">학사정보 동기화</button>
                </div>
            </div>
        </form>
    </div><!--  검색필터 끝  -->





    <!-- 테이블 -->
    <div class="lessonPlan"><ion-icon name="book-outline"></ion-icon>수업계획</div>


    <div class="tableWrap">
        <table class="tight">
            <thead><tr>
                <th style="width:15%;">교과목명</th>
                <td style="width:35%;"></td>
                <th style="width:15%;">주관학과</th>
                <td style="width:35%;"></td>
            </tr></thead>
            <tbody><tr>
                <th>학점/시간</th>
                <td></td>
                <th>이수구분</th>
                <td></td>
            </tr><tr>
                <th>대상학년</th>
                <td></td>
                <th>개설년도/학기</th>
                <td></td>
            </tr><tr>
                <th>교수명</th>
                <td></td>
                <th>연락처/이메일</th>
                <td></td>
            </tr><tr>
                <th>교과목개요</th>
                <td colspan="3"></td>
                <th></th>
                <td></td>
            </tr><tr>
                <th>교육목표</th>
                <td colspan="3"></td>
                <th></th>
                <td></td>
            </tr><tr>
                <th>교수명</th>
                <td colspan="3"></td>
                <th></th>
                <td></td>
            </tr><tr>
                <th>강의실(시간)</th>
                <td colspan="3"></td>
                <th></th>
                <td></td>
            </tr><tr>
                <th>주교재</th>
                <td colspan="3"></td>
                <th></th>
                <td></td>
            </tr></tbody>
        </table>
    </div><!-- 테이블 끝 -->

    <!-- 두번째 테이블 -->
    <div class="lessonPlan2"><ion-icon name="documents-outline"></ion-icon>수업평가방법</div>


    <div class="tableWrap">
        <table class="tight">
            <thead><tr>
                <th>평가항목</th>
                <th>중간고사</th>
                <th>기말고사</th>
                <th>퀴즈</th>
                <th>과제</th>
                <th>팀PJ</th>
                <th>출석</th>
                <th>기타1</th>
                <th>기타2</th>
                <th>기타3</th>
                <th>발표</th>
                <th>참여도</th>
            </tr></thead>
            <tbody><tr>
                <th>비율</th>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr><tr>
                <th>참여도<br>세부비율</th>
                <th colspan="6">강의 Q&A</th>
                <th colspan="5">토론방</th>
            </tr><tr>
                <th>비율</th>
                <td colspan="6">0</td>
                <td colspan="5">0</td>
            </tr><tr>
                <th>1회 당 점수</th>
                <td colspan="6">0</td>
                <td colspan="5">0</td>
            </tr></tbody>
        </table>
    </div><!-- 두번째 테이블 끝 -->
</main>


<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>