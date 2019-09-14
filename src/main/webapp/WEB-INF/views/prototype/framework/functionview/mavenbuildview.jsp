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
<script src="/js/prototype/framework/function/mavenbuild.js"></script>
</head>
<body>
	<!-- Server Info Setting -->
	<input type="hidden" value="${serverIp}" id="serverip">
	<input type="hidden" value="${serverPort}" id="serverport">
	
	<h2 style="text-align: center;">2. Maven Build 환경이해</h2>
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
						<li>아파치 메이븐은 자바용 프로젝트 관리 도구이다. 아파치 앤트의 대안으로 만들어졌다. 아파치 라이선스로 배포되는 오픈 소스 소프트웨어이다.</li>
						<br>
						<li>프로젝트 객체 모델(Project Object Model) 이라는 개념을 바탕으로 프로젝트 의존성 관리, 라이브러리 관리, 프로젝트 생명주기 관리 기능등을 제공</li>
						<br>
						<li>프로젝트에 사용할 라이브러리를 pom.xml에 dependency로 정의만 해두면 Maven이 Repository에서 검색해서 자동으로 추가해준다.(의존성)</li>
						<br>
						<li>Maven 구조도(아래 그림참고)
							<br>
							<ul>
								<img src="/images/prototype/framework/framework_maven_image.png"  width="650" height="470">
							</ul>
							<ul>
								<li>groupId : 프로젝트를 구분하는 값 (도메인)</li>
								<li>artifactId : 프로젝트를 구분하는 값 (프로젝트 명)</li>
								<li>properties : POM내에서 공통적으로 사용되는 값.</li>
								<li>repositories : 라이브러리를 받아올 저장소를 지정</li>
								<li>dependencies : 프로젝트에서 사용되는 라이브러리들을 지정</li>
								<li>build : 프로젝트의 빌드방법 지정</li>
								<li>scope : 사용자가 필요한 형태로 변경하여 사용가능 (아래는 옵션 설명)
									<br>
									<ul>
										<li>compile : 컴파일 및 배포 시 같이 제공되어진다. scope를 설정하지 않았을때의 default값</li>
										<li>provided : WAS에서 제공되어지므로 컴파일시에는 필요하지만 배포시에는 빠지는 라이브러리</li>
										<li>runtime : 컴파일때는 사용되지 않고, 실행시에만 사용되어지는 라이브러리</li>
										<li>test : 테스트할때만 사용되어지는 라이브러리</li>
										<li>system : 저장소에서 관리하지 않고 직접 관리하는 jar파일을 지정</li>
										<li>import : 다른 POM설정파일에서 정의되어 있는 의존 관계를 해당 프로젝트로 가져온다.</li>
									</ul>
								</li>
							</ul>
						</li>
						<br>
						<li>기본 글로벌 저장소 주소 : https://repo.maven.apache.org/maven2</li>
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