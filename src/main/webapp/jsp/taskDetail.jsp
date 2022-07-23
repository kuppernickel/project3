<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

    <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <span class="nav__logo">학사 종합 포털</span>
                </div>
                <div class="nav__list">
                    <a href="javascript:getsStorage('clickHome')" id='clickHome' class="nav__link">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">홈으로</span>
                    </a>
                    <a href="javascript:getsStorage('clickSubject')" id='clickSubject' class=" nav__link">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">과목</span>
                    </a>
                    <a href="javascript:getsStorage('clickMyInfo')" id='clickMyInfo' class=" nav__link">
                        <ion-icon name="ellipsis-horizontal-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>
                    </a>
                    <a href="javascript:getsStorage('clickNotice')" id='clickNotice' class=" nav__link">
                        <ion-icon name="book-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">학사공지</span>
                    </a>
                </div>
            </div>
        </nav>
    </div> <!-- 사이드바 끝 -->

    <!--  헤더 -->
    <header>
        <form>
            <nav class="navbar sticky-top navbar-dark bg-light">


                <!-- 서브메뉴  -->
                <div class="subMenu">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a style="color: black" class="nav-link" href="getSubjectList.do">강의리스트</a>
                        </li>
                        <li class="nav-item">
                            <a style="color: black" class="nav-link"
                                href="/getTaskList.do?subjectCode=${subjectCode}">과제</a>
                        </li>
                        <li class="nav-item">
                            <a style="color: black" class="nav-link"
                                href="getBoardList.do?table=notice&subjectCode=${subjectCode}">공지사항</a>
                        </li>
                        <li class="nav-item">
                            <a style="color: black" class="nav-link"
                                href="getSyllaList.do?subjectCode=${subjectCode }">수업계획서</a>
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

        <center>
            <form action="" method="post">
                <input name="seq" type="hidden" value="" />
                <div class='title' name="title">
                    <h1>과제명</h1>
                </div>
                <div class='postInfo'>
                    <span class='text'>
                        교수명
                        <span class='textBar'>|</span>
                        작성일자
                    </span>
                </div>

                <!-- 게시글 내용 -->
                <div class='content' name="content">
                    내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용
                    내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    내용ㅍ내용내용내용내용 내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                </div>
            </form>


        </center>



        <div class="miniFormWrap">
            <div class="miniForm">
                <form action="">
                    <div class="formTitle">
                        과제 제출
                    </div>

                    <div class="input">
                        <input type="text" placeholder="제목">
                    </div>

                    <div class="textarea">
                        <textarea name="" id="" placeholder="내용"></textarea>
                    </div>

                    <div>
                        <label class="inputFileBtn" for="flieUpLoad">
                            첨부파일<input type="file" id="flieUpLoad" style="display: none;">
                        </label>
                        <button type="button" class="sendBtn">
                            제출하기
                        </button>
                    </div>
                </form>
            </div>
        </div>


    </main>

    <div class="listWrap">

        <!-- 리스트 -->
        <a href="파일 저장된 경로 지정" download="">
            <div class='listInfo'>
                <span class='text2'>
                    제목
                    <span class='textBar'>|</span>
                    홍길동
                    <span class='textBar'>|</span>
                    2022-07-23
                    <span class='textBar'>|</span>
                    2022-07-23
                    <span class='textBar'>|</span>
                    제출
                </span>
            </div>
        </a>

        <a href="파일 저장된 경로 지정" download="">
            <div class='listInfo'>
                <span class='text2'>
                    제목
                    <span class='textBar'>|</span>
                    홍길동
                    <span class='textBar'>|</span>
                    2022-07-23
                    <span class='textBar'>|</span>
                    2022-07-23
                    <span class='textBar'>|</span>
                    제출
                </span>
            </div>
        </a>

        <a href="파일 저장된 경로 지정" download="">
            <div class='listInfo'>
                <span class='text2'>
                    제목
                    <span class='textBar'>|</span>
                    홍길동
                    <span class='textBar'>|</span>
                    2022-07-23
                    <span class='textBar'>|</span>
                    2022-07-23
                    <span class='textBar'>|</span>
                    제출
                </span>
            </div>
        </a>





    </div>


    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>

</html>