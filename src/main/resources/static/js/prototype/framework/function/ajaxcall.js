/* Server Info Setting */
var serverIp = $('#serverip').val();
var serverPort = $('#serverport').val();

var resttype = '';

$(function(){
	console.log('ajaxcall view load...');
	
	/* Dynamic Value Change */
	$('input[name=resttype]').on('change', function() {
		resttype = $( this ).val();
	});
	
	/* Ajax Call Run button Click Event */
	$('#run-button').click(function(){
		if(resttype == 'GET'){
			/* Input Data Get */
			var input_data_name = $('#input-data-name').val();
			var endPointUrl = '/prototype/ajaxcall/testget';
			
			/* Ajax Data Setting (Parameter Type - GET) */
			var data = "?name=" + input_data_name
			
			endPointUrl += data;
			
			/* Ajax Call */
			ajax_JSON(serverIp, serverPort, endPointUrl, resttype, endPointUrl, successHandlefunc, errorHandlefunc);
		} else if(resttype == 'POST'){
			/* Input Data Get */
			var input_data_name = $('#input-data-name').val();
			var endPointUrl = '/prototype/ajaxcall/testpost';
			
			/* Ajax Data Setting (JSON Type - POST) */
			var trans_objeect = 
			{
					'name':input_data_name
			}
		
			var trans_json = JSON.stringify(trans_objeect);
			
			/* Ajax Call */
			ajax_JSON(serverIp, serverPort, endPointUrl, resttype, trans_json, successHandlefunc, errorHandlefunc);
		} else{
			errorHandlefunc();
		}
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