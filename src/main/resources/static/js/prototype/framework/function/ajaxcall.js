/* Server Info Setting */
var serverIp = $('#serverip').val();
var serverPort = $('#serverport').val();

$(function(){
	console.log('ajaxcall view load...');
	
	/* Ajax Call Run button Click Event */
	$('#run-button').click(function(){
		/* Input Data Get */
	
		
		/* Ajax Data Setting */
		var endPointUrl = '/prototype/ajaxcall/test';
		
		/* Ajax Call */
		ajax_normalPostJSON(serverIp, serverPort, endPointUrl, '', successHandlefunc, errorHandlefunc);
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