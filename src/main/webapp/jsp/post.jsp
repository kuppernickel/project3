<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글쓰기</title>
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
    <script src="${pageContext.request.contextPath}/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/summernote/lang/summernote-ko-KR.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/summernote/summernote-lite.css">
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/post.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/syllabus.css">
    <script>
    	function moveToList() {
    		location.href = "/noticeBoard.do";
    	}
    </script>
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
<jsp:include page="../commonJSP/sideBar.jsp"/>



<div class="editorWrap">
    <form action="/insertBoard.do" method="post" enctype="multipart/form-data">
        <input class="inputTitle" type="text" placeholder="제목을 입력하세요" name="title">
        <textarea id="summernote" name="content"></textarea>
        
        <!-- 어느 게시판인지를 알려주기 위한 input. value값은 나중에 유동적으로 바뀌도록 수정 예정 -->
        <input type="hidden" name="table" value="${table}">
        <input type="hidden" name="writer" value="1">
        <sec:csrfInput />
        
        <!-- 사진 이외의 업로드 파일 -->
        <input type="file" name="uploadFile">
        <div class="btns">
            <button type="submit" class="btn btn-dark sendBtn">저장</button>
            <button type="button" class="btn btn-dark listBtn" onclick="moveToList()">목록</button>
        </div>
    </form>
</div>

<script src="${pageContext.request.contextPath}/js/editor.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>