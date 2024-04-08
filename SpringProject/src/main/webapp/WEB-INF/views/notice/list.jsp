<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<head>
<script src="https://code.jquery.com/jquery-latest.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Spaces - Blog post</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Blog post">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Blog post">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Blog post">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="${path}/resources/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="${path}/resources/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="${path}/resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body class="bg-soft">
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="회원목록" name="title"/>
</jsp:include>

    <main>
        <!-- Hero -->
        <section class="">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 text-center">
                        <h1 class="display-2 mb-3">공지사항</h1>
                        <c:if test="${loginMember.role} == 'ADMIN'">
                       	<div class="btn mb-2 mr-2 btn-outline-primary">
                      		<a href="#">
                       		글쓰기
                      		</a>
                       	</div>
                        </c:if>
                        
                        <div id="noticearea">
	                        <div id="tablearea">
	                        	<table class="table table-hover">
								    <thead>
								        <tr>
								            <th scope="col">#</th>
								            <th scope="col">제목</th>
								            <th scope="col">좋아요 수</th>
								            <th scope="col">검색결과: ${count}</th>
								        </tr>
								    </thead>
								    <tbody>
								    	<c:if test="${empty list}">
											<tr>
												<td colspan="4">조회된 글이 없습니다.</td>
											</tr>
										</c:if>
								    
								    	<c:forEach var="item" items="${list}" varStatus="status">
									        <tr>
									            <th scope="row">${status.count}</th>
									            <td>
									                <div class="d-flex align-items-center">
									                    ${item.title}
									                </div>
									            </td>
									            <td>${item.likeCount}</td>
									            <td>
									                <div class="d-flex">
									                    <i class="fas fa-edit mr-3" data-toggle="tooltip" data-placement="top" title="Edit item"></i>
									                    <i class="fas fa-trash text-danger mr-2" data-toggle="tooltip" data-placement="top" title="Delete item"></i>
									                </div>
									            </td>
									        </tr>
								    	</c:forEach>
								    </tbody>
								</table>
	                        </div>
                        
                        <nav aria-label="Page navigation example">
						    <ul class="pagination">
						        <li class="page-item">
						            <div class="page-link" onclick="movePage(${pageInfo.prevPage});"><i class="fas fa-angle-double-left"></i></div>
						        </li>
	                        	
	                        	<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
	                        		<c:if test="${status.current != pageInfo.currentPage}">
							        <li class="page-item">
							            <div class="page-link" onclick="movePage(${status.current});">${status.current}</div>
							        </li>
	                        		</c:if>
	                        		<c:if test="${status.current == pageInfo.currentPage}">
							        <li class="page-item active">
							            <div class="page-link">${status.current}</div>
							        </li>
	                        		</c:if>
	                        	</c:forEach>
						        <li class="page-item">
						            <div class="page-link" onclick="movePage(${pageInfo.nextPage});"><i class="fas fa-angle-double-right"></i></div>
						        </li>
						    </ul>
						</nav>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script type="text/javascript">
    	function movePage(page){
    		
    		$.ajax({
    			type: 'post',
    			url: '${path}/notice/page',
    			data:{
    				page : page
    			},
    			dataType: "text"
    		})
    		.done((result)=>{
    			$('#noticearea').replaceWith(result);
    		})
    		.fail((jqXHR)=>{
    			console.log(jqXHR);
    		})
    	}
    
    </script>

    <!-- Core -->
<script src="${path}/resources/vendor/jquery/dist/jquery.min.js"></script>
<script src="${path}/resources/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${path}/resources/vendor/headroom.js/dist/headroom.min.js"></script>
<script src="${path}/resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="${path}/resources/vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="${path}/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="${path}/resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="${path}/resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="${path}/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="${path}/resources/vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="${path}/resources/vendor/chartist/dist/chartist.min.js"></script>
<script src="${path}/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="${path}/resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="${path}/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="${path}/resources/assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="${path}/resources/assets/js/spaces.js"></script>
</body>

</html>