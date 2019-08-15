var app = angular.module('frameworkrouterapp', 
	[
		'ui.router'
	]
); //사용할 모듈을 불러온다.//
////////////////////
app.config(['$stateProvider', function($stateProvider){
	$stateProvider
	.state('springbootinfra', {
		url: '/springbootinfra',
		templateUrl: 'springbootinfra'
	})
	.state('mavenbuild', {
		url: '/mavenbuild',
		templateUrl: 'mavenbuild'
	})
	.state('mvcpattern', {
		url: '/mvcpattern',
		templateUrl: 'mvcpattern'
	})
}]);