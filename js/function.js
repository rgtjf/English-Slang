/*
 *** @Author: whyisyoung
 *** @Date:   2016-03-17 14:12:28
 *** @Last Modified by:   whyisyoung
 *** @Last Modified time: 2016-03-18 01:54:56
 ***/

$(document).ready(function() {
	
	var slang = '';

 	$(".UnChecked, .Checked").click(function(){
 		
		var div = $(this).closest(".singleitem");
	        slang = div.children("span").text().trim();
		
		if ($.session.get('chineseName') == undefined || $.session.get('englishName') == undefined) {
			$('#myModal').modal();
		}
		else {
			var chineseName = $.session.get('chineseName');
			var englishName = $.session.get('englishName');
	       	
			var now = div.children("input").attr('class');	
			
			$.ajax({
	 	               	type:"POST",
	        	    	url: "update.php",
	              		data: "type="+now+"&chineseName="+chineseName+"&englishName="+englishName+"&slang="+slang,
	                	success:function(msg){
	                 
					if (msg == "full") {
						alertify.log('You have already choosed 4 slang!...');
						div.children("input").removeAttr("checked");
					} else {							
						div.children("span").toggleClass("grey black");
                				div.children("input").toggleClass("Checked UnChecked");
                				div.children("p").toggleClass("p_hidden p_show");
						div.children("p").text(chineseName+"       "+englishName);
					}
				}
	        	});
		}
        });

	$("#submit").click(function(){
		var chineseName = $("#chineseinput").val();
		var englishName = $("#englishinput").val();
		if (chineseName == '') {
			alert('Please input your Chinese Name (Pin Yin)');
		}
		else if(englishName == '') {
			alert('Please input your English Name');
		}
		else {
			$.session.set('chineseName', chineseName);
			$.session.set('englishName', englishName);
			$.ajax({
	 	              	type:"POST",
	        	    	url: "update.php",
	              		data: "type=submit&chineseName="+chineseName+"&englishName="+englishName+"&slang="+slang,
	                	success:function(msg){
					//alert(msg);
					alertify.success('Welcome '+englishName);
					location.reload(true);
				}
	        	});	
		}
	});
});
