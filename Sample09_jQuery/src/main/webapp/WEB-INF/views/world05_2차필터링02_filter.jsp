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

		/* 	
			2차 필터링
			1. 선택자 이용해서 일치하는 요소를 선택(1차 필터)한 후에
			추가로 요소선택하는 방법
				
			가. .eq(n) : n은 인덱스값
		
		*/
		$("li").filter(".my").css("color","red")
		.end().filter("#xyz").css("color","blue")
		.end().filter(":even").css("font-size","40px");	
		
			
	});
</script>
</head>
<body>
<ul>
	<li>A1</li>
	<li>A2</li>
	<li class="my">A3</li>
	<li>A4</li>
	<li id="xyz">A5</li>
	<li>A6</li>
	<li>A7</li>
</ul>
</body>
</html>