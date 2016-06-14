<%@page import="com.skype.User.Status"%>
<%@page import="com.skype.Friend"%>
<%@page import="com.skype.ContactList"%>
<%@page import="com.skype.Skype"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% ContactList list = Skype.getContactList();
   Friend[] friends = list.getAllFriends();
   for(Friend friend : friends){
	   String name = friend.getFullName();
	   String displayName = friend.getDisplayName();
	   String id = friend.getId();
	   
	%>
	<a href="call.jsp?id=<% out.print(id); %>">
	<% out.print(name); %></a> <br />
	<%
	}

%>
</body>
</html>