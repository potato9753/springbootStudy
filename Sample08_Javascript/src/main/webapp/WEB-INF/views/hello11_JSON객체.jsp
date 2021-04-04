<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//1. 일반 데이터 객체
	
	//마. JSON객체 : {key:value, key:value}
	
	var m = {"name":"홍길동", "age":20};
	console.log(m,typeof m);
	
	//조회
	console.log(m.name, m.age);
	console.log(m["name"], m["age"]);  //연관 배열
	var key = "name";
	var key2 = "age";
	console.log(m[key], m[key2]);
	
	//추가
	m["email"] = "aaa@bbb.ccc";
	console.log(m);
	
	//삭제
	delete m["age"];
	console.log(m);
	
	//JSON객체 <----> 문자열
	//1. JSON --> 문자열. JSON.stringify(json)
	
	var m = {"name":"홍길동", "age":20};
	var str = JSON.stringify(m);
	console.log(str,typeof str);
	//2. 문자열 --> JSON, JSON.parse(str)
	
	var json = JSON.parse(str);
	console.log(json, typeof json, json.name, json["name"]);
	
	
	
	
	
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>