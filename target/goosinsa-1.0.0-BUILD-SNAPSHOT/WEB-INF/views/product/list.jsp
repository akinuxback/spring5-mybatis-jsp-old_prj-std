<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includes/header.jsp" %>

  <!-- Page Content -->
  <div class="container text-warning">

    <div class="row">

      <div class="col-lg-3">

        
        <div class="list-group">
          <h1 class="my-4"><a href="/product/list" class="list-group-item text-warning" style="font-size: 80%">GooSinSa.COM</a></h1> 	
          <a href="/product/list?type=top" class="list-group-item" style="font-size: 150%">Top</a>
          <a href="/product/list?type=bottom" class="list-group-item" style="font-size: 150%">Bottom</a>
          <a href="/product/list?type=cap" class="list-group-item" style="font-size: 150%">Cap</a>
          <a href="/product/list?type=shoes" class="list-group-item" style="font-size: 150%">Shoes</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
    
    
<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid homeImage" src="/resources/img/test.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="/resources/img/나이키메인.png" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="/resources/img/bts.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	        
<!-- page -->
    <div class="row"> 
      

<c:forEach items="${list }" var="list" varStatus="status">
  	
	<div class="col-lg-4 col-md-6 mb-4" name="getMove">
     <div class="card h-100">
       <a class="move" href="${list.pno }">
       	 	<!-- <img class="card-img-top embed-responsive-item" 
       			src="/display?fileName=${fileList.fileCallPath }" alt=""/> -->
       		<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <c:forEach items="${list.productFileList }" var="fileList" varStatus="status">
				    <c:choose>
			    		<c:when test="${status.index == 0}">
			    			<li data-target="#carouselExampleIndicators" data-slide-to="${status.index }" class="active"></li>
			    		</c:when>
			    		<c:otherwise>
			    			<li data-target="#carouselExampleIndicators" data-slide-to="${status.index }"></li>
			    		</c:otherwise>
			    	</c:choose>
				</c:forEach>
			  </ol>
			  <div class="carousel-inner" role="listbox">
			   <c:forEach items="${list.productFileList }" var="fileList" varStatus="status">
			    	<c:choose>
			    		<c:when test="${status.index == 0 }">
			    			<div class="carousel-item active">
			    				<div class="embed-responsive embed-responsive-4by3">
			      					<img class="d-block img-fluid embed-responsive-item" src="/display?fileName=${fileList.fileCallPath }" alt="First slide">
			    				</div>
			    			</div>
			    		</c:when>
			    		<c:otherwise>
			    			<div class="carousel-item">
			    				<div class="embed-responsive embed-responsive-4by3">
			      					<img class="d-block img-fluid embed-responsive-item" src="/display?fileName=${fileList.fileCallPath }" alt="Second slide">
			    				</div>
			    			</div>		
			    		</c:otherwise>
			    	</c:choose>
			   	</c:forEach>
			  </div>
			</div>
		</a>
       <div class="card-body">
         <h4 class="card-title" style="height:30%" >
         <a href="#"><c:out value="${list.title }"/></a>  
         </h4>
 		
        <p class="card-text" style="height:30%; margin-top:10%">${list.content }</p>
        <fmt:formatNumber value="${list.price }" type="number" pattern="$#,###.##"/>
        
       </div>
       <div class="card-footer">
       		<p>${list.brand }</p>	
            <p>Pno : ${list.pno }</p>
         <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
       </div>
     </div>
    </div>
</c:forEach>		




        
        
<%-- <c:forEach items="${list }" var="list" varStatus="status">
 <c:forEach items="${list.productList }" var="pList" varStatus="status">
  <c:if test="${status.index == 0}">
	<div class="col-lg-4 col-md-6 mb-4">
     <div class="card h-100">
       <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
       <div class="card-body">
         <h4 class="card-title">
         <a href="#"><c:out value="${list.title }"/></a>  
         </h4>
 		<h5>
           <fmt:formatNumber value="${pList.p_price }" type="number" pattern="$#,###.##"/>		
         </h5>
         <p class="card-text">${pList.p_name }</p>
         <p>${pList.p_size }</p>
       </div>
       <div class="card-footer">
         <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
       </div>
     </div>
   </div>
  </c:if>
 </c:forEach>
</c:forEach> 
 --%>

	   

<!-- end page -->



        </div><!-- /.row --> <!-- end list -->
        
	  </div><!-- /.col-lg-9 -->
      
    </div><!-- /.row -->
    
  </div><!-- /.container -->
  

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<script>
$(document).ready(function(){
	
	var result = '<c:out value="${result}"/>';

	//get 페이지로의 호출  a tag 이벤트 처리
	$("div[name='getMove']").on("click", function(e){
		e.preventDefault();
		
		var pno = $(this).find("a[class='move']").attr("href");
		
		console.log(pno);
		var uri = "/product/get?pno=" + pno;
		
		$(location).attr('href',uri);
	});
	
	checkModal(result);
		
});
</script>

<script>
function checkModal(result){
	if(result === '' || history.state){
		return;
	}
	
	if(parseInt(result) > 0){
		alert(result);
	}
	
	
	alert(result);
	
}
</script>





        
       	
        
