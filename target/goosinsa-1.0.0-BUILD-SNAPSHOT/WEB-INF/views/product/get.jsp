<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includes/header.jsp" %>

<!-- Page Content -->
<div class="container text-warning">

 
<!-- page 시작 -->
<div class="col-lg-12">
<div class="row">
	<div class="col-lg-12" style="margin-top:50px"> 
		<h1>
			${product.title }
			<form action="/product/modify">
				<input type="hidden" name="pno" value="${product.pno }"/>
				<div style="font-size:medium; margin-top:15px;">
					<button type="submit" class="btn btn-primary" style="margin-right:5px;">Modify</button>
					등록일자 : <fmt:formatDate value="${product.reg_date }" pattern="yyyy-MM-dd hh:mm"/>
					// 수정일자 : <fmt:formatDate value="${product.update_date }" pattern="yyyy-MM-dd hh:mm"/>
				</div>
			</form>
		</h1>	
	</div>
</div>		
<!-- page -->
<div class="row" style="height:400px; width: auto; margin-top:30px; margin-bottom:20%">
	<div class="col-lg-8">
		<div class="embed-responsive embed-responsive-4by3">
			<img class="embed-responsive-item" src="/display?fileName=${mainFile.fileCallPath }"/>
		</div>	
	</div>
	
	<div class="col-lg-4">
		<ul class="list-group">
			<li class="list-group-item list-group-item-dark">${product.pno }</li>
			<li class="list-group-item list-group-item-dark">${product.brand }</li>
			<li class="list-group-item list-group-item-dark">${product.content }</li>
			<li class="list-group-item list-group-item-dark">${product.type }</li>
			<li class="list-group-item list-group-item-dark"><fmt:formatDate value="${product.reg_date }" pattern="yyyy-MM-dd"/></li>
			<li class="list-group-item list-group-item-dark"><fmt:formatDate value="${product.update_date }" pattern="yyyy-MM-dd"/></li>
			<h5 class="list-group-item list-group-item-dark"><fmt:formatNumber value="${product.price }" type="number" pattern="$#,###.##"/></h5>	
		</ul>
	</div>
</div>


<div class="row" style="margin-top:30px">
	<div class="col-lg-12">
		<c:if test="${subFileList != null }">
			<c:forEach items="${subFileList }" var="sub" varStatus="status">
				<div class="embed-responsive embed-responsive-4by3" style="margin-bottom:30px">
					<img class="embed-responsive-item" src="/display?fileName=${sub.fileCallPath }"/><br>
				</div>
			<br>		
			</c:forEach>
		</c:if>
	</div>
</div>
<!-- endPage -->


<div class="row" style="margin-top:30px">
	<div class="col-lg-12">
		<%@ include file="../product/reply/getReply.jsp" %>
	</div>
</div> 


</div>
</div>

	


<%@ include file="../includes/footer.jsp" %>