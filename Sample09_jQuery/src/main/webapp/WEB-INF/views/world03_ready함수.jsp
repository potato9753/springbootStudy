<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	//onload 기능 함수 => ready함수
	// $ ==> jQuery 키워드 축약표시
	
	$(document).ready(function(){
		console.log("ready1");
	});
	
	jQuery(document).ready(function(){
		console.log("ready2");
	});
	
	$(function(){
		console.log("ready3");
	});
	
</script>
</head>
<body>
<h1>world</h1>
</body>
</html>