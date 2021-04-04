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

		// 기본 submit 방지 ==> event.preventDefault()
		$("form").on("submit",function(event){
			
			if($("#userid").val().length==0){
				alert("아이디 필수");
				event.preventDefault();
			}
		});
	});
</script>
</head>
<body>
	<form action = "event">
		아이디:<input type="text" name="userid" id="userid"><br> <input
			type="submit" value="로그인">
	</form>
</body>
</html>