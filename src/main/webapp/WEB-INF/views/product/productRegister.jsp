<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includes/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>



  <!-- Page Content -->
  <div class="container text-warning">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-4">

        <h1 class="my-2">Page Heading<br>
          <small>등록 페이지</small>
        </h1>

        
        <div class="card mb-4"> 
         <div class="embed-responsive embed-responsive-4by3">	
          <img class="mainImage card-img-top embed-responsive-item" src="/resources/img/test.jpg" alt="Card image cap">
          
            <div class="card-footer text-muted">
            	Posted on January 1, 2020 by
            <a href="#">Start Bootstrap</a>
          </div>
         </div>
        </div>

      	<div class="card mb-4"> 
	 		<label for="disabledTextInput">Upload File</label>
 				 		<spring:hasBindErrors name="productVO">
					 		<c:if test="${errors.hasFieldErrors('productFile') }">                                     
								<strong style="color:red">${errors.getFieldError( 'productFile' ).defaultMessage }</strong>
		    				</c:if>
	    				</spring:hasBindErrors>
	 		<input type="file" class="form-control" placeholder="" name="singleFile">
	 	</div>
        
        <!-- Pagination -->
        <ul class="pagination justify-content-center mb-4">

          <li class="page-item">
            <a class="page-link" href="#">&larr; Older</a>
          </li>
          <li class="page-item disabled">
            <a class="page-link" href="#">Newer &rarr;</a>
          </li>
        </ul>

      </div> <!-- END 레프르 -->
      
      <div class="col-md-4"> <!-- 센터 -->
      
      	<div class="card-body"> 
            
			<form role="form" action="/product/productRegister" method="post">
			 
			 <fieldset>
			 	<input type='hidden' name='productFileList[0].upload_path' value=''>
				<input type='hidden' name='productFileList[0].uuid' value=''>
				<input type='hidden' name='productFileList[0].file_name' value=''>
				<input type='hidden' name='productFileList[0].image' value=''>
				<input type='hidden' name='productFileList[0].main' value=''>
				<input type='hidden' name='productFileList[0].fileCallPath' value=''>
				
				<div class="form-group"> 
			 		<label for="disabledTextInput">brand</label> 
 				 		<spring:hasBindErrors name="productVO">
					 		<c:if test="${errors.hasFieldErrors('brand') }">                                     
								<strong style="color:red">${errors.getFieldError( 'brand' ).defaultMessage }</strong>
		    				</c:if>
	    				</spring:hasBindErrors>
			 		<input type="text" class="form-control" placeholder="" name="brand">
			 	</div>
			 	<div class="form-group"> 
			 		<label for="disabledTextInput">title</label> 
 				 		<spring:hasBindErrors name="productVO">
					 		<c:if test="${errors.hasFieldErrors('title') }">                                     
								<strong style="color:red">${errors.getFieldError( 'title' ).defaultMessage }</strong>
		    				</c:if>
	    				</spring:hasBindErrors>
			 		<input type="text" class="form-control" placeholder="" name="title">
			 	</div>
			 	<div class="form-group"> 
			 		<label for="disabledTextInput">content</label> 
				 		<spring:hasBindErrors name="productVO">
					 		<c:if test="${errors.hasFieldErrors('content') }">                                     
								<strong style="color:red">${errors.getFieldError( 'content' ).defaultMessage }</strong>
		    				</c:if>
	    				</spring:hasBindErrors>
			 		<textarea class="form-control" rows="5" name="content"></textarea> 
			 	</div> 
			 	<div class="form-group"> 
			 		<label for="disabledTextInput">price</label>
				 		<spring:hasBindErrors name="productVO">
					 		<c:if test="${errors.hasFieldErrors('price') }">                                     
								<strong style="color:red">${errors.getFieldError( 'price' ).defaultMessage }</strong>
		    				</c:if>
	    				</spring:hasBindErrors>
			 		<input type="text" class="form-control" placeholder="" name="price"> 
			 	</div> 
			 	
			 	<div class="form-group"> 
			 		<label for="disabledSelect">Disabled select menu</label> 
				 		<select id="disabledSelect" class="form-control" name="type"> 
				 			<option value="">${product.type == null ? "상품의 타입을 선택 하세요." : product.type }</option> 
				 			<option value="top">top</option> 
				 			<option value="bottom">bottom</option>
				 			<option value="cap">cap</option>
				 			<option value="shoes">shoes</option> 
				 		</select> 
				 </div> 
				 <div class="checkbox"> 
			 		<label> 
			 		<input type="checkbox"> save </label> 
			 	 </div> 
			 	 <button type="submit" class="btn btn-success">Submit</button>
			 	 <button type="submit" class="btn btn-info">Modify</button> 
			 </fieldset> 
			</form>

		</div> <!-- end card body -->
      </div> <!-- END 센터 -->	
      
      
		
      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>

        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">Web Design</a>
                  </li>
                  <li>
                    <a href="#">HTML</a>
                  </li>
                  <li>
                    <a href="#">Freebies</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">JavaScript</a>
                  </li>
                  <li>
                    <a href="#">CSS</a>
                  </li>
                  <li>
                    <a href="#">Tutorials</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Side Image</h5>
			<spring:hasBindErrors name="productVO">
				<c:if test="${errors.hasFieldErrors('productFileList') }">                                     
					<strong style="color:red">${errors.getFieldError( 'productFileList' ).defaultMessage }</strong>
				</c:if>
			</spring:hasBindErrors>
          <input type="file" name="multipleFile" multiple>
          <div class="card-body">
            <ul class="resultUL">
            	
            </ul>
          </div>
        </div>

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

<%@ include file="../includes/footer.jsp" %>
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- 최종 인서트 하기 파일 목록 모두 포함 -->
<script>
$(document).ready(function(e){
	
	var formObj = $("form[role='form']");
	
	$("button[type='submit']").on("click", function(e){
		e.preventDefault();
		
		console.log("submit Clicked!!");
		
		
		multiFileAppendForm();
		// 싱글파일은 이미 change 이벤트 상태에서 어펜드 된 상태 
		
		var operation = $(this).data("oper");
		
		formObj.submit();
		
	});
	
});	
</script>

<script>
$(document).ready(function(){
		
	$("input[name='singleFile']").change(function(e){
		 
		var formData = new FormData();
		
		var singleFile = $("input[name='singleFile']");
		var file = singleFile[0].files;
		
		formData.append("singleFile", file[0]);
		
		$.ajax({
			url : '/singleFileUpload',
			enctype: 'multipart/form-data',
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'json',
			success : function(result){
				showSingleFile(result);
				
				modFormSingle(result); // form 에 추가 서브밋 하기
			}
		});
		
	}); //end main file upload event

	
	$("input[name='multipleFile']").change(function(e){
		var formData = new FormData();
		
		var multipleFile = $("input[name='multipleFile']");
		var files = multipleFile[0].files;
		
		for(var i = 0; i < files.length; i++){
			formData.append("multipleFile", files[i]);
		}
		
		
		$.ajax({
			url : '/multipleFileUpload',
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'json',
			success : function(result){
				//console.log(result);
				showMultipleFile(result);
				
			}
		});
		
	}); //end sub files upload event
	
});
</script>

<script>
function modFormSingle(result){
	
	$("input[name='productFileList[0].upload_path']").val(result.upload_path);
	$("input[name='productFileList[0].uuid']").val(result.uuid);
	$("input[name='productFileList[0].file_name']").val(result.file_name);
	$("input[name='productFileList[0].image']").val(result.image);
	$("input[name='productFileList[0].main']").val(result.main);
	$("input[name='productFileList[0].fileCallPath']").val(result.fileCallPath);
	
}

function multiFileAppendForm(){
	
	var formObj = $("form[role='form']");
	var str = "";

	$(".resultUL li").each(function(i, obj){
		var liObj = $(obj);
		
		str += "<input type='hidden' name='productFileList["+ (i+1) +"].upload_path' value='"+liObj.data("path")+"'/>";
		str += "<input type='hidden' name='productFileList["+ (i+1) +"].uuid' value='"+liObj.data("uuid")+"'/>";
		str += "<input type='hidden' name='productFileList["+ (i+1) +"].file_name' value='"+liObj.data("filename")+"'/>";
		str += "<input type='hidden' name='productFileList["+ (i+1) +"].image' value='"+liObj.data("image")+"'/>";
		str += "<input type='hidden' name='productFileList["+ (i+1) +"].main' value='"+liObj.data("main")+"'/>";
		str += "<input type='hidden' name='productFileList["+ (i+1) +"].fileCallPath' value='"+liObj.data("file")+"'/>";

	});
	
	formObj.append(str);

}

</script>

<script>

function checkExtension(fileName, fileSize) {
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB

	
	if (fileSize >= maxSize) {
		alert("파일 사이즈 초과");
		return false;
	}

	if (regex.test(fileName)) {
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	return true;
}

function showSingleFile(result){
	
	var fileCallPath =  encodeURIComponent( result.upload_path+ "/"+result.uuid +"_"+result.file_name);
	console.log(fileCallPath);
	
	$(".mainImage").attr("src","/display?fileName="+fileCallPath);
	
}

function showMultipleFile(resultArr){
	
	var resultUL = $(".resultUL");
	var str = "";
	
	$(resultArr).each(function(i, result){
		//var fileCallPath = encodeURIComponent( result.upload_path+ "/"+result.uuid +"_"+result.file_name);
		str += "<li data-path='"+result.upload_path+"' data-uuid='"+result.uuid+"' data-filename='"+result.file_name+"' data-image='"+result.image+"' data-main='"+result.main+"' data-file='"+result.fileCallPath+"'>";
		str += "<button type='button' data-file='"+result.fileCallPath+"' data-image='image' data-main='sub' class='btn btn-warning btn-circle'>";
		str += "	<i class='fa fa-times'> X </i><span>"+result.file_name+"</span></br>"
		str += "</button><br>"
		str += "	<div class='embed-responsive embed-responsive-4by3'>";	
		str += "		<img class='embed-responsive-item' src='/display?fileName="+result.fileCallPath+"'/>";
		str += "	</div>";
		str += "</li>";
	});
	
	resultUL.append(str);
	
}
</script>

<script>
$(document).ready(function(){
	
	$(".resultUL").on("click", "button", function(e){
		
		var targetFile = $(this).data("file");
		var image = $(this).data("image");
		var targetLi = $(this).closest("li");
		
		$.ajax({
			url : '/deleteFile',
			data : {fileName : targetFile, image : image },
			dataType : 'text',
			type : 'post',
			success : function(result){
				alert(result);
				targetLi.remove();
			}
		}); // end delete ajax

	}); //end delete button click
	
});	
</script>
