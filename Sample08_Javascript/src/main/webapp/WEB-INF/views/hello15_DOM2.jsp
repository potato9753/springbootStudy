<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sum(){
		var price = document.getElementById("price").value;
		console.log(price);
		var quantity = document.getElementById("quantity").value;
		console.log(quantity);
		
		var sum = Number.parseInt(price) * Number.parseInt(quantity);
		console.log(sum);
		
		document.getElementById("result").innerText = sum;
	}
</script>
</head>
<body>
	가격:<input type="text" name="price" id="price" value="1000"><br>
	수량:
	<select name="quantity" id="quantity" onchange="sum()">
	  <option>5</option>
	  <option>10</option>
	  <option>15</option>
	</select>
	총가격:<div id="result"></div>
</body> 
</html>