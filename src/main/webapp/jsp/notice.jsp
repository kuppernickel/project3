<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공지사항</title>
    
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

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
                        <a style="color: black" class="nav-link" 
                        href="getSubjectList.do">강의리스트</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" 
                        href="gettaskstatus.do?subjectCode=${subjectCode}">과제</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" 
                        href="notice.do">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" 
                        href="getsyllabus.do?subjectCode=${subjectCode}">수업계획서</a>
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

    <div>
        <h2 class="Title">공지사항</h2>
    </div>


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
                <th style="width:10%; flex-basis: 10%">작성자</th>
                <th style="width:20%; flex-basis: 20%;">등록일</th>
            </tr></thead>
            <tbody>
            <c:forEach items="${boardList}" var="board">
	            <tr>
	                <td>${board.seq}</td>
	                <td><a href="getBoard.do?seq=${board.seq}&table=notice">${board.title}</a></td>
	                <td>${board.writer}</td>
	                <td>${board.writeDate}</td>
	            </tr>
	         </c:forEach>
            </tbody>
        </table>
    </div><!-- 테이블 끝 -->
	
    <!-- 페이징 -->
    <div class="listNum" id="page_control">
        <a href="">이전</a>
        <a href="">1</a>
        <a href="">다음</a>
        <a href="/post.do?table=${table}&subjectCode=${subjectCode}&type=insert">글 작성</a>
    </div>


</main>


<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>