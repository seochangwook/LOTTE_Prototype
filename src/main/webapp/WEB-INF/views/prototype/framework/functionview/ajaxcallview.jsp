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
						<li>AJAX(Asynchronous Javascript And Xml)는 대화식 웹 애플리케이션의 제작을 위해 아래와 같은 조합을 이용하는 웹 개발 기법
							<br>
							<ul>
								<li>표현 정보를 위한 HTML과 CSS</li>
								<li>동적인 화면 출력 및 표시 정보와의 상호작용을 위한 DOM, 자바스크립트</li>
								<li>웹 서버와 비동기적으로 데이터를 교환하고 조작하기 위한 XML, XSLT, XMLHttpRequest</li>
								<li>XML/XSLT 대신 미리 정의된 HTML이나 일반 텍스트, JSON, JSON-RPC를 이용할 수 있다.</li>
							</ul>
							<br>
						</li>
						<li>AJAX 수행구조도(아래 그림참고)
							<br>
							<ul>
								<img src="/images/prototype/framework/ajaxcall_image.png"  width="350" height="270">
							</ul>
							<br>
						</li>
						<li>AJAX의 장점
							<br>
							<ul>
								<li>페이지 이동없이 고속으로 화면을 전환할 수 있다.</li>
								<li>서버처리를 기다리지 않고, 비동기 요청이 가능하다.</li>
								<li>수신하는 데이터 양을 줄일 수 있고 클라이언트에게 처리를 위임할 수도 있다.</li>
							</ul>
							<br>
						</li>
						<li>AJAX의 단점
							<br>
							<ul>
								<li>Ajax를 쓸 수 없는 브라우저에 대한 문제가 있다.</li>
								<li>페이지 이동없는 통신으로 인한 보안상의 문제</li>
								<li>요청을 많이 수행하면 역으로 서버 부하가 늘 수 있다.</li>
							</ul>
						</li>
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
							<br>
							<ul>
								<table class="table table-bordered">
    									<thead>
      									<tr>
        										<th>endPoint</th>
        										<th>type</th>
        										<th>data</th>
        										<th>Result</th>
      									</tr>
    									</thead>
    									<tbody>
      									<tr>
        										<td>/prototype/ajaxcall/testget</td>
									    		<td>GET</td>
									    		<td>?name="(Input)"</td>
									    		<td>{'name':'(Input)', 'age':1}</td>
      									</tr>
      									<tr>
									  		<td>/prototype/ajaxcall/testpost</td>
        										<td>POST</td>
        										<td>{'name':'(Input)'}</td>
        										<td>{'result':'success'}</td>
								      	</tr>
    									</tbody>
  								</table>
							</ul>
						</li>
						<li>실행방법 : 호출 Type을 선택하고 호출 데이터를 입력 후 Run 버튼 클릭</li>
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
      				<div>
      					<label class="radio-inline">
      						<input type="radio" name="resttype" value="GET">GET
    						</label>
    						<label class="radio-inline">
      						<input type="radio" name="resttype" value="POST">POST
    						</label>
      				</div>
      				<br>
      				<div class="input-group">
      					<span class="input-group-addon">Name</span>
      					<input id="input-data-name" type="text" class="form-control" placeholder="Input Name">
    					</div>
    					<br>
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
								<li>	com.smartgreen.prototype.application.web.FrameworkController.java</li>
							</ul>
							<br>
						</li>
						<li>JavaScript
							<br>
							<ul>
								<li>/resources/static/js/prototype/framework/function/ajaxcall.js</li>
							</ul>
							<br>
						</li>
						<li>Java Server Pages
							<br>
							<ul>
								<li>	/webapp/WEB-INF/views/prototype/framework/functionview/ajaxcallview.jsp</li>
							</ul>
						</li>
					</ul>
    				</div>
  			</div>
    		</div>
  	</div>
</body>
</html>