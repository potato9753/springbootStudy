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
		
		유틸리티 함수
		
		1. 데이터 반복(배열, JSON)
			$.each(배열|jSon, 함수);
		2. DOM 반복
			$(선택자).each(함수);
		3. 배열에서 필터링
			변수명 = $.grep(배열, 함수);
		*/
		
		//가. 배열
		var s = ["AB","BEE","CEE","DEEE"];
		
		var arr = $.grep(s,function(data, idx){
			console.log(data, idx);
			return data.length==3;
		});
		console.log(arr);
		
	});
</script>
</head>
<body>
<ul>
	<li>100</li>
	<li>200</li>
	<li>300</li>
	<li>400</li>
</ul>

</body>
</html>