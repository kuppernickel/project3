<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>강의 계획서</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/syllabus.css">
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
                        <a style="color: black" class="nav-link" href="#">강의리스트</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">과제</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="#">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" href="syllabus.jsp">수업계획서</a>
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
        <h2 class="lectureTitle">선택한 강의</h2>
    </div>



    <!-- 테이블 -->
    <div class="lessonPlan"><ion-icon name="book-outline"></ion-icon>수업계획</div>


    <div class="tableWrap">
        <table class="tight">
            <thead><tr>
                <th style="width:15%;">교과목명</th>
                <td style="width:35%;">${subject.lessonName }</td>
             
            </tr></thead>
            <tbody><tr>
            
          
 
                <th>학점/시간</th>
               	<td>${sylla.grades}</td>
               
                
            </tr><tr>
                <th>대상학년</th>
                <td>${sylla.level }</td>
                
            </tr><tr>
                <th>교수명</th>
                <td>${sylla.professor}</td>
                <th>연락처/이메일</th>
                <td>${sylla.mobile }</td>
            </tr>
            <tr>
                <th>교수명</th>
                <td colspan="3"></td>
                <th>${sylla.professor}</th>
                <td></td>
            </tr><tr>
                <th>강의실</th>
                <td colspan="3"></td>
                <th>${sylla.location }</th>
                <td></td>
            
              
            
        
            
            </tr></tbody>
        </table>
        
    </div><!-- 테이블 끝 -->

    <!-- 두번째 테이블 -->
    <div class="lessonPlan2"><ion-icon name="documents-outline"></ion-icon>수업평가방법</div>


    <div class="tableWrap">
        <table class="tight">
            <thead><tr>
                <th>평가항목</th>
                <th>중간고사</th>
                <th>기말고사</th>
                <th>과제</th>
                <th>출석</th>
            
            </tr></thead>
            <tbody><tr>
                <th>비율</th>
                <td>${sylla.rateTestScore1 }</td>
                <td>${sylla.rateTestScore2 }</td>
                <td>${sylla.rateAssignment }</td>
                <td>${sylla.rateAttendence }</td>
            </tr>
            </tbody>
        </table>
    </div><!-- 두번째 테이블 끝 -->
</main>

<!-- zzzzzzzzzdlstod -->

<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>