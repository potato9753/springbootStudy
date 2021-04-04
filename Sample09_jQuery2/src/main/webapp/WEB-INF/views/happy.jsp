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
			
			var name= $("#name").val();
			var address= $("#address").val();
			
			$.ajax({
				type:'get',
				url:'param',
				dataType:'text',  //text, json,
				data:{
					'name':name,
					'address':address
				},
				success:function(data,status,xhr){
					console.log(data);
					//$("#result").text(data);
				},
				error:function(xhr,status,e){
					console.log("error",e);
				}
			});
		});
		//////////////////////////////////////////////////
		$(document).ready(function() {
		
		$("#xyz2").on("click", function(){
			
			var name= $("#name").val();
			var address= $("#address").val();
			
			$.ajax({
				type:'post',
				url:'param2',
				dataType:'text',  //text, json,
				headers:{
					"Content-Type":"application/json"
				},
				data:JSON.stringify(jsonObj),
				success:function(data,status,xhr){
					console.log(data);
					//$("#result").text(data);
				},
				error:function(xhr,status,e){
					console.log("error",e);
				}
			});
		});
		}
		$(document).ready(function() {
			
			$("#xyz3").on("click", function(){
				$.ajax({
					type:'get',
					url:'ajax3',
					dataType:'json',  //text, json,
					success:function(data,status,xhr){
						var tag = `
						<table border ="1">
						<tr>
							<td>이름</td>
							<td>주소</td>
						</tr>
						`;
						$.each(data,function(idx,data2){
							let x = data2.name;
							let y = data2.address;
							let trTag = "<tr><td>"+x+"</td><td>"+y+"</td></tr>";
							tag += trTag;
						});
						tag += `</table>`;
						$("#result").html(tag);
						},
					error:function(xhr,status,e){
						console.log("error",e);
					}
				});
				});
			});
		}
	});
</script>
</head>
<body>
	<button id="xyz">Ajax 요청1. 파라미터전달(text)</button>
	<button id="xyz2">Ajax 요청2. 파라미터전달(json)</button>
	<button id="xyz3">Ajax 요청3. 파라미터전달(배열)</button>
	<div id="result"></div>
</body>
</html>