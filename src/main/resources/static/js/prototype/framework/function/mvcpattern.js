/* Server Info Setting */
var serverIp = $('#serverip').val();
var serverPort = $('#serverport').val();

$(function(){
	console.log('mvcpattern view load...');
	
	/* MVC Pattern Run button Click Event */
	$('#run-button').click(function(){
		/* Input Data Get */
		var input_Data = $('#input-data').val();
		
		/* JSON Data Setting */
		var trans_objeect = 
    		{
			'inputdata':input_Data
	    }
		
		var trans_json = JSON.stringify(trans_objeect);
		
		/* Ajax Call */
		$.ajax({
			url: "http://"+serverIp+":"+serverPort+"/prototype/mvcpattern/test",
			type: 'POST',
			dataType: 'json',
			data: trans_json,
			contentType: 'application/json',
			mimeType: 'application/json',
			success: function(retVal){
				if(retVal.resultCode == 1){
					var returnHtml = success_normal_div(retVal.resultValue);
					
					$('#outputview').empty(); //view refresh//
					$('#outputview').append(returnHtml);
				} else if(retVal.resultCode == -1){
					var returnHtml = error_div();
					
					$('#outputview').empty(); //view refresh//
					$('#outputview').append(returnHtml);
				}
			},
			error: function(retVal, status, er){
				var returnHtml = error_div();
				
				$('#outputview').empty(); //view refresh//
				$('#outputview').append(returnHtml);
			}
		});
	});
});