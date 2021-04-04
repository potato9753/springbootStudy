<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//1. 일반 데이터 객체
	
	//라. 배열
	var n =[]; // 권장
	var n2 = new Array();
	
	var m =[10,20,30]; // 권장
	var m2 = new Array(10,20,30);
	
	//함수
	n.push(10);
	n.push(1,2,3,4);
	console.log(n);
	
	n.pop();
	console.log(n);
	
	n.reverse();
	console.log(n);
	
	//일부분 잘라내기
	var m = [1,2,3,54,5,6,7,7,54,3];
	console.log("slice:", m.slice(0, 5));
	
	console.log("특정값의 위치:", m.indexOf(54));
	
	//splice ==> 삭제기능, 추가기능
	
	var m2 = ['A','B','C','D','E'];
	
	m2.splice(0, 3);
	console.log("삭제:",m2);
	
	m2.splice(0,0,10,20,30);
	console.log(m2);
	
	m2.splice(2,1,9,99,999);
	console.log(m2);
	
	//정렬
	var xxx = [6,2,43,1,25,34,75,3];
	xxx.sort(function(a,b){return a-b;});
	console.log("오름정렬:",xxx);
	xxx.sort(function(a,b){return b-a;});
	console.log("내림정렬:",xxx);
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>