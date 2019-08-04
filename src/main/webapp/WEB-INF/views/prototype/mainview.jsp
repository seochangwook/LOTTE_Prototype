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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
</head>
<body>
	<div class="jumbotron text-center">
  		<h1>Prototype Framework Intro</h1>
  		<p>롯데정보통신 DT사업본부 IoT부문 스마트그린팀 기술담당</p> 
  		<br>
  		<img src="/images/prototype/lottelogo.png"  width="190" height="113">
	</div>
  
	<div class="container">
  		<div class="row">
    			<div class="col-sm-4">
      			<a href="http://127.0.0.1:8080/prototype/frameworksamplepage.do">
      				<h3>Framework &nbsp;
      					<img src="/images/prototype/frameworkintroimage.png"  width="70" height="70">
      				</h3>
      			</a>
      			<p>표준 프레임워크 / 디자인 패턴 반영</p>
      			<p>Spring Boot, MVC, Maven, JDK, CommonJS, Exception, ...</p>
    			</div>
    			<div class="col-sm-4">
      			<a href="http://127.0.0.1:8080/prototype/dataaccesssamplepage.do">
      				<h3>Data Access &nbsp;
      					<img src="/images/prototype/dataaccessintroimage.png"  width="70" height="70">
      				</h3>
      			</a>
      			<p>표준 데이터 접근제어 반영</p>
      			<p>Spring JPA, Mybatis, MSSQL, Oracle, MySQL, ...</p>
    			</div>
    			<div class="col-sm-4">
      			<a href="http://127.0.0.1:8080/prototype/securitysamplepage.do">
      				<h3>	Security &nbsp;
      					<img src="/images/prototype/securityintroimage.png"  width="70" height="70">
      				</h3>
      			</a>        
      			<p>보안 필수요소 반영</p>
      			<p>Secure Coding, MD5, SHA, Spring Security, ...</p>
    			</div>
  		</div>
  		<br><br>
  		<div class="row">
    			<div class="col-sm-4">
      			<a href="http://127.0.0.1:8080/prototype/etclibrarysamplepage.do">
      				<h3>Etc Library &nbsp;
      					<img src="/images/prototype/etclibraryintroimage.png"  width="70" height="70">
      				</h3>
      			</a>
      			<p>Graph/Grid/기타 Library 반영</p>
      			<p>D3.js, jqGrid, Excel Download, PDF Viewer, ...</p>
    			</div>
  		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	console.log('mainview load...')
});
</script>
</html>