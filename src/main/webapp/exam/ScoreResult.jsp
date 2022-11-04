<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
// 스크립트릿

String name = request.getParameter("name");
int kor =  Integer.parseInt(request.getParameter("kor"));
int english = Integer.parseInt(request.getParameter("eng"));
int math = Integer.parseInt(request.getParameter("math"));
int total = kor+english+math;
float average = total/3.0f;

String grade = "";
switch((int)average/10){
	case 9: grade="A"; break;
	case 8:	grade="B";break;
	case 7: grade="C";break;
	default:grade = "F";
}

/*if((int)average>=90){
	grade = "A";
}else if((int)average>=80){
	grade = "B";
}else if((int)average>=70){
	grade = "C";
}
else{
	grade = "F";
}*/
// 평균이 90점 이상이면A , 80점 이상이면 B, 70 이상이면 C, 나머지는 F
%>

이름: <%=name %><br/>
국어: <%=kor %><br/>
영어: <%=english %><br/>
수학: <%=math %><br/>
총점: <%=total %><br/>
평균: <%=average %><br/>
학점: <%=grade %>

<hr/>


</body>
</html>