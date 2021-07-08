console.log("Reply Module.......");

var replyService = (function(){
	
	function getList(param, callback, error){
		var pno = param.pno;
		var page = param.page || 1;
		$.getJSON('/replies/pages/' + pno + '/' + page, 
			function(result){
				if(callback)
					callback(result);
		}).fail(function(xhr, status, err){
			if(error)
				error(err);
		});
		
	}
	
	function add(reply, callback, error){
		console.log("add reply.....");
		
		$.ajax({
			url : '/replies/new',
			type : 'post',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback)
					callback(result);
			},
			error : function(xhr, status, er){
				if(error)
					error(er);
			}
		})
	}
	
	function update(replyVO, callback, error){
		console.log("modify reply.....");
		
		$.ajax({
			type : 'put',
			url : '/replies/' + replyVO.rno,
			data : JSON.stringify(replyVO),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback)
					callback(result);
			},
			error : function(xhr, status, er){
				if(error)
					error(er)
			}
		});
	}
	
	
	function displayTime(timeValue){
	var today = new Date();

	var gap = today.getTime() - timeValue;
	
	var dateObj = new Date(timeValue);
	
	var str = "";
	
		if(gap < 1000 * 60 * 60 * 24){
			
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
		} else {
			
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
			
			return [yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd ].join(''); 
		}
	};

	
	
	return {
		add : add,
		getList : getList,
		update : update,
		displayTime : displayTime
	};
	
})();



var replySecond = (function(){
	
	function getList(param, callback, error){
		var rno = param.rno;
		var page = param.page; 
		
		$.getJSON('/second/pages/'+ rno + '/' + page + ".json", function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error(err);
			}
		});
		
	} //end getList
	
	function add(rsVO, callback, error){
		
		$.ajax({
			url : '/second/new',
			type : 'post',
			data : JSON.stringify(rsVO),
			contentType : 'application/json; charset=utf-8',
			success : function(result, status, xhr){
				if(callback)
					callback(result);
			},
			error : function(xhr, status, err){
				if(error)
					error(err);
			}
		});
	}
	
	return {
		getList : getList ,
		add : add,
	};
	
})();