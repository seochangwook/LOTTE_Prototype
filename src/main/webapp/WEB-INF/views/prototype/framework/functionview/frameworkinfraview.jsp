<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<link rel="stylesheet" href="/css/common.css" type="text/css">
<script src="/js/common.js"></script>
<script src="/js/prototype/framework/function/frameworkinfra.js"></script>
</head>
<body>
	<!-- Server Info Setting -->
	<input type="hidden" value="${serverIp}" id="serverip">
	<input type="hidden" value="${serverPort}" id="serverport">
	
	<h2 style="text-align: center;">1. Spring Boot 환경이해</h2>
	<br>
	<br>
	<div class="panel panel-default">
    		<div class="panel-heading">
    			<h4>Description</h4>
    		</div>
    		<div class="panel-body">
    			<div class="panel panel-default">
    				<div class="panel-body">
    					<ul>
						<ul>
							<img src="/images/prototype/framework/framework_spring_boot_image.png"  width="200" height="200">
						</ul>
						<br>
						<li>스프링 부트는 2014년부터 개발된 스프링의 하위 프로젝트 중 하나이다.</li>
						<br>
						<li>스프링 부트의 특징은 아래와 같다.
							<br>
							<ul>
								<li>단독 실행(Stand-alone)이 가능한 수준의 스프링 어플리케이션 개발 가능</li>
								<li>내장된 톰캣, Jetty, UnderTow등의 서버를 이용해서 별도의 서버 설치 없이 실행이 가능</li>
								<li>자동화된 설정방식을 제공. 코드 생산성이 뛰어나다.</li>
								<li>기존 스프링 환경에서 설정했던 XML 최소화
									<ul>
										<img src="/images/prototype/framework/framework_spring_boot_image_two.png"  width="850" height="100">
									</ul>
								</li>
								<li>maven, gradle의 환경을 제공해준다.</li>
							</ul>
							<br>
						</li>
						<li>@SpringBootApplication 패키지(루트 패키지)의 하위 패키지에 있어야지 정상적인 Component Scan이 가능하다.</li>
						<br>
						<li>application.properties는 스프링 부트에서 여러 설정파일을 담당하고 있는 중요한 파일이다.</li>
					</ul>
    				</div>
  			</div>
    		</div>
  	</div>
  	<div class="panel panel-default">
    		<div class="panel-heading">
    			<h4>Test (별도의 테스트 없음)</h4>
    		</div>
    		<div class="panel-body">
    			<div class="panel panel-default">
    				<div class="panel-body">
    					<ul>
						<li>입/출력 데이터 정의
							<br>
							<ul>
								<li>Input : (Nothing)</li>
								<li>Output : (Nothing)</li>
							</ul>
							<br>
						</li>
						<li>실행방법 : (Nothing)</li>
						<li>예외상황 : (Nothing)</li>
					</ul>
    				</div>
  			</div>
			<div class="panel panel-info">
      			<div class="panel-heading">Input
      				&nbsp;&nbsp;<button type="button" class="btn btn-primary btn-sm" id="run-button" disabled="disabled">Run</button>
      			</div>
      			<!-- 기능테스트 정의 Start -->
      			<div class="panel-body">
      				<input type="text" class="form-control" placeholder="Nothing" id="input-data" readonly>
      			</div>
      			<!-- 기능테스트 정의 End -->
    			</div>
    			<div id="outputview">
    				<!-- Output View -->
    			</div>
    		</div>
  	</div>
  	<div class="panel panel-default">
    		<div class="panel-heading">
    			<h4>Reference Code (별도의 참고코드 없음)</h4>
    		</div>
    		<div class="panel-body">
    			<div class="panel panel-default">
    				<div class="panel-body">
    					<ul>
						<li>Java
							<br>
							<ul>
								<li>	(Nothing)</li>
							</ul>
							<br>
						</li>
						<li>JavaScript
							<br>
							<ul>
								<li>(Nothing)</li>
							</ul>
							<br>
						</li>
						<li>Java Server Pages
							<br>
							<ul>
								<li>	(Nothing)</li>
							</ul>
						</li>
					</ul>
    				</div>
  			</div>
    		</div>
  	</div>
</body>
</html>