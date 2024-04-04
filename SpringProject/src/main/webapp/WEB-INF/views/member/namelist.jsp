<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<div id="tablearea">
<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">ID</th>
            <th scope="col">이름</th>
            <th scope="col">검색결과: ${count}</th>
        </tr>
    </thead>
    <tbody>
    	<c:if test="${empty list}">
			<tr>
				<td colspan="4">조회된 회원이 없습니다.</td>
			</tr>
		</c:if>
    
    	<c:forEach var="item" items="${list}" varStatus="status">
	        <tr>
	            <th scope="row">${status.count}</th>
	            <td>
	                <div class="d-flex align-items-center">
	                    ${item.id}
	                </div>
	            </td>
	            <td>${item.name}</td>
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