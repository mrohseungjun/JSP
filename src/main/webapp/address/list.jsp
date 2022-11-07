<%@page import="com.address.Address"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.address.AddressDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>전체보기</title>
<% 
AddressDAO dao = AddressDAO.getInstance();
ArrayList<Address> arr = dao.addressList();
int count = dao.getCount();
%>
</head>

<body>
<div class="container">
	<div align = "right"><a href="insert.jsp">추가하기</a><br/><br/></div>
<h3>전체보기(<%=count %>)</h3>

<%
	for(Address ad  : arr){
%>		
	   <%=ad.getNum() %>	
	   <a href="detail.jsp?num=<%=ad.getNum() %>"><%=ad.getName() %></a>
	   <%=ad.getZipcode() %>	
	   <%=ad.getAddr() %>	
	   <%=ad.getTel() %>	
	   <br/>
<% 	
	}
%>


<!-- <hr/> -->
<%-- <% --%>
<!-- //  for(int i = 0; i<arr.size(); i++){ -->
<%-- %> --%>
<%-- 	 <%=arr.get(i).getNum()%> --%>
<%-- 	 <%=arr.get(i).getName()%> --%>
<%-- 	 <%=arr.get(i).getZipcode()%> --%>
<%-- 	 <%=arr.get(i).getAddr()%> --%>
<%-- 	 <%=arr.get(i).getTel()%> --%>
<!-- 	    <br/> -->
<%-- <% 	  --%>
<!-- //  } -->
<%-- %> --%>

</body>
</html>
