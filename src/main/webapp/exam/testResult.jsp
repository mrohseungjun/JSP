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
String addr = request.getParameter("addr");

%>
이름:<% out.println(name); %><br/>
주소:<% out.println(addr); %><br/>
<hr/>
이름: <%=name %><br/>
주소: <%=addr %><br/>

</body>
</html>