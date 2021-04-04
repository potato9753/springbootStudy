<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// jQuery에서 DOM(HTML) 선택하는 방버 : 선택자 이용
	// 주의할 점: 가지고 온 값이 jQuery 객체인지 JavaScript 객체인지 구별 필요.
	// xx.fn.init 형태는 jQery 객체이다.
	$(document).ready(function() {

		//1. 이벤트 처리(권장)
		$("#aaa").on("click"function(){
			console.log("click");
		});
		
		
		//2. 이벤트 처리(권장)
		$("#aaa2").click(function(){
			console.log("click2");
		});
		
		
	});
</script>
</head>
<body>
<button id ="aaa">OK</button>
<button id ="aaa2">OK2</button>
</body>
</html>