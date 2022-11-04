<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function cheak(){
	if(document.getElementById("name").value==""){
		alert("이름을 입력하세요")
		return
	}
	if(document.getElementById("age").value==""||isNaN(document.getElementById("age").value)){
		alert("나이를 입력하시오")
		return
	}
	
	var chk_obj = document.getElementsByName("hobby")
	var checked = false
	
	for(i=0;i<chk_obj.length;i++){
		if(chk_obj[i].checked){
			checked=true
			//alert(chk_obj[i].value)
		}
	}
	if(checked==false){
		alert("관심 분야 선택")
		return
	}
	document.getElementById("frm").submit()
}
</script>

</head>
<body>

<form action="testResult2.jsp" id="frm">
이름 : <input type="text" name="name" id="name" ><br>
나이 : <input type="text" name="age"id="age"><br>

성별 : <label><input type="checkbox" name="gender" value="남자"  > 남자</label>
      <label><input type="checkbox" name="gender"value="여자" > 여자</label><br>
      
관심분야 :<label for="h1"><input type="checkbox" name="hobby"value="운동" id="hobby" > 운동</label>
        <label for="h2"><input type="checkbox" name="hobby"value="게임"id="hobby"  > 게임</label>
        <label for="h3"><input type="checkbox" name="hobby"value="등산" id="hobby" > 등산</label>
        <label for="h4"><input type="checkbox" name="hobby"value="영화" id="hobby" > 영화</label><br>
        
직업 : <select name="job">
		<option value = "학생"> 학생</option>
		<option value = "공무원"> 공무원</option>
		<option value = "회사원"> 회사원</option>
		<option value = "기타"> 기타</option>
</select> <br/>   

  <input type="button" value="전송" onclick="cheak()"/>
</form>

</body>
</html>