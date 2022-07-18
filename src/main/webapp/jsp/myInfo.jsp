<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>내 정보 변경</title>
    <!--  부트스트랩 CDN  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
	<!--   제이쿼리 CDN  -->
	<!--    <script src="https://code.jquery.com/jquery-3.6.0.min.js"-->
	<!--            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>-->
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!--  CSS  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myInfo.css">



</head>
<body id="body-pd">

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



<container>

    <!--  개인정보 카드  -->
    <div class="card">
        <label class="fileUpload" for="imgFile">
            <input type="file" accept="image/*" id="imgFile" style="display: none;">
            <img id="img" src="" onerror="this.src='/img/normal.jpg'" class="card-img-top" alt="...">
        </label>
        <div class="card-body">
            <h5 class="card-title"><span>${userInfo.name}</span></h5>
            <p class="card-text">자기 소개Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">구분 학생 / 교수<span>${userInfo.auth}</span></li>
            <li class="list-group-item">학번 or 직원번호<span>${userInfo.userId}</span></li>
            <li class="list-group-item">전공<span>${userInfo.major}</span></li>
            <li class="list-group-item">복수전공<span>${userInfo.major2}</span></li>
            <li class="list-group-item">부전공<span>${userInfo.subMajor}</span></li>
            <li class="list-group-item">학년<span>${userInfo.level}</span></li>
            <li class="list-group-item">재적<span>${userInfo.enroll}</span></li>
        </ul>
    </div>

    <form action="getInfo.do" method="post">
        <table>
            <tbody>
                <tr>
                    <th class="tableTitle">
                        내 정보 변경
                    </th>
                </tr>
                <tr>
                    <th class="tableList">mobile</th>
                    <td> <input name="mobile" type="text" value="${userInfo.mobile}"></td>
                </tr>
                <tr>
                    <th class="tableList">email</th>
                    <td> <input name="email" type="text" value="${userInfo.email}"></td>
                </tr>
                <tr>
                    <th class="tableList">zipcode</th>
                    <td> <input name="zipCode" type="text" value="${userInfo.zipCode}"></td>
                </tr>
                <tr>
                    <th class="tableList">address1</th>
                    <td> <input name="address1" type="text" value="${userInfo.address1}"></td>
                </tr>
                <tr>
                    <th class="tableList">address2</th>
                    <td> <input name="address2" type="text" value="${userInfo.address2}"></td>
                </tr>
                <input type="hidden" name="userId" value="${user.userId}">
                <tr>
                    <th class="tableList">자기소개</th>
                    <td> <textarea name="comid" type="text"></textarea></td>
                </tr>
            </tbody>
        </table>
        <div>
            <button type="submit" class="btn btn-dark" style="margin:0 2vW">수정</button>
        </div>
    </form>
</container>


<!-- JS -->
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
<script src="${pageContext.request.contextPath}/js/changeImg.js"></script>

</body>
</html>