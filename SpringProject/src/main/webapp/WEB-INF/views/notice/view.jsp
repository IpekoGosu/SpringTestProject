<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<head>
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

<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp">
		<jsp:param value="회원목록" name="title"/>
	</jsp:include>
    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
		    <div class="position-relative">
		        <img src="${path}/resources/assets/img/brand/light-without-letter.svg" alt="Logo loader">
		        <img src="${path}/resources/assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
		    </div>
		</div>

        <!-- Hero -->
        <section class="section-header pb-7 bg-primary text-white">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10 text-center">
                        <div class="mb-4">
                            <a href="./blog.html" class="badge badge-danger text-uppercase mr-2 px-3">Seo</a>
                            <a href="#" class="badge badge-secondary text-uppercase px-3">Marketing</a>
                        </div>
                        <h1 class="display-3 mb-4 px-lg-5">90% of content gets no traffic from Google. How to improve it ?</h1>
                        <div class="post-meta"> 
                            <span class="font-weight-bold mr-3">James Curran</span> 
                            <span class="post-date mr-3">January 31, 2020</span> 
                            <span class="font-weight-bold">7 min read</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="section section-sm bg-white pt-6">
            <article class="container">
                <div class="row justify-content-center">
                	<button class="btn mb-2 mr-2 btn-icon-only rounded-circle btn-primary" type="button">
					    <span class="btn-inner-icon"><i class="far fa-thumbs-up"></i></span>
					</button>
                    <div class="col-12 col-lg-8">
                        <p>Adding a dark mode is basically adding a theme. The principles are the same for adding a light mode to a dark website or alternative styling based on user-defined variables, the time of year or holidays.</p>
                        <p>I added theming with a mix of  and CSS. In this post I’ll go step by step into the details of how I did it and what I learned.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias expedita earum modi sint voluptatum nemo assumenda explicabo laboriosam unde excepturi, necessitatibus consequatur quo! Quis impedit excepturi ut, alias omnis harum?</p>
                        <p>
                            <img class="rounded" src="${path}/resources/assets/img/blog/image-2.jpg" alt="Themesberg office">
                        </p>
                        <h2>Setup</h2>
                        <p>The themes are <a href="#">activated by CSS classes</a> on the root element. When the page is loaded, I want to apply the theme that most likely suits the visitor (you!) best. After all, most people don’t like configuring websites before they can read a blog post, so the the whole theming feature would likely remain unused otherwise. So I have to make a guess about what the visitor wants and expects. I do that in this order:</p>
                        <ol>
                            <li>I assume people don’t want the theme to change when they navigate between pages. So if the page loaded isn’t the first page they visit, I want to use the theme that was used before.</li>
                            <li>If it’s the first page they view on my site, their browser may be able to tell their preference.</li>
                            <li>If no preference is available, we can base the choice based on whether it’s day or night.</li>
                        </ol>
                        <p>Every time a page is loaded, in the current or a new tab, it checks if a theme was set previously. Because the preference for a light or dark theme can change during the day, with every change, I add a time stamp to the saved setting. Only when the state was saved less than two hours ago, it’s applied:</p>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eaque distinctio nemo tempora similique necessitatibus asperiores inventore ipsum, nostrum velit, quasi vitae natus numquam veritatis nobis, reiciendis deleniti facere molestias a.</p>
                        <h2>Header 2</h2>
                        <h3>Header 3</h3>
                        <h4>Header 4</h4>
                        <h5>Header 5</h5>
                        <h6>Header 6</h6>
                        <p class="my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi velit perferendis labore vel, necessitatibus laboriosam fugit inventore ad odio tenetur vitae veritatis, earum numquam consectetur voluptatem illum, sequi asperiores commodi?</p>
                        <ul>
                            <li>list item 1</li>
                            <li>list item 2</li>
                            <li>list item 3</li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit corrupti dolorem at iste perferendis! Modi praesentium vel, rem aliquid illo, nostrum asperiores dolorem corrupti odio tempora impedit deleniti eius voluptatibus.</p>
                    </div>
                </div>
                <div class="row justify-content-sm-center align-items-center py-3 mt-3">
                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <div class="col-9 col-md-6">
                                <h6 class="font-weight-bolder d-inline mb-0 mr-3">Share:</h6>
                                <button class="btn btn-sm mr-2 btn-icon-only btn-pill btn-twitter d-inline"  aria-label="twitter social link"><span class="fab fa-twitter"></span></button>
                                <button class="btn btn-sm mr-2 btn-icon-only btn-pill btn-facebook d-inline"  aria-label="facebook social link"><span class="fab fa-facebook-f"></span></button>
                                <button class="btn btn-sm btn-icon-only btn-pill btn-reddit d-inline"  aria-label="reddit social link"><span class="fab fa-reddit-alien"></span></button>
                            </div>
                            <div class="col-3 col-md-6 text-right">
                                <span class="far fa-bookmark text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Bookmark story"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
        <div class="section section-md bg-white text-black pt-0 line-bottom-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
                        <div>
                            <label class="h5 mb-4" for="exampleFormControlTextarea1"><span class="badge badge-md badge-primary text-uppercase mr-2">23</span> Comments</label>
                            <textarea class="form-control border border-light-gray" id="exampleFormControlTextarea1" placeholder="Add your comment" rows="6" data-bind-characters-target="#charactersRemaining" maxlength="1000"></textarea>
                            <div class="d-flex justify-content-between mt-3">
                                <small class="font-weight-light text-dark"><span id="charactersRemaining">
                                        <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                    characters remaining</small>
                                <button class="btn btn-primary animate-up-2" >Send</button>
                            </div>
                            <div class="mt-5">
                                <div class="card bg-soft border-light rounded p-4 mb-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <span class="font-small">
                                            <a href="#">
                                                <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                    src="${path}/resources/assets/img/team/profile-picture-1.jpg" alt="avatar">
                                                <span class="font-weight-bold">John Doe</span>
                                        </a>
                                        <span class="ml-2">2 min ago</span>
                                        </span>
                                        <div>
                                            <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                <span class="far fa-flag"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="m-0">I really like that the Pixel uses a lot of Bootstrap 4's classes to position elements across the website. I also like the fact that we can get a version of the code without Sass if needed. <br><br>                                                            When is the next product coming? :)</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div>
                                            <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                            <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                            <span class="font-small font-weight-light">4 likes</span>
                                        </div>
                                        <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer1" aria-expanded="false" aria-controls="replyContainer1"><span
                                                class="fas fa-reply mr-2"></span> Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer1">
                                        <label class="mb-4" for="exampleFormControlTextarea10">Reply</label>
                                        <textarea class="form-control border" id="exampleFormControlTextarea10" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply" maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3">
                                            <small class="font-weight-light"><span id="charactersRemainingReply">
                                                    <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                characters remaining</small>
                                            <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card bg-soft border-light rounded p-4 ml-5 mb-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <span class="font-small">
                                            <a href="#">
                                                <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                    src="${path}/resources/assets/img/team/profile-picture-2.jpg" alt="Bonnie avatar">
                                                <span class="font-weight-bold">Bonnie Green</span>
                                        </a>
                                        <span class="ml-2">2 min ago</span>
                                        </span>
                                        <div>
                                            <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                <span class="far fa-flag"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A new one will come soon enough!</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div>
                                            <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                            <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                            <span class="font-small font-weight-light">2 likes</span>
                                        </div>
                                        <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer2" aria-expanded="false" aria-controls="replyContainer2"><span
                                                class="fas fa-reply mr-2"></span> Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer2">
                                        <label class="mb-4" for="exampleFormControlTextarea11">Reply</label>
                                        <textarea class="form-control border" id="exampleFormControlTextarea11" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply2" maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3">
                                            <small class="font-weight-light"><span id="charactersRemainingReply2">
                                                    <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                characters remaining</small>
                                            <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card bg-soft border-light rounded p-4 mb-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <span class="font-small">
                                            <a href="#">
                                                <img class="avatar-sm img-fluid rounded-circle mr-2" src="${path}/resources/assets/img/team/profile-picture-3.jpg" alt="James avatar">
                                                <span class="font-weight-bold">James Curran</span>
                                            </a>
                                            <span class="ml-2">2 min ago</span>
                                        </span>
                                        <div>
                                            <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                <span class="far fa-flag"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="m-0">Hey there! We want to say that <span class="text-tertiary">you're
                                            awesome</span> and we think you'll build great websites! Why not use Pixel to make things easier?</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div>
                                            <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                            <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                            <span class="font-small font-weight-light">4 likes</span>
                                        </div>
                                        <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer3" aria-expanded="false" aria-controls="replyContainer3"><span
                                                class="fas fa-reply mr-2"></span> Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer3">
                                        <label class="mb-4" for="exampleFormControlTextarea12">Reply</label>
                                        <textarea class="form-control border" id="exampleFormControlTextarea12" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply3" maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3">
                                            <small class="font-weight-light"><span id="charactersRemainingReply3">
                                                    <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                characters remaining</small>
                                            <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                        </div>
                                    </div>
                                </div>
                                <div id="extraContent" style="display: none;">
                                    <div class="card bg-soft border-light p-4 mb-4">
                                        <div class="d-flex justify-content-between mb-4">
                                            <span class="font-small">
                                                <a href="#">
                                                    <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                        src="${path}/resources/assets/img/team/profile-picture-2.jpg" alt="Neil avatar">
                                                    <span class="font-weight-bold">Neil Sims</span>
                                            </a>
                                            <span class="ml-2">2 min ago</span>
                                            </span>
                                            <div>
                                                <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                    <span class="far fa-flag"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <p class="m-0">I really like that the Pixel uses a lot of Bootstrap 4's classes to position elements across the website. I also like the fact that we can get a version of the code without Sass if needed. <br><br>                                                                When is the next product coming? :)</p>
                                        <div class="mt-4 mb-3 d-flex justify-content-between">
                                            <div>
                                                <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                                <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                                <span class="font-small font-weight-light">4 likes</span>
                                            </div>
                                            <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer4" aria-expanded="false" aria-controls="replyContainer4"><span
                                                    class="fas fa-reply mr-2"></span> Reply</a>
                                        </div>
                                        <div class="collapse" id="replyContainer4">
                                            <label class="mb-4" for="exampleFormControlTextarea13">Reply</label>
                                            <textarea class="form-control border" id="exampleFormControlTextarea13" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply4" maxlength="1000"></textarea>
                                            <div class="d-flex justify-content-between mt-3">
                                                <small class="font-weight-light"><span id="charactersRemainingReply4">
                                                        <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                    characters remaining</small>
                                                <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card bg-soft rounded border-light p-4 ml-5 mb-4">
                                        <div class="d-flex justify-content-between mb-4">
                                            <span class="font-small">
                                                <a href="#">
                                                    <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                        src="${path}/resources/assets/img/team/profile-picture-5.jpg" alt="Jose avatar">
                                                    <span class="font-weight-bold">Jose Leos</span>
                                            </a>
                                            <span class="ml-2">2 min ago</span>
                                            </span>
                                            <div>
                                                <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                    <span class="far fa-flag"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A new one will come soon enough!</p>
                                        <div class="mt-4 mb-3 d-flex justify-content-between">
                                            <div>
                                                <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                                <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                                <span class="font-small font-weight-light">2 likes</span>
                                            </div>
                                            <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer5" aria-expanded="false" aria-controls="replyContainer5"><span
                                                    class="fas fa-reply mr-2"></span> Reply</a>
                                        </div>
                                        <div class="collapse" id="replyContainer5">
                                            <label class="mb-4" for="exampleFormControlTextarea14">Reply</label>
                                            <textarea class="form-control border" id="exampleFormControlTextarea14" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply5" maxlength="1000"></textarea>
                                            <div class="d-flex justify-content-between mt-3">
                                                <small class="font-weight-light"><span id="charactersRemainingReply5">
                                                        <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                    characters remaining</small>
                                                <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-5 text-center">
                                    <button id="loadOnClick" class="btn btn-primary btn-loading-overlay mr-2 mb-2" >
                                        <span class="spinner">
                                            <span class="spinner-border spinner-border-sm" role="status"
                                                aria-hidden="true"></span>
                                        </span>
                                        <span class="ml-1 btn-inner-text">Load more comments</span>
                                    </button>
                                    <p id="allLoadedText" style="display: none;">That's all, Sparky!
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    

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
    <script>
        // here you should load content from an Ajax request and when it
        // loads you can disable the button from loading
        $('#loadOnClick').click(function() {
            $button = $(this);
            $loadContent = $('#extraContent');
            $allLoaded = $('#allLoadedText');
            $button.addClass('btn-loading');
            $button.attr('disabled', true);

            setTimeout(function() {
                $loadContent.show();
                $button.hide();
                $allLoaded.show();
            }, 1500);
        });
    </script>
</body>

</html>