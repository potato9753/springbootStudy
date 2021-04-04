<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function req(){
		httpRequest = new XMLHttpRequest(); // Ajax 담당 객체

		//응답처리 ==> 콜백함수(callback)
		httpRequest.onreadystatechange = responseFun;
		
		//요청처리
		httpRequest.open("get", "ajax", true); //jsp, servlet, Spring, SpringBoot
		httpRequest.send(null);
	}
	
	function responseFun(){
		// 예외없이 처리했는지 확인
		if(httpRequest.readyState==4 &&
				httpRequest.status == 200){
			var data = httpRequest.responseText;
			document.getElementById("result").innerText = data;
		}
	}
</script>
</head>
<body>
	<button onclick="req()">Ajax요청</button>
	<div id ="result"></div>
</body> 
</html>