<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<c:forEach var="replyLisy" items="${replyList }">
	<li>replyList.replyer</li>
	<input type="text" value="asdasd">
</c:forEach>




        <div class="page-header">
            <h3 class="reviews">Leave your comment</h3>
            <div class="logout">
                <button class="btn btn-default btn-circle text-uppercase" type="button" onclick="$('#logout').hide(); $('#login').show()">
                    <span class="glyphicon glyphicon-off"></span> Logout                    
                </button>                
            </div>
        </div>
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                <li><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>
                <li><a href="#account-settings" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Account settings</h4></a></li>
            </ul>            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-logout">
                	
                	<div class="well well-lg"><!-- comment -->
                	<form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Comment</label>
                            <div class="well-lg">
                              <textarea class="form-control" name="addComment" id="addComment" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button type="button" class="commentBtn btn btn-success btn-circle text-uppercase" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                            </div>
                        </div>            
                    </form>
                	</div><!-- end comment -->
                	                
                    
                    
                    
                    <ul class="media-list commentList">  
                    
                    
                    
                    
                     
                      
                    </ul> <!-- end commentList -->
                    
                    
                    
                    
                    
                    <div class="float-right col-lg-6" style="margin-right:60px"> <!-- 더보기 버튼 -->
                    	<button type="button" class="plusList btn btn-circle btn-success"> 더보기 </button>
               		</div>
               		
                </div>
                <div class="tab-pane" id="add-comment">
                    <form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Comment</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="uploadMedia" class="col-sm-2 control-label">Upload media</label>
                            <div class="col-sm-10">                    
                                <div class="input-group">
                                  <div class="input-group-addon">http://</div>
                                  <input type="text" class="form-control" name="uploadMedia" id="uploadMedia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                            </div>
                        </div>            
                    </form>
                </div>
                <div class="tab-pane" id="account-settings">
                    <form action="#" method="post" class="form-horizontal" id="accountSetForm" role="form">
                        <div class="form-group">
                            <label for="avatar" class="col-sm-2 control-label">Avatar</label>
                            <div class="col-sm-10">                                
                                <div class="custom-input-file">
                                    <label class="uploadPhoto">
                                        Edit
                                        <input type="file" class="change-avatar" name="avatar" id="avatar">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Vilma palma">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickName" class="col-sm-2 control-label">Nick name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="nickName" id="nickName" placeholder="Vilma">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" placeholder="vilma@mail.com">
                            </div>
                        </div>  
                        <div class="form-group">
                            <label for="newPassword" class="col-sm-2 control-label">New password</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" name="newPassword" id="newPassword">
                            </div>
                        </div> 
                        <div class="form-group">
                            <label for="confirmPassword" class="col-sm-2 control-label">Confirm password</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" name="confirmPassword" id="confirmPassword">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save changes</button>
                            </div>
                        </div>            
                    </form>
                </div>
            </div>
        </div>

  <div class="page-header text-center">
    <h3 class="reviews"><span class="glyphicon glyphicon-magnet"></span> Uicomments by <a href="https://twitter.com/maridlcrmn">maridlcrmn</a></h3>
  </div>
  <div class="notes text-center"><small>Image credits: uifaces.com</small></div>




<script>
$(document).ready(function(){
	
	var pno = '<c:out value="${product.pno}"/>';
	var listAmount = 1;
	
	showList(listAmount);
	
	function showList(page){
		var pno = '<c:out value="${product.pno}"/>';
		var str = "";
		var commentList = $(".commentList");
		var replyList = $(".replyList");
		
		replyService.getList({pno : pno, page : page || 1}, function(list){
			
			console.log(list);
			if(list == null || list.length == 0){
				
			}
			
			for(var i = 0; i < list.length; i++){
				
				str += '       <li class="replyList media list-group-item">';
				str += '         <a class="pull-left" href="#">';
				str += '           <img class="media-object img-circle" src="/resources/img/boa.jpg" alt="profile" style="float:left;">';
				str += '         </a>';
				str += '         <div class="media-body" style="margin-left:10%">';
				str += '           <div class="well well-lg">';
				str += '               <h4 class="media-heading text-uppercase reviews">'+list[i].replyer+' </h4>';
				str += '               <ul class="media-date text-uppercase reviews list-inline">';
				str += '                 <li>  [ '+list[i].rno+' ]  '+replyService.displayTime(list[i].reply_date)+'</li>';
				str += '               </ul>';
				str += '               <div class="changeTag"><p class="media-comment">';
				str += '                 '+list[i].reply;
				str += '               </p></div>';
				str += '               <a class="btn btn-info btn-circle text-uppercase" href="#" id="like"><span class="glyphicon glyphicon-share-alt"></span> Like : </a>';
				str += '               <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply" data-toggle="collapse" data-target="#large'+list[i].rno+'large" ><span class="glyphicon glyphicon-share-alt"></span> Reply</a>';
				str += '               <button data-oper="modify" data-reply="'+list[i].reply+'" data-rno="'+list[i].rno+'" class="btn-primary btn-circle text-uppercase"> modify </button>';
				str += '               <button data-oper="update" data-reply="'+list[i].reply+'" data-rno="'+list[i].rno+'" class="btn-success btn-circle text-uppercase"> success </button>';
				str += '               <button data-oper="remove" data-reply="'+list[i].reply+'" data-rno="'+list[i].rno+'" class="btn-danger btn-circle text-uppercase"> remove </button>';
				str += '               <a class="btn_replyOne btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#re'+list[i].rno+'re"><span class="glyphicon glyphicon-comment"></span> 2 comments</a>';
				str += '           </div>              ';
				str += '         </div>';
				str += '         <div class="collapse" id="large'+list[i].rno+'large">';
				str += '         	<div class="well well-lg"><!-- comment -->';
				str += '             	<form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> ';
				str += '                     <div class="form-group">';
				str += '                         <label for="email" class="col-sm-2 control-label">Comment</label>';
				str += '                         <div class="well-lg">';
				str += '                           <textarea class="form-control" name="addComment" id="addComment" rows="2"></textarea>';
				str += '                         </div>';
				str += '                     </div>';
				str += '                     <div class="form-group">';
				str += '                         <div class="col-sm-offset-2 col-sm-10">                    ';
				str += '                             <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>';
				str += '                         </div>';
				str += '                     </div>            ';
				str += '                 </form>';
				str += '             </div><!-- end comment -->';
				str += '         </div>';
				str += '         <div class="collapse" id="re'+list[i].rno+'re">';
				str += '             <ul class="media-list replyList">';
				str += '                 <li class="media media-replied">';
				str += '                     <a class="pull-left" href="#">';
				str += '                       <img class="media-object img-circle" src="/resources/img/boa.jpg" alt="profile">';
				str += '                     </a>';
				str += '                     <div class="media-body">';
				str += '                       <div class="well well-lg">';
				str += '                           <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> The Hipster</h4>';
				str += '                           <ul class="media-date text-uppercase reviews list-inline">';
				str += '                             <li>2020/12/07</li>';
				str += '                           </ul>';
				str += '                           <p class="media-comment">';
				str += '                             Nice job Maria.';
				str += '                           </p>';
				str += '                           <a class="srBtn btn-info btn-circle text-uppercase" href="#" id="replySecond"><span class="glyphicon glyphicon-share-alt"></span> SeLike : </a>';
				str += '                           <a class="srBtn btn-info btn-circle text-uppercase" href="#" id="replySecond"><span class="glyphicon glyphicon-share-alt"></span> SeReply</a>';
				str += '                       </div>              ';
				str += '                     </div>';
				str += '                 </li>';
				str += '              </ul>  ';
				str += '         </div>';
				str += '       </li>  <!-- end 댓글 -->        ';
				str += '       ';
				
			}
			
			commentList.html(str);
			
			$("button[data-oper='update']").hide();
			
			$("button").on("click", function(){
				
				var oper = $(this).data("oper");
				var rno = $(this).data("rno");
				var reply = $(this).data("reply");
				
				var target = $(this).parent().find("p");
				var targetClone = target.clone();
				
				if(oper === "modify"){
					
					
					var str = "";
					str += '<div class="row changeText">';
					str += '  <textarea class="col-lg-8" id="textarea" rows="2" style="margin-bottom:10px; border-none;">';
					str += '  </textarea>';
					str += '</div>';
					
					// 선택한 태그를 다른 태그로 변경
					target.contents().unwrap().wrap(str);
					
					$("#textarea").html($.trim(reply));
					
					//modify 버튼을 success 로 교체 하고 , 선택자 식별을 위해 data-oper 값을 update 로 줌
					//$(this).attr("class", "btn-success btn-circle text-uppercase").attr("data-oper", "update").html("update");
					
					$("button[data-oper='modify']").hide();
					$("button[data-oper='update']").show();
					
				}
				
				if(oper === "update"){
					
					var textHtml = $(this).parent().find("textarea").val();
					console.log(textHtml);
					
					replyService.update({
						rno : rno,
						reply : textHtml
					}, function(result){
						alert("수정 완료");
						showList(listAmount);
					});
					
				}
				
				if(oper === "remove"){
					
					$.ajax({
						url : '/replies/' + rno,
						type : 'delete',
						success : function(result){
							alert(result);
							showList(1);
						},
						error : function(result){
							alert(result);
						}
					});
				}
				
			});	// end event reply button 
			
			
			
			// start replySecond 
			// 메모  :  showList 안에서만 이벤트 처리 할수 있는건가?? 어떻게 해야 좀더 편하게 작성 할수 있지???
			
					
			$(".srBtn").on("click", function(e){
				e.preventDefault();
				console.log("click");
			});
			
			$(".btn_replyOne").on("click", function(e){
				console.log("btn_replyOne Click");
			});
			
			// end replySecond
			
		}); // end replyService.getList
		
		
		
	} // end showList()	

	
	// 댓글 더보기 기능 
	$(".plusList").on("click", function(e){
		e.preventDefault();
		
		listAmount++;
		
		showList(listAmount);
		
	}); //end plusList
	
	//댓글 add
	$(".commentBtn").on("click", function(e){
		e.preventDefault();
		
		var reply = $("textarea[name='addComment']").val();
		var replyer = "Tester"; // 시큐리티 접목후 수정할것
		var replyVO = {
			pno : pno,	
			reply : reply,
			replyer : replyer,
		};
		
		
		replyService.add(replyVO, function(result){
			alert("result");
			$("textarea[name='addComment']").val('');
			showList(1);
			
		});
	}); // end add
		
}); //end document
</script>

<script>
</script>

<script>
$(document).ready(function(){
	console.log(replySecond);
 	
	
});
</script>
<script type="text/javascript" src="/resources/js/reply.js?ver=8"/>

