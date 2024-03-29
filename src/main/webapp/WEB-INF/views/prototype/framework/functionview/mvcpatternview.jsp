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
<script src="/js/prototype/framework/function/mvcpattern.js"></script>
</head>
<body>
	<!-- Server Info Setting -->
	<input type="hidden" value="${serverIp}" id="serverip">
	<input type="hidden" value="${serverPort}" id="serverport">
	
	<h2 style="text-align: center;">3. MVC 디자인 패턴 적용</h2>
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
						<li>MVC(Model-View-Controller) 소프트웨어 공학에서 사용되는 소프트웨어 디자인 패턴이고, Web 개발의 표준 구성방식이다.</li>
						<br>
						<li>사용자 인터페이스로부터 비즈니스 로직을 분리하여 애플리케이션의 시각적 요소나 Back 단에서 실행되는 비즈니스 로직을 서로 독립적으로 구현가능하다.</li>
						<br>
						<li>MVC의 구성요소는 3가지로 모텔, 뷰, 컨트롤러로 구성된다.
							<br>
							<ul>
								<li>Model : 어떠한 동작을 수행하는 코드를 의미. 사용자에게 노출되지 않고 순수 public함수로만 구성</li>
								<li>View : Model에게 질의하여 값을 가져와 사용자에게 보여준다.</li>
								<li>Controller : 사용자는 Controller를 사용하여 Model의 상태를 변경한다.</li>
							</ul>
							<br>
						</li>
						<li>MVC 구성도(아래 그림참고)
							<br>
							<ul>
								<img src="/images/prototype/framework/mvcpattern_image.png"  width="850" height="270">
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
							<ul>
								<li>Input : 원하는 정수형 숫자</li>
								<li>Output : MVC 패턴을 적용하여 Input 값에 +5한 결과출력</li>
							</ul>
							<br>
						</li>
						<li>실행방법 : Input 데이터 입력 후 Run 버튼 클릭</li>
						<li>예외상황 : @Repository에서 실제 DB Connection은 이루어지지 않음 (DB Connection은 Data Access 카테고리 참고)</li>
					</ul>
    				</div>
  			</div>
			<div class="panel panel-info">
      			<div class="panel-heading">Input
      				&nbsp;&nbsp;<button type="button" class="btn btn-primary btn-sm" id="run-button">Run</button>
      			</div>
      			<!-- 기능테스트 정의 Start -->
      			<div class="panel-body">
      				<input type="text" class="form-control" placeholder="Input 데이터 입력" id="input-data">
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
								<li>com.smartgreen.prototype.application.service.FrameworkService.java</li>
								<li>com.smartgreen.prototype.application.serviceimpl.FrameworkServiceImpl.java</li>
								<li>com.smartgreen.prototype.application.domain.FrameworkDao.java</li>
								<li>com.smartgreen.prototype.application.domain.FrameworkDaoImpl.java</li>
							</ul>
							<br>
						</li>
						<li>JavaScript
							<br>
							<ul>
								<li>	/resources/static/js/prototype/framework/function/mvcpattern.js</li>
							</ul>
							<br>
						</li>
						<li>Java Server Pages
							<br>
							<ul>
								<li>	/webapp/WEB-INF/views/prototype/framework/functionview/mvcpatternview.jsp</li>
							</ul>
						</li>
					</ul>
    				</div>
  			</div>
    		</div>
  	</div>
</body>
</html>