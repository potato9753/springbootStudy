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
			의사코드(pseudo code)
			
			1. 공통적으로 : 의사코드 형식이다.
			2. 예>
				:first-child
				:last-child
				:even
				:odd
				:text
				:checkbox
				:checked
				:hidden
		 */
		//ul기준이 아니고 ul의 부모 기준
		/* var s = $("li:first-child");
		console.log(s);
		
		//li의 부모기준으로 첫번째 자식을 선택
		$("li:first-child").css("color","red");
		$("li:last-child").css("color","blue"); */
		
		//배수 선택
		//$("li:nth-child(2n+1)").css("font-size","30px");
		$("li:even").css("font-size","30px");
	});
</script>
</head>
<body>
	<div>
		<ul>
			<li>A1</li>
			<li>A2</li>
			<li>A3</li>
			<li>A4</li>
			<li>A5</li>
			<li>A6</li>
			<li>A7</li>
		</ul>
	</div>
</body>
</html>