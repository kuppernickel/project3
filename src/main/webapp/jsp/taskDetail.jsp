<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>과제 제출</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/taskDetail.css">
</head>

<body id="body-pd">

    <!-- 사이드바 -->
    <jsp:include page="../commonJSP/sideBar.jsp" />

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
    <!-- 메인 리스트 -->
    <main>


            <form action="" method="post">
                <div class='title' name="title">
                    <h1>${task.title}</h1>
                </div>
                <div class='postInfo'>
                    <span class='text'>
                        <c:set var="deadline" value="${task.taskDeadline}"/>
                        <c:choose>
                        	<c:when test="${empty deadline}">기한없음</c:when>
                        	<c:otherwise>${task.taskDeadline} 까지</c:otherwise>
                        </c:choose>
                        <c:if test="${not empty task.fileName}">
                        	<c:out escapeXml="false" value="
                        		 | 첨부파일: 
                        		 <a href='fileDownload.do?file=${task.fileName}&beforeName=${task.originalFileName}' 
                        		 	style='text-decoration:underline;'>${task.originalFileName}</a>
                        	 "/>
                        </c:if>
                    </span>
                </div>

                <!-- 게시글 내용 -->
                <div class='content' name="content">
                    ${task.content}
                </div>
            </form>





		<c:set var="userAuth" value="${user.auth}"/>
       	<c:choose>
       	<c:when test="${userAuth eq '교수'}">
       		<c:out escapeXml="false" value="
      		    </main>
            	<div class='listWrap'>
            	<h3>제출된 과제</h3>
           	"/>
       		<c:forEach items="${taskSubmitList}" var="taskSubmit">
	       		<c:out escapeXml="false" value="
				        <a href='fileDownload.do?file=${taskSubmit.fileName}&beforeName=${taskSubmit.originalFileName}'
				         	style='text-decoration:underline;display:block;' download='' class='listInfo'>
			                <span class='text2'>
			                    ${taskSubmit.writer}
			                    <span class='textBar'>|</span>
			                    ${taskSubmit.writeDate}
			                    <span class='textBar'>|</span>
                        		${taskSubmit.originalFileName}
			                </span>
				        </a>
	        	"/>
        	</c:forEach>
        	<c:out escapeXml="false" value="
			    </div>
		    "/>
        </c:when>
        <c:otherwise>
        	<c:out escapeXml="false" value="
        		<div class='miniFormWrap'>
		           <div class='miniForm'>"/>
		               <c:if test='${empty taskSubmit.seq}'><c:out escapeXml="false" value="
		               		<form action='/insertTaskSubmit.do' method='post' enctype='multipart/form-data'>"/>
		               </c:if>
		               <c:if test='${not empty taskSubmit.seq}'><c:out escapeXml="false" value="
		               		<form action='/updateTaskSubmit.do' method='post' enctype='multipart/form-data'>"/>
		               </c:if>
		               		<c:if test='${not empty taskSubmit.seq}'><c:out escapeXml="false" value="
			               		<input type='hidden' name='seq' value='${taskSubmit.seq}'>
			               		<input type='hidden' name='file' value='${taskSubmit.fileName}'>"/>
		               		</c:if><c:out escapeXml="false" value="
		               		<input type='hidden' name='writer' value='${user.userId}'>
		               		<input type='hidden' name='parent' value='${task.seq}'>
		                   <div class='formTitle'>
		                       과제 제출
		                   </div>
		                   <div>"/>
		                   		<c:if test='${not empty taskSubmit.seq}'><c:out escapeXml="false" value="
		                   			제출한 파일: ${taskSubmit.originalFileName}"/>
		                   		</c:if><c:out escapeXml="false" value="
		                       <input type='file' id='flieUpLoad' name='uploadFile' required>
		                       <button type='submit' class='sendBtn'>"/>
		                           <c:if test='${empty taskSubmit.seq}'><c:out escapeXml="false" value="
		                           제출하기"/>
		                           </c:if>
		                           <c:if test='${not empty taskSubmit.seq}'><c:out escapeXml="false" value="
		                           다시 제출하기"/>
		                           </c:if><c:out escapeXml="false" value="
		                       </button>
		                   </div>
		               </form>
		           </div>
		       </div>
		           </main>
           "/>
        </c:otherwise>
      </c:choose>


    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>

</html>