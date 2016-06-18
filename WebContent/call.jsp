<%@page import="com.skype.SkypeClient.WindowState"%>
<%@page import="com.skype.SkypeClient"%>
<%@page import="com.skype.Call"%>
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
<% String id = request.getParameter("id");
Call call = Skype.call(id);
String callId = call.getId();
SkypeClient.setMainWindowState(WindowState.MAXIMIZED);
if(call.isSendVideoEnabled()){
	
	%>
	<%
}
%>
<a class="btn btn-danger" href="terminate.jsp?id=<% out.print(callId);%>">Terminate</a>
</body>
</html>