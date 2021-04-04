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
		
		$("#xyz").on("click", function(){
			
			//ajax통신
			$.ajax({
				type:'get',
				url:'ajax',
				dataType:'text',  //text, json,
				success:function(data,status,xhr){
					//console.log(data);
					$("#result").text(data);
				},
				error:function(xhr,status,e){
					console.log("error",e);
				}
			});
		});
		//////////////////////////////////////////////////
		
		$("#xyz2").on("click", function(){
			$.ajax({
				type:'get',
				url:'ajax2',
				dataType:'json',
				success:function(data,status,xhr){
					//console.log(data);
					$("#result").text(data.name+"\t"+data.address);
				},
				error:function(xhr,status,e){
					console.log("error",e);
				}
				
			});
			
		});
		//////////////////////////////////////////////////
		$("#xyz3").on("click", function(){
			$.ajax({
				type:'get',
				url:'ajax3',
				dataType:'json',
				success:function(data,status,xhr){
					$.each(data,function(idx,data2){
						console.log(idx,data2.name,data2.address);
					});
				},
				error:function(xhr,status,e){
					console.log("error",e);
				}
				
			});
			
		});
	});
</script>
</head>
<body>
<button id="xyz">Ajax 요청1.text</button>
<button id="xyz2">Ajax 요청2.JSON</button>
<button id="xyz3">Ajax 요청3.배열</button>
<div id="result"></div>
</body>
</html>