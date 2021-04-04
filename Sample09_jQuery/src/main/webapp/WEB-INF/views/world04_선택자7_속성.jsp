<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	// jQuery에서 DOM(HTML) 선택하는 방버 : 선택자 이용
	// 주의할 점: 가지고 온 값이 jQuery 객체인지 JavaScript 객체인지 구별 필요.
	// xx.fn.init 형태는 jQery 객체이다.
	$(document).ready(function(){
		
		// 태그의 속성 ==> [속성명], [속성명='값']
		//$("[href]").css("color","red");
		//$("[href='http://www.daum.net']").css("color","red");
		//$("[href ^= 'https']").css("color","red");
		$("[href $= 'net']").css("color","red");
		
	});
	
</script>
</head>
<body>
<div>
<p>Hello</p>
  <a href="http://www.daum.com">daum1</a>
  <a href="https://www.daum.com">daum2</a>
  <a href="http://www.daum.net">daum3</a>
  <a href="https://www.daum.net">daum4</a>
</div>
</body>
</html>