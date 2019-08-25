<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="frameworkrouterapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Prototype - Smartgreen</title>
<!-- jQuery, bootstrap CDN -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script> <!-- msie 문제 해결 -->
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<!-- AngularJS CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.3.2/angular-ui-router.js"></script>

<script src="/js/router/framework/frameworkrouter.js"></script>
<link rel="stylesheet" href="/css/common.css" type="text/css">
<script src="/js/common.js"></script>
</head>
<body>
	<!-- Server Info Setting -->
	<input type="hidden" value="${serverIp}" id="serverip">
	<input type="hidden" value="${serverPort}" id="serverport">
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        			<span class="icon-bar"></span>
	        			<span class="icon-bar"></span>
	        			<span class="icon-bar"></span>                        
	      		</button>
	      		<a class="navbar-brand" onclick="introRedirectFunc()">
	      			<img src="/images/prototype/lottelogo.png"  width="65" height="40" style="margin-top: -10px;">
	      		</a>
	    		</div>
	    		<div class="collapse navbar-collapse" id="myNavbar">
	      		<ul class="nav navbar-nav">
		        		<li class="active">
		        			<a href="#">Home</a>
		        		</li>
	      		</ul>
	      		<ul class="nav navbar-nav navbar-right">
	        			<li>
	        				<a onclick="introRedirectFunc()">
	        					<span class="glyphicon glyphicon-log-in"></span> 
	        						Intro 돌아가기
	        				</a>
	        			</li>
	      		</ul>
	    		</div>
	  	</div>
	</nav> 
	<div class="container-fluid text-center">    
		<div class="row content">
	    		<div class="col-sm-2 sidenav">
	      		<p class="rcorners"><a class="linkcolor" href="#!springbootinfra">1. Spring Boot 환경적용</a></p>
	      		<p class="rcorners"><a class="linkcolor" href="#!mavenbuild">2. Maven Build 환경적용</a></p>
	      		<p class="rcorners"><a class="linkcolor" href="#!mvcpattern">3. MVC 디자인 패턴 적용</a></p>
	      		<p class="rcorners"><a class="linkcolor" href="#!ajaxcall">4. Ajax Call (JSON 기반)</a></p>
	    		</div>
	    		<div class="col-sm-8 text-left"> 
	      		<h1>Framework
	      			<img src="/images/prototype/frameworkintroimage.png"  width="70" height="70">
	      		</h1>
	      		<p>표준 프레임워크 / 디자인 패턴을 반영하여 효율성 있는 개발이 가능하도록 하기 위함</p>
	      		<hr class="hrset">
	      		<div ui-view style="overflow:auto; width:1240px; height:950px;">
	      			<p style="text-align: center;">참고가 필요한 주제를 왼쪽 메뉴에서 선택하세요</p>
	      		</div>
	    		</div>
	  	</div>
	</div>
</body>
</html>