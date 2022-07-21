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
    		location.href = "/" + ${table} + ".do";
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
                        <a style="color: black" class="nav-link" href="getBoardList.do?table=notice&subjectCode=${subjectCode}">공지사항</a>
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



<div class="editorWrap">
    <form action=
     <c:set var="type" value="${type}"/>
    	<c:choose>
			<c:when test="${type eq 'insert'}">
	    		"/insertBoard.do" 
    		</c:when>
    		<c:otherwise>
    			"/updateBoard.do"
    		</c:otherwise>
    	</c:choose>
    	method="post" enctype="multipart/form-data">
        <input class="inputTitle" type="text" placeholder="제목을 입력하세요" name="title"
        	<c:if test="${type eq 'update'}">
        		value="<c:out value="${board.title}" />"
        	</c:if>
        > <!-- // 제목 input -->
        <textarea id="summernote" name="content">
        	<c:if test="${type eq 'update'}">
        		<c:out value="${board.content}" />
        	</c:if>
        </textarea>
        
        <!-- 게시물 작성 및 수정에 필요한 추가 정보들 -->
        <input type="hidden" name="table" value="${table}">
        <input type="hidden" name="writer" value="${user.name}">
        <input type="hidden" name="subjectCode" value="${subjectCode}">
        <c:if test="${type eq 'update'}">
       		<input type="hidden" name="seq" value="${board.seq}">
       	</c:if>
        
        
        <!-- 스프링 시큐리티 -->
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