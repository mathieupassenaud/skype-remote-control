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
</head>
<body>
<% String id = request.getParameter("id");
Call[] calls = Skype.getAllActiveCalls();
for(Call call : calls){
	if (call.getId().equals(id)){
		call.finish();
	}
}

%>
</body>
</html>