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

		/* 	의사코드(pseudo code)
			
			1. 공통적으로 : 의사코드 형식이다.
			2. 예>
				:first-child
				:last-child
				:even
				:odd
				:text
				:checkbox
				:checked
				:hidden */

			$("input:text").css("background-color","yellow");
			console.log($("input:checked"));
			console.log($("input:hidden"));
			
	});
</script>
</head>
<body>
	<div>
		x:<input type="text" name="x"><br> 
		x2:<input type="checkbox" name="x2"><br> 
		x3:<input type="checkbox" name="x3" checked="checked"><br>
		x4:<input type="hidden" name="x4"><br>
	</div>
</body>
</html>