<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="sb" class="com.exam.formBean"></jsp:useBean>
<jsp:setProperty property="*" name="sb"/>


<% 
 String[]h = sb.getHobby();
 String tmp="";
 for(int i = 0; i< h.length; i++){
	 tmp += h[i]+"";
 }
%>
</head>



<body>

이름:<%=sb.getName() %><br/>
나이:<%=sb.getAge() %><br/>
성별:<%=sb.getGender() %><br/>
관심분야:<%=tmp %><br/>
직업:<%=sb.getJob() %><br/>

</body>
</html>