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
	if(document.getElementById("kor").value==""||isNaN(document.getElementById("kor").value)){
		alert("국어 점수를 입력하시오")
		return
	}
	if(document.getElementById("eng").value==""||isNaN(document.getElementById("eng").value)){
		alert("영어 점수를 입력하시오")
		return
	}
	if(document.getElementById("math").value==""||isNaN(document.getElementById("math").value)){
		alert("수학 점수를 입력하시오")
		return
	}
	document.getElementById("frm").submit()
}
</script>
</head>
<body>
<form action="ScoreResult.jsp" id="frm">
이름 : <input type="text" name="name" id="name"><br>
국어 : <input type="text" name="kor" id="kor"><br>
영어 : <input type="text" name="eng" id="eng" ><br>
수학 : <input type="text" name="math"id="math"><br>
 <input type="button" value="button전송" onclick="cheak()"/>
</form>
</body>
</html>