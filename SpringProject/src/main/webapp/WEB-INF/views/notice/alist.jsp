<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
                        
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