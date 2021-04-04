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
		// trigger==> OK버튼을 클릭하면 Cancel이 동작
		
		$("#aaa").on("click", function(){
			console.log("OK");	
		});
		
		$("#aaa2").on("click", function(){
			$("#aaa").trigger("click"); //#aaa에 click 이벤트를 발생시킨다.
		});
	});
</script>
</head>
<body>
	<h1>trigger사용</h1>
	<button id="aaa">OK</button>
	<button id="aaa2">Cancle</button>
	
</body>
</html>