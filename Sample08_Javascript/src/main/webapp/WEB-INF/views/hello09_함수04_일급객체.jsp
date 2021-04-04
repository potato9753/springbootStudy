<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//1.함수를 변수에 저장 가능하다.
	function fun1(){
		console.log("fun1");
	}
	var xxx = fun1;
	xxx();
	
	//2. 함수를 임의의 함수의 리턴값으로 사용 가능하다.
	function fun2(){
		console.log("fun2");
	}
	
	function fun3(){
		return fun2;
	}
	
	var xxx2 = fun3();
	xxx2();
	
	//3. 함수를 임의의 함수 호출시 전달값으로 사용 가능하다.
	function fun4(){
		console.log("fun4");
	}
	function fun5(xxx){
		xxx();
	}
	fun5(fun4);
	
	var fun6 = function(){
		console.log("fun6");
	}
	fun5(fun6);
	fun5(function(){
		console.log("fun6");
	})
	
	
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>