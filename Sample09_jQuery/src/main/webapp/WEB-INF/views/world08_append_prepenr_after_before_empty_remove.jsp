<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// jQuery에서 DOM(HTML) 선택하는 방버 : 선택자 이용
	// 주의할 점: 가지고 온 값이 jQuery 객체인지 JavaScript 객체인지 구별 필요.
	// xx.fn.init 형태는 jQery 객체이다.
	$(document).ready(function() {
		/*
		
		(before())<p>(prepend())hello(append())</p>(after())
		*/
		$("#aaa").on("click",function(){
			//$(".inner").append("<span>장군</span>")
			$(".inner").append($("h1")); // 기존에 존재하는 태그는 move된다.
		});
		
		$("#aaa2").on("click",function(){
			$(".inner2").prepend("<span>장군</span>")
			//$(".inner").append($("h1")); // 기존에 존재하는 태그는 move된다.
		});
		
		$("#aaa3").on("click",function(){
			$(".inner3").before("<span>장군</span>")
			//$(".inner").append($("h1")); // 기존에 존재하는 태그는 move된다.
		});
		
		$("#aaa4").on("click",function(){
			$(".inner4").after("<span>장군</span>")
			//$(".inner").append($("h1")); // 기존에 존재하는 태그는 move된다.
		});
		
		$("#aaa5").on("click",function(){
			$(".inner5").replaceWith("<h3>이순신장군</h3>")
			//$(".inner").append($("h1")); // 기존에 존재하는 태그는 move된다.
		});
		
		$("#aaa6").on("click",function(){
			$(".inner6").empty();// 선택된 태그의 자손(자식포함) 요소 제거
		});
		
		$("#aaa7").on("click",function(){
			$("div").remove(".inner7");// 선택된 태그의 자손(자식포함) 요소 제거
		});
	});
</script>
</head>
<body>

<h1>append함수</h1>
<div>
 	<div class="inner">이순신</div>
 	<div class="inner">강감찬</div>
</div>
<button id ="aaa">append</button>


<h1>prepend함수</h1>
<div>
 	<div class="inner2">이순신</div>
 	<div class="inner2">강감찬</div>
</div>
<button id ="aaa2">prepend</button>

<h1>before함수</h1>
<div>
 	<div class="inner3">이순신</div>
 	<div class="inner3">강감찬</div>
</div>
<button id ="aaa3">before</button>

<h1>after함수</h1>
<div>
 	<div class="inner4">이순신</div>
 	<div class="inner4">강감찬</div>
</div>
<button id ="aaa4">before</button>

<h1>replaceWith:선택된 DOM 삭제 후 새로운 DOM 변경</h1>
<div>
 	<div class="inner5">이순신</div>
 	<div class="inner55">유관순</div>
</div>
<button id ="aaa5">replaceWith</button>

<h1>empty:모든 자손(자식포함) 요소 제거 자신 제외</h1>
<div>
 	<div class="inner6">이순신<p>장군</p></div>
 	<div class="inner66">유관순</div>
</div>
<button id ="aaa6">empty</button>

<h1>remove:모든 자손(자식포함) 요소 제거 자신 포함</h1>
<div>
 	<div class="inner7">이순신<p>장군</p></div>
 	<div class="inner77">유관순</div>
</div>
<button id ="aaa7">remove</button>

</body>
</html>