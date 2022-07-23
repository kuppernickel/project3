<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>강의 목록</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/subject.css">
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
                        <a style="color: black" class="nav-link" href="getLessonList.do?subjectCode=${subjectCode}">강의리스트</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="/getTaskList.do?subjectCode=${subjectCode}">과제</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="getBoardList.do?table=notice&subjectCode=${subjectCode}">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="getsyllabus.do?subjectCode=${subjectCode }">수업계획서</a>
                    </li>
                    
					<div class="loginInfo">${user.name}
		                <c:choose>
			                <c:when test="${user.auth eq '학생'}">
		                	학생
		                	</c:when>
		                	<c:otherwise>
		                	교수
		                	</c:otherwise>
		                </c:choose>
	                </div>
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
            <h2 class="lectureTitle">강의목록</h2>
        </div>


        <!-- 테이블 -->
        <div class="tableWrap">
            <table class="tight">
                <thead><tr>
                    <th style="width:10%; flex-basis: 10%;" >주차</th>
                    <th style="width:10%; flex-basis: 10%;">차시</th>
                    <th style="width:55%; flex-basis: 55%">강의명</th>
                    <th class="hide" style="width:15%; flex-basis: 15%;">출결마감</th>
                    <th style="width:10%; flex-basis: 10%;">출결</th>
                </tr></thead>
                <tbody>
	                <c:forEach items="${lessonList}" var="lesson">
		                <tr>
		                    <td>${lesson.lessonWeek}</td>
		                    <td>${lesson.topicCount}</td>
		                    <td><a href="/getLesson.do?lessonSeq=${lesson.lessonSeq}">${lesson.lessonName}</a></td>
		                    <td class="hide">${lesson.lessonDeadline}</td>
		                    <td><span class="badge bg-secondary">미출결</span></td>
		                </tr>
		            </c:forEach>
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