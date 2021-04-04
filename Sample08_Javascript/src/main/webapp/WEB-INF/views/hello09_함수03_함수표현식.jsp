<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//1. 파라미터변수 없고 리턴값 없는 형태
	var fun1 = function(){
		console.log("fun1");
	};
	
	fun1();
	//2. 파라미터 변수 있고 리턴값 없는 형태
	var fun2 = function(n,n2){
		console.log("fun2",n,n2);
	};
	fun2();
	fun2(1,2);
	
	//3. 파라미터 변수 없고 리턴값 있는 형태
	var fun3 = function(){
		console.log("fun3");
		return 100;
	};
	var result = fun3();
	console.log("result:", result);
	
	//4. 파라미터 변수 있고 리턴값 있는 형태
	var fun4 = function(n,n2){
		console.log("fun4", n, n2);
		return n+n2;
	};
	var result = fun4(2,4);
	console.log("result2:",result);
	
	//함수표현식의 특징
	fun5();
	var fun5 = function(){
		console.log("fun5");
	}
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>