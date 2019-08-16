/* Error Page Redirect */
function errorRedirectFunc(){
	location.replace("http://127.0.0.1:8080/prototype/main.do")
}

/* Intro Page Redirect */
function introRedirectFunc(){
	location.replace("http://127.0.0.1:8080/prototype/main.do")
}

/* Test Success Normal div */
function success_normal_div(resultdata){
	var returnHtml = '';
	var resultHtml = '';
	
	resultHtml += '<input type="text" class="form-control" value="'+resultdata+'" readonly>';
	
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