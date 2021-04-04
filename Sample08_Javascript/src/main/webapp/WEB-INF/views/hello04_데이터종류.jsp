<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//기본형 데이터
	console.log("수치데이터",100, 3.14);
	console.log("문자데이터","A", 'A',"ABC",'ABC');
	console.log("논리데이터",true,false);
	console.log("etc", undefined, null, NaN);

	//참조형 데이터
	console.log("배열:",[10,20,30],["A","B","C"],["A",10,true]);
	console.log("객체(JSON):",{"name":"홍길동","age":20});
	console.log("함수:", function(){});
	
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>