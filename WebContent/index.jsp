<%@page import="fr.mathieupassenaud.skypeweb.model.FriendModel"%>
<%@page import="fr.mathieupassenaud.skypeweb.ContactsService"%>
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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</head>
<body>
	<table width='100%'>
	<tr>
		<td>
		<%
			for(FriendModel friend : ContactsService.getOnlineContacts()){
				String name = friend.getName();
				String id = friend.getId();
				if(name.equals("")){
					name = id;
				}
		%>
		<a class="btn btn-success" href="call.jsp?id=<% out.print(id); %>">
		<% out.print(name); %></a>
		<%
		}
		%>		
		</td>
		<td>
		Offline <br />
		<%
			for(FriendModel friend : ContactsService.getOfflineContacts()){
				String name = friend.getName();
				String id = friend.getId();
				if(name.equals("")){
					name = id;
				}
		%>
		<a class="btn btn-danger" disabled="disabled" href="call.jsp?id=<% out.print(id); %>">
		<% out.print(name); %></a>
		<%
		}
		%>
		</td>
	</tr>
</table>

</body>
</html>