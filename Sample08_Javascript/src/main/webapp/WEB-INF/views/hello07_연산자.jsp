<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	//7. typeof 연산자
	//6. 3항연산자
	var v = (4>3)?100:200;
	console.log(v);
	//5. 증감연산자
	var k = 10;
	++k;
	console.log(k);
	//true와 false만 논리값으로 처리할 수 있는것이 아니다.
	console.log(!0);
	console.log(!"");
	console.log(!null);
	console.log(!undefined);
	console.log(!NaN);
	
	//4. 논리연산자
	
	console.log(true&&true);
	console.log(true&&false);
	console.log(false&&true);
	console.log(false&&false);
	console.log("&&------------------------------")
	console.log(true||true);
	console.log(true||false);
	console.log(false||true);
	console.log(false||false);
	console.log("||------------------------------")
	console.log(!true);
	console.log(!false);
	console.log("!------------------------------")
	
	//주의
	var z = 10;
	var z2 = '10';
	console.log(z == z2); // true
	console.log(z === z2); // false
	
	//3. 비교연산자
	var l = 10;
	var l2 = 5;
	
	console.log(l==l2);
	console.log(l>l2);
	console.log(l>=l2);
	console.log(l<l2);
	console.log(l<=l2);
	console.log(l!=l2);
	
	//2. 대입연산자
	var k =10;
	var k2 =5;
	
	k += k2;
	console.log(k,k2);
	
	k -= k2;
	console.log(k,k2);
	
	
	k *= k2;
	console.log(k,k2);
	
	
	k /= k2;
	console.log(k,k2);
	
	
	k %= k2;
	console.log(k,k2);
	
	
	
	//1. 산술연산자
	var n =10;
	var m = 3;
	
	console.log("+:",(n+m));
	console.log("-:",(n-m));
	console.log("*:",(n*m));
	console.log("/:",(n/m));
	console.log("%:",(n%m));
	
	// 주의할 점
	var n1 =10;
	var m1 = '3';
	
	console.log("+:",(n1+m1)); //103, 연결
	console.log("-:",(n1-m1));
	console.log("*:",(n1*m1));
	console.log("/:",(n1/m1));
	console.log("%:",(n1%m));
	
	console.log(n1 + Number.parseInt(m1));
</script>
</head>
<body>
hello world, 안녕하세요.
</body>
</html>