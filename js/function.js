/*
 *** @Author: whyisyoung
 *** @Date:   2016-03-17 14:12:28
 *** @Last Modified by:   whyisyoung
 *** @Last Modified time: 2016-03-18 01:54:56
 ***/

$(document).ready(function() {
	
	var slang = '';
	/*
        $(".Checked").click(function(){

        	//not change icon
        	//! $(this).prop("checked");

		//console.log($.session.get('chineseName'));
		//$.session.remove('chineseName');
		//$.session.remove('englishName');
		
		var div = $(this).closest(".singleitem"); //children("span").toggleClass("black");
	        slang = div.children("span").text().trim();
		
		if ($.session.get('chineseName') == undefined || $.session.get('englishName') == undefined) {
			//console.log('x');
			$('#myModal').modal();
		}
		else {
			var chineseName = $.session.get('chineseName');
			var englishName = $.session.get('englishName');
			$.ajax({
	 	               type:"POST",
	        	    	url: "update.php",
	              		data: "type=2&chineseName="+chineseName+"&englishName="+englishName+"&slang="+slang,
	                	success:function(msg){
	                    		// alert(msg);
					// location.reload(true);
					// TODO: p->hidden(); class->.UnChecked(); id->.UnChecked();							
	               			// TODO: change according to return state && stop all operation;
					// alert(msg);
					//
                			
					//! div.children("input").prop("checked");
                			
                			div.children("span").toggleClass("black grey");
                			div.children("input").toggleClass("Checked UnChecked");
					div.children("p").toggleClass("p_show p_hidden");
				}
	        	});
		}
        });
	*/

 	$(".UnChecked, .Checked").click(function(){

 		//not change icon
        	//! $(this).prop("checked");

		
		//$.session.remove('chineseName');
		//$.session.remove('englishName');
		//console.log($.session.get('chineseName'));
		//$.session.set('chineseName', 'AN WeiJie');
		//$.session.set('englishName', 'Fssqawj');
		
		var div = $(this).closest(".singleitem");
	        slang = div.children("span").text().trim();
		
		if ($.session.get('chineseName') == undefined || $.session.get('englishName') == undefined) {
			$('#myModal').modal();
		}
		else {
			var chineseName = $.session.get('chineseName');
			var englishName = $.session.get('englishName');
	       	
			var now = div.children("input").attr('class');	
			//console.log(slang);
		      	//$('.Checked').prop("disabled", true);
			//$('.UnChecked').prop('disabled', true);
			$.ajax({
	 	               	type:"POST",
	        	    	url: "update.php",
	              		data: "type="+now+"&chineseName="+chineseName+"&englishName="+englishName+"&slang="+slang,
	                	success:function(msg){
	                    		// alert(msg);
					// location.reload(true);
					// TODO: p->show(); class->.Checked(); id->.UnChecked()						
	               			// TODO: change according to return state && stop all operation;
					
					//$('.Check').prop("disable", false);
					//$('.UnCheck').prop("disable", false);
					console.log(msg);
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
			//$.post("backend.php", {"chineseName":chineseName, "englishName":englishName});
			//location.reload(true);
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
			//location.reload(true);
		}
	});
});
