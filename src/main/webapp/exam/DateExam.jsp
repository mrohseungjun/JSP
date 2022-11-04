<%@page import="com.exam.Datebean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 Datebean bean = new Datebean();
 %>
 
 <%=bean.getToday() %>