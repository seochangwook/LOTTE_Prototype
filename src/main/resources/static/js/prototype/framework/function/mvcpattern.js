/* Server Info Setting */
var serverIp = $('#serverip').val();
var serverPort = $('#serverport').val();

$(function(){
	console.log('mvcpattern view load...');
	
	/* MVC Pattern Run button Click Event */
	$('#run-button').click(function(){
		/* Input Data Get */
		var input_Data = $('#input-data').val();
		
		/* Ajax Data Setting */
		var trans_objeect = 
    		{
			'inputdata':input_Data
	    }
		
		var trans_json = JSON.stringify(trans_objeect);
		var endPointUrl = '/prototype/mvcpattern/test';
		
		/* Ajax Call */
		ajax_normalPostJSON(serverIp, serverPort, endPointUrl, trans_json, successHandlefunc, errorHandlefunc);
	});
});

/* Success Callback Handle */
function successHandlefunc(retVal){
	$('#outputview').empty(); //view refresh//
	
	var returnHtml = success_normal_div(retVal.resultObject);
	$('#outputview').append(returnHtml);
}

/* Error Callback Handle */
function errorHandlefunc(){
	$('#outputview').empty(); //view refresh//
	
	var returnHtml = error_div();
	$('#outputview').append(returnHtml);
}