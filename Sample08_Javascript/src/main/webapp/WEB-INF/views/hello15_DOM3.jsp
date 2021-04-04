<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fun(){
		var check = document.getElementById("sameAddress").checked;
		console.dir(check);
		console.log(check);
		if(check){
			document.getElementById("address2").value = document.getElementById("address").value;
		}else{
			document.getElementById("address2").value="";
		}
	}
</script>
</head>
<body>
	회원주소:
	<input type="text" name="address" id="address"><br>
	
	배송할 주소가 같으면 체크하시오.
	<input type="checkbox" name="sameAddress" id="sameAddress" onclick="fun()"><br>
	
	배송주소:
	<input type="text" name="address2" id="address2"><br>
	
</body> 
</html>