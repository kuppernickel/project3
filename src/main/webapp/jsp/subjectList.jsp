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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/subjectList.css">
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
<jsp:include page="../commonJSP/sideBar.jsp"/>


<!-- 메인 리스트 -->
<main>
    <div class="mainWrap">
        <div class="search">
        	<form method="get" action="/getSubjectList.do">
		        <select name="day">
		        	<option value="all">요일선택</option>
		        	<option value="1월">월</option>
		        	<option value="2화">화</option>
		        	<option value="3수">수</option>
		        	<option value="4목">목</option>
		        	<option value="5금">금</option>
		        </select>
		        <button type="submit" class="btn btn-dark" style="margin:0 2vW">검색</button>
	        </form>
        </div>
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