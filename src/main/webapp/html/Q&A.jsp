<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Q&A</title>
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
  <!-- SUMMERNOTE -->
  <script src="../summernote/summernote-lite.js"></script>
  <script src="../summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="../summernote/summernote-lite.css">
  <!-- CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

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
    <h2 class="Title">Q&A</h2>
  </div>

  <!-- 과목 필터  -->
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
  </div><!--  과목 필터 끝  -->


  <!-- 검색 필터  -->
  <div class="searchFilterWrap">
    <div>게시물 3개</div>

    <div>
      <form>
        <div class="searchFilterList">
          <div class="searchFilter">
            <ul>
              <li>
                <select>
                  <option selected>제목</option>
                  <option>작성자</option>
                  <option>내용</option>
                </select>
              </li>
            </ul>
          </div>
          <div class="searchFilter">
            <input type="text">
          </div>
          <div>
            <button type="submit" class="btn btn-dark">검색</button>
          </div>
        </div>
      </form>
    </div>

  </div><!--  검색 필터 끝  -->





  <!--  검색필터  -->
  <div class="tableWrap">
    <table class="tight">
      <thead><tr>
        <th style="width:5%; flex-basis: 5%;" >번호</th>
        <th style="width:55%; flex-basis: 55%;">제목</th>
        <th style="width:15%; flex-basis: 15%">작성자</th>
        <th style="width:15%; flex-basis: 15%;">등록일</th>
        <th style="width:10%; flex-basis: 10%;">조회</th>
      </tr></thead>
      <tbody><tr>
        <td>3</td>
        <td><a href="">Q&A</a></td>
        <td></td>
        <td>2022-06-20</td>
        <td>14</td>
      </tr><tr>
        <td>2</td>
        <td><a href="">Q&A!!!</a></td>
        <td></td>
        <td>2022-05-26</td>
        <td>20</td>
      </tr><tr>
        <td>1</td>
        <td><a href="">Q&A</a></td>
        <td></td>
        <td>2022-03-27</td>
        <td>15</td>
      </tr></tbody>
    </table>
  </div><!-- 테이블 끝 -->

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