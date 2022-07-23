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

    <!-- 사이드바-->
    <jsp:include page="../commonJSP/sideBar.jsp" />


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

                        <div class="loginInfo">"${user.name}"님</div>
                        <!-- 로그아웃 버튼 사이드바와 중복되어 제외 -->
                    </ul>
                </div>


            </nav>
        </form>
    </header> <!--  헤더 끝 -->
    <!-- 메인 리스트 -->
    <main>

        <div>
            <h2 class="title">강의명</h2>
        </div>

        <!--  테이블  -->
        <div class="tableWrap">
            <table class="tight">
                <thead>
                    <tr>
                        <th style="width:20%;">제목</th>
                        <th style="width:25%;">내용</th>
                        <th style="width:5%;">작성자</th>
                        <th style="width:10%;">제출</th>
                        <th style="width:5%;">확인</th>
                        <th style="width:10%;">작성일</th>
                        <th style="width:10%;">마감일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>스마트웹</td>
                        <td>k-디지털</td>
                        <td>홍길동</td>
                        <td>
	                        <form class='filebox' action='' method='post'>
	                        	 <label for="upload">업로드</label>
  									<input type="file" id="upload"> 
	                        </form>
						</td>
                        <td><span class="badge bg-danger">미제출</span></td>
                        <!-- 뱃지 색상
                        <span class="badge bg-secondary">gray</span>
                        <span class="badge bg-dark">Dark</span>
                        <span class="badge bg-danger">red</span>
                        <span class="badge bg-warning text-dark">yellow</span>
                         -->
                        <td>2022-07-23</td>
                        <td>2022-07-23</td>
                    </tr>
                    <tr>
                        <td>스마트웹</td>
                        <td>k-디지털</td>
                        <td>홍길동</td>
                        <td>제출</td>
                        <td><span class="badge bg-dark">제출</span></td>
                        <td>2022-07-23</td>
                        <td>2022-07-23</td>
                    </tr>
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