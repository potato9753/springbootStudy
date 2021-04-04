<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function fun1(){
		console.log("fun1");
	}
	
	function fun2(v){
		console.log("fun2",v.value);
	}
	
	function fun3(){
		console.log("fun3")
	}
	
</script>
</head>
<body>
아이디:<input type="text" name="userid" onkeyup="fun1()" onfocus="fun3()" onblur="fun1()"><br>
아이디:<input type="text" name="userid" onkeyup="fun2(this)"><br>
<button onmouseover="fun1()" onmouseout="fun1()">OK</button>
<select name="fruits" onchange="fun1();fun2(this)">
	<option value="사과">사과</option>
	<option value="배">배</option>
	<option value="귤">귤</option>
</select>
</body>
</html>