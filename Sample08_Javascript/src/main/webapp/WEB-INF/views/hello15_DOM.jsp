<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function fun() {
		
		var p = document.getElementById("xyz");
		console.log(p); // 태그로 출력
		console.dir(p); // 객체로 출력 ==> 객체의 속성과 함수를 확인할 수 있다.
		console.log(p.innerText);
		
		var div = document.getElementById("aaa");
		console.log(div.innerHTML);
		console.log(div.innerText);
	}
	
	function fun2(){
		var input = document.getElementById("userid");
		console.dir(input);
		console.log(input.value);
	}
</script>
</head>
<body onload="fun()">
	<p id="xyz">Hello</p>
	<p id="xyz2">World</p>
	<div id="aaa">
		<div>
			Happy
		</div>
	</div>
	아이디:<input type="text" name="userid" id="userid" onkeyup="fun2()">
</body> 
</html>