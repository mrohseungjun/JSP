<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.slim.min.js"></script>
<script>

$(document).ready(function(){
	$("#btn").click(function(){
		if($("#name").val()==""){
			alert("이름 입력")
			$("#age").val("")
			return
		}
		if($("#age").val()==""){
			alert("나이 입력")
			$("#age").val("")
			return
		}
		
		if($("input:checkbox[name='hobby']:checked").length==0){
			alert("관심분야 선택");
			return
		}
	
		$("#frm").submit()
	})
	
})


</script>
</head>
<body>

<form action="formResult2.jsp"method="get" id="frm">
이름 : <input type="text" name="name" id="name" ><br>
나이 : <input type="text" name="age" id="age"><br>

성별 : <label><input type="checkbox" name="gender" value="남자" id=gender > 남자</label>
      <label><input type="checkbox" name="gender"value="여자" id=gender > 여자</label><br>
      
관심분야 :<label for="h1"><input type="checkbox" name="hobby"value="운동" > 운동</label>
        <label for="h2"><input type="checkbox" name="hobby"value="게임" > 게임</label>
        <label for="h3"><input type="checkbox" name="hobby"value="등산" > 등산</label>
        <label for="h4"><input type="checkbox" name="hobby"value="영화" > 영화</label><br>
        
직업 : <select name="job">
		<option value = "학생"> 학생</option>
		<option value = "공무원"> 공무원</option>
		<option value = "회사원"> 회사원</option>
		<option value = "기타"> 기타</option>
</select> <br/>   
 <input type="button" value="jquery전송" id="btn"/>
</form>

</body>
</html>