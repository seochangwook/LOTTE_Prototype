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
<script src="/js/prototype/framework/function/ajaxcall.js"></script>
</head>
<body>
	<!-- Server Info Setting -->
	<input type="hidden" value="${serverIp}" id="serverip">
	<input type="hidden" value="${serverPort}" id="serverport">
	
	<h2 style="text-align: center;">4. Ajax Call (JSON 기반)</h2>
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
						<li>테스트 설명</li>
					</ul>
    				</div>
  			</div>
    		</div>
  	</div>
  	<div class="panel panel-default">
    		<div class="panel-heading">
    			<h4>Test</h4>
    		</div>
    		<div class="panel-body">
    			<div class="panel panel-default">
    				<div class="panel-body">
    					<ul>
						<li>입/출력 데이터 정의
							<br>
							<ul>
								<li>Input : (Nothing)</li>
								<li>Output : 홍길동의 '이름', '나이', '성별' 을 JSON 타입으로 반환</li>
							</ul>
							<br>
						</li>
						<li>실행방법 : "Run" 버튼을 클릭하여 홍길동의 인사정보 데이터를 요청</li>
						<li>예외상황 : JSON을 기본으로 지원하고 다른 데이터 타입은 추가필요 (common.js에 공통 메소드 작성, @RequestMapping의 produces 설정)</li>
					</ul>
    				</div>
  			</div>
			<div class="panel panel-info">
      			<div class="panel-heading">Input
      				&nbsp;&nbsp;<button type="button" class="btn btn-primary btn-sm" id="run-button">Run</button>
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
    			<h4>Reference Code</h4>
    		</div>
    		<div class="panel-body">
    			<div class="panel panel-default">
    				<div class="panel-body">
    					<ul>
						<li>Java
							<br>
							<ul>
								<li>	test code</li>
							</ul>
							<br>
						</li>
						<li>JavaScript
							<br>
							<ul>
								<li>	test code</li>
							</ul>
							<br>
						</li>
						<li>Java Server Pages
							<br>
							<ul>
								<li>	test code</li>
							</ul>
						</li>
					</ul>
    				</div>
  			</div>
    		</div>
  	</div>
</body>
</html>