/* Error Page Redirect */
function errorRedirectFunc(){
	var serverIp = $('#serverip').val();
	var serverPort = $('#serverport').val();
	
	location.replace("http://"+serverIp+":"+serverPort+"/prototype/main.do")
}

/* Intro Page Redirect */
function introRedirectFunc(){
	var serverIp = $('#serverip').val();
	var serverPort = $('#serverport').val();
	
	location.replace("http://"+serverIp+":"+serverPort+"/prototype/main.do")
}

/* Test Success Normal div */
function success_normal_div(resultObject){
	var returnHtml = '';
	var resultHtml = '';
	
	resultHtml += '<input type="text" class="form-control" value="'+resultObject+'" readonly>';
	
	returnHtml += '<div class="panel panel-success">';
	returnHtml += '<div class="panel-heading">output (success)</div>';
	returnHtml += '<div class="panel-body">';
	returnHtml += resultHtml;
	returnHtml += '</div>';
	
	return returnHtml;
}

/* Test Error div */
function error_div(){
	var returnHtml = '';
	
	returnHtml += '<div class="panel panel-danger">';
	returnHtml += '<div class="panel-heading">output (error)</div>';
	returnHtml += '<div class="panel-body">테스트가 정상적으로 수행되지 않았습니다. (Server Error or Test Case Error)</div>';
	
	return returnHtml;
}

/* Ajax Normal POST JSON Form */
function ajax_normalPostJSON(serverIp, serverPort, endPointUrl, jsondata, callbackSuccessHandlefunc, callbackErrorHandlefunc){
	/* Ajax Call */
	$.ajax({
		url: "http://"+serverIp+":"+serverPort+endPointUrl,
		type: 'POST',
		dataType: 'json',
		data: jsondata,
		contentType: 'application/json',
		mimeType: 'application/json',
		success: callbackSuccessHandlefunc,
		error: callbackErrorHandlefunc
	});
}