<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	/*
	자동으로 동작되는 form태그의 submit을 중지 가능하다.
	==> event.preventDefault();
	*/
	function fun1(){
		console.log("aaa");
	}

	function fun2(){
		console.log("bbb");
		event.stopPropagation();
	}

</script>
</head>
<body>

<div style="background-color: red" onclick="fun1()">
	aaa
	<div style="background-color: yellow" onclick="fun2()">
		bbb
	</div>
</div>

</body>
</html>