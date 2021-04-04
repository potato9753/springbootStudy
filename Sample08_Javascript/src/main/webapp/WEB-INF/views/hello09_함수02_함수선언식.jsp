<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//1. 파라미터변수 없고 리턴값 없는 형태
	function fun1(){
		console.log("fun1");
	}
	fun1();
	
	//2. 파라미터 변수 있고 리턴값 없는 형태
	function fun2(n,n2){
		console.log("fun2", n, n2);
	}
	
	fun2(100,"홍길동");
	fun2(100);
	fun2(100,"홍길동",200);
	fun2();
	
	//3. 파라미터 변수 없고 리턴값 있는 형태
	function fun3(){
		console.log("fun3");
		return 100;
	}
	
	var result = fun3();
	console.log("result:", result);
	
	//4. 파라미터 변수 있고 리턴값 있는 형태
	function fun4(n,n2){
		console.log("fun4",n,n2);
		return n+n2;
	}
	
	var result = fun4(10,20);
	console.log("result2:", result);
	
	//함수 선언식 특징 : 함수정의전에 먼저 호출 가능
	fun5();
	function fun5(){
		console.log("fun5");
	}
	console.log(fun5);
	
	//var fun5 = 10;
	fun5();
	
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>