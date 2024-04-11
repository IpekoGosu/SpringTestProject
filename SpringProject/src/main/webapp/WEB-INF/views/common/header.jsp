<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<body>
    <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-expand-lg navbar-transparent navbar-dark navbar-theme-primary mb-4">
        <div class="container">
            <a class="navbar-brand @@logo_classes" href="${path}/">
                <img class="navbar-brand-dark common" src="${path}/resources/assets/img/brand/light.svg" height="35" alt="Logo light">
                <img class="navbar-brand-light common" src="${path}/resources/assets/img/brand/dark.svg" height="35" alt="Logo dark">
            </a>
            <c:if test="${loginMember != null}">
            <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
            	<li class="nav-item" style="color: white">${loginMember.name}님 안녕하세요</li>
            </ul>
            </c:if>
            <div class="d-none d-lg-block @@cta_button_classes">
                <a href="${path}/notice/list" class="btn btn-md btn-outline-white animate-up-2 mr-3"><i class="fas fa-book mr-1"></i> <span class="d-xl-none">공지</span> <span class="d-none d-xl-inline">공지사항</span></a>
                <a href="${path}/member/view" class="btn btn-md btn-outline-white animate-up-2 mr-3"><i class="fas fa-book mr-1"></i> <span class="d-xl-none">회원</span> <span class="d-none d-xl-inline">회원목록</span></a>
                <c:if test="${loginMember == null}">
                	<a href="${path}/login" class="btn btn-md btn-secondary animate-up-2"><i class="fas fa-shopping-bag mr-2"></i>로그인</a>
            	</c:if>
                <c:if test="${loginMember != null}">
                	<a href="${path}/logout" class="btn btn-md btn-secondary animate-up-2"><i class="fas fa-shopping-bag mr-2"></i>로그아웃</a>
            	</c:if>
            </div>
        </div>
    </nav>
</header>
</body>

