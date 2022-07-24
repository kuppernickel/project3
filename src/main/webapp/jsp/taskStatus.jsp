<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>과제 현황</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/taskStatus.css">
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
                        href="getLessonList.do?subjectCode=${subjectCode}">강의리스트</a>
                    </li>		
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" 
                        href="gettaskstatus.do?subjectCode=${subjectCode}">과제</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" 
                        href="getBoardList.do?table=notice&subjectCode=${subjectCode}">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a style="color: black" class="nav-link" 
                        href="getsyllabus.do?subjectCode=${subjectCode}">수업계획서</a>
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

    <!--  검색필터  -->
    <div class="filter">
        <form method=get action="/getTaskList.do">
        	<input type="hidden" name="subjectCode" value="${subjectCode}">
            <div class="filterWrap">
                <div class="filterList">
                    <ul>
                        <li>
                            <select name="submit">
				            	<c:set var="userAuth" value="${user.auth}"/>
				            	<c:choose>
				            	<c:when test="${userAuth eq '교수'}">
				            		<c:out escapeXml="false" value="
		                                <option value='all' selected>평가현황</option>
		                                <option value='scored'>평가완료</option>
		                                <option value='not'>미평가</option>
	                                "/>
					            </c:when>
					            <c:otherwise>
					            	<c:out escapeXml="false" value="
						            	<option value='all' selected>제출현황</option>
					                    <option value='제출'>제출완료</option>
					                    <option value='미제출'>미제출</option>
				                    "/>
					            </c:otherwise>
				                </c:choose>
	                        </select>
	                        <button type="submit" class="btn btn-dark" style="margin:0 2vW">검색</button>
                        </li>
                    </ul>
                </div>
               <!--  <div class="filterList">
                    <ul>
                        <li>
                            <select>
                                <option selected>제출현황</option>
                                <option>제출완료</option>
                                <option>미제출</option>
                            </select>
                        </li>
                    </ul>
                </div> -->
            </div>
        </form>
    </div><!--  검색필터 끝  -->

    <!-- 과제 유형 테이블 -->

    <div class="tableWrap2">
        <table class="tight">
            <thead><tr>
                <th style="width:30%;">과제 제목</th>
                <th style="width:20%;">제출 기한</th>
                <c:choose>
	            	<c:when test="${userAuth eq '교수'}">
	            		<c:out escapeXml="false" value="
	                        <th class='hide' style='width:5%;'>제출 인원</th>
	          				<th class='hide' style='width:5%;'>평가 인원</th>
                        "/>
		            </c:when>
		            <c:otherwise>
		            	<c:out escapeXml="false" value="
			            	<th class='hide' style='width:15%;'>제출 여부</th>
	                    "/>
		            </c:otherwise>
                </c:choose>
                <th class="hide" style="width:15%;">마감 여부</th>
            </tr></thead>
            <tbody>
	            <c:forEach items="${taskList}" var="task">
		            <tr>
		                <td><a class="lectureLink" href="/getTask.do?seq=${task.seq}">${task.title}</a></td>
		                <td>
			                <c:set var="deadline" value="${task.taskDeadline}"/>
	                        <c:choose>
	                        	<c:when test="${empty deadline}">기한없음</c:when>
	                        	<c:otherwise>${task.taskDeadline}</c:otherwise>
	                        </c:choose>
		                </td>
		                <c:choose>
			            	<c:when test="${userAuth eq '교수'}">
			            		<c:out escapeXml="false" value="
			                        <td class='hide'>${task.totalSubmit}/${task.totalStudent}</td>
		                			<td class='hide'>${task.scored}/${task.totalSubmit}</td>
		                        "/>
				            </c:when>
				            <c:otherwise>
				            	<c:out escapeXml="false" value="
					            	<td class='hide'>${task.submit}</td>
			                    "/>
				            </c:otherwise>
		                </c:choose>
		                <td class="hide">
			                <%-- <c:set var="deadline" value="${task.taskDeadline}"/>
			                <c:choose>
				            	<c:when test="${deadline eq '교수'}">
				            		<c:out escapeXml="false" value="
				                        <td class='hide'>7</td>
			                			<td class='hide'>0/8</td>
			                        "/>
					            </c:when>
					            <c:otherwise>
					            	<c:out escapeXml="false" value="
						            	<td class='hide'>미제출</td>
				                    "/>
					            </c:otherwise>
			                </c:choose> --%>
		                </td>
		            </tr>
	            </c:forEach>
            </tbody>
        </table>
    </div><!-- 두번째 테이블 끝 -->

    <!-- 페이징 -->
    <div class="listNum" id="page_control">
        <a href="">이전</a>
        <a href="">1</a>
        <a href="">다음</a>
        <c:if test="${user.auth eq '교수'}">
        	<a href="/postTask.do?subjectCode=${subjectCode}&type=insert">글 작성</a>
        </c:if>
    </div>


</main>

<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleBtn.js"></script>
</body>
</html>