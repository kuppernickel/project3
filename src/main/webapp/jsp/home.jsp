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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">

</head>
<body id="body-pd">


<container>
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



    <main>

        <!-- 콘텐츠 -->
        <div class="board_wrap">


            <!-- 강의 목록 -->
            <div class="board_first">
                <table class="table table-hover">
                    <thead>
                        <tr style='colspan:"4"; background: #f5f5f5'>
                            <th><a class="aTag" href="#">강의 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${subjectList}" var="subject">
		                    <tr>
		                        <td>${subject.subjectCode}</td>
		                        <td>${subject.lessonName}</td>
		       					
		                    </tr>
	                    </c:forEach>
					</tbody>
                </table>
            </div><!-- 강의 목록 끝 -->



            <!--   과제리스트  -->
            <div class="board_second">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5';>
                        <th><a class="aTag" href="#">과제 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${taskList}" var="task">
		                    <tr>
		                        <td>${task.lessonName.lessonName}</td>
		                        <td>${task.title}</td>
		                        <td>
		                        	<c:set var="deadline" value="${task.taskDeadline}"/>
			                        <c:choose>
			                        	<c:when test="${empty deadline}">기한없음</c:when>
			                        	<c:otherwise>${task.taskDeadline}</c:otherwise>
			                        </c:choose>
		                        </td>
		                    </tr>
	                    </c:forEach>
	                      <c:forEach items="${taskList}" var="task">
		                    <tr>
		                        <td>${task.lessonName.lessonName}</td>
		                        <td>${task.title}</td>
		                        <td>
		                        	<c:set var="deadline" value="${task.taskDeadline}"/>
			                        <c:choose>
			                        	<c:when test="${empty deadline}">기한없음</c:when>
			                        	<c:otherwise>${task.taskDeadline}</c:otherwise>
			                        </c:choose>
		                        </td>
		                    </tr>
	                    </c:forEach>
                    </tbody>
                </table>
            </div> <!--   과제리스트 끝 -->

            <!--  학사 공지  -->
            <div class="board_third">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5'>
                        <th>학사 공지</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
	                   	<c:forEach items="${noticeList}" var="notice">
		                    <tr>
		                     <td><a href="getBoard.do?seq=${notice.seq }&table=commonNotice">${notice.title }</a></td>
		                     <td>${notice.content }</td>
		                     <td>${notice.writeDate }</td>
		                    </tr>
	                    </c:forEach>
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
    
</container>

<!-- JS -->
  <script src="${pageContext.request.contextPath}/js/loading.js"></script>
<script src="${pageContext.request.contextPath}/js/chart.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</body>


</html>