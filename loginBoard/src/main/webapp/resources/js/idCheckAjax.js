function idCheck() {
var query = {userId : $("#userId").val()};
 
	$.ajax({
		  url : "/member/idCheck",
		  type : "post",
		  data : query,
		  success : function(data) {
  
			  if(data == 1) {
				  $(".result .msg").text("사용 불가");
				  $(".result .msg").attr("style", "color:#f00");    
			  } else {
				  $(".result .msg").text("사용 가능");
				  $(".result .msg").attr("style", "color:#00f");
			  }
			  
		  }
	});
}