<%@page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${board.title}</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
    
</head>
<body  id="body-pd">

<!--  헤더 -->
<header>
    <form>
        <nav class="navbar sticky-top navbar-dark bg-light">

		
            <!-- 서브메뉴  -->
            <div class="subMenu">
                <c:if test="${table ne 'commonNotice'}">
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
    	            </ul>
                </c:if>

               	<!-- 로그아웃 버튼 사이드바와 중복되어 제외 -->
            </div>


        </nav>
    </form>
</header> <!--  헤더 끝 -->




<!-- 사이드바 -->
<jsp:include page="../commonJSP/sideBar.jsp"/>



	<center>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq}" />
			<div class='title' name="title"><h1>${board.title}</h1></div>
			<div class='postInfo'>
				<span class='text'>
					${board.writer }
					<span class='textBar'>|</span>
					${board.writeDate }
					<span class='textBar'>|</span>
					<a href="/post.do?table=${table}&seq=${board.seq}&type=update&file=${board.fileName}" value="글 수정">수정</a>
					<span class='textBar'>|</span>
					<a href="deleteBoard.do?seq=${board.seq}&table=${table}">삭제</a>
					<span class='textBar'>|</span>
					<a href="getBoardList.do?table=${table}">목록</a>
				</span>
			</div>

				
			<!-- 게시글 내용 -->
			<div class='content' name="content">
				${board.content}
			</div>
			
			
						<!-- 업로드 파일 다운링크 -->
			<div class='download'>
				<span class='downloadText'> 다운로드 : </span>
				<h2>
					<a href="fileDownload.do?file=${board.fileName}&beforeName=${board.originalFileName}">
						${board.originalFileName}
					</a>
				</h2>
			</div>
			

		</form>
	</center>
				
				
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
