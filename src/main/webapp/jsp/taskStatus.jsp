<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>과제 현황</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/taskStatus.css">
</head>
<body  id="body-pd">

<!--  헤더 -->
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
                </div>
            </div>
        </form>
    </div><!--  검색필터 끝  -->





    <!-- 현황 테이블 -->
    <div class="tableWrap">
        <table class="tight">
            <thead><tr>
                <th style="width:15%;">현황</th>
                <th style="width:85%;">
                    <span>진행예정 : 0개 / </span>
                    <span>종료 : 1개 / </span>
                    <span>평가완료 : 0개</span>
                </th>
            </tr></thead>
        </table>
    </div><!-- 테이블 끝 -->

    <!-- 과제 유형 테이블 -->

    <div class="tableWrap2">
        <table class="tight">
            <thead><tr>
                <th style="width:5%;">주차 차시</th>
                <th style="width:5%;">과제 유형</th>
                <th style="width:35%;">과제 제목</th>
                <th class="hide" style="width:10%;">제출 방법</th>
                <th style="width:30%;">제출 기간</th>
                <th class="hide" style="width:5%;">공개 여부</th>
                <th class="hide" style="width:5%;">제출 인원</th>
                <th class="hide" style="width:5%;">평가 인원</th>
            </tr></thead>
            <tbody><tr>
                <td>11-1</td>
                <td>개인과제</td>
                <td><a class="lectureLink" href="./post.html">창업아이디어 개발 계획서 제출</a></td>
                <td class="hide">온라인</td>
                <td>2022-05-26 00:00 ~ 2022-06-26 23:59</td>
                <td class="hide">공개</td>
                <td class="hide">7</td>
                <td class="hide">0/8</td>
            </tr>
            <tr>
                <td>11-1</td>
                <td>개인과제</td>
                <td><a class="lectureLink" href="./post.html">창업아이디어 개발 계획서 제출</a></td>
                <td class="hide">온라인</td>
                <td>2022-05-26 00:00 ~ 2022-06-26 23:59</td>
                <td class="hide">공개</td>
                <td class="hide">7</td>
                <td class="hide">0/8</td>
            </tr>
            <tr>
                <td>11-1</td>
                <td>개인과제</td>
                <td><a class="lectureLink" href="./post.html">창업아이디어 개발 계획서 제출</a></td>
                <td class="hide">온라인</td>
                <td>2022-05-26 00:00 ~ 2022-06-26 23:59</td>
                <td class="hide">공개</td>
                <td class="hide">7</td>
                <td class="hide">0/8</td>
            </tr>
            <tr>
                <td>11-1</td>
                <td>개인과제</td>
                <td><a class="lectureLink" href="./post.html">창업아이디어 개발 계획서 제출</a></td>
                <td class="hide">온라인</td>
                <td>2022-05-26 00:00 ~ 2022-06-26 23:59</td>
                <td class="hide">공개</td>
                <td class="hide">7</td>
                <td class="hide">0/8</td>
            </tr>
            <tbody><tr>
                <td>11-1</td>
                <td>개인과제</td>
                <td><a class="lectureLink" href="./post.html">창업아이디어 개발 계획서 제출</a></td>
                <td class="hide">온라인</td>
                <td>2022-05-26 00:00 ~ 2022-06-26 23:59</td>
                <td class="hide">공개</td>
                <td class="hide">7</td>
                <td class="hide">0/8</td>
            </tr></tbody>
        </table>
    </div><!-- 두번째 테이블 끝 -->

    <!-- 페이징 -->
    <div class="listNum" id="page_control">
        <a href="">이전</a>
        <a href="">1</a>
        <a href="">다음</a>
    </div>


</main>

<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>