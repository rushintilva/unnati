<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form action="controllor" method="POST">
      user-name:<br>
      <input type="text" name="username">
      <br>
      password:<br>
      <input type="text" name="password">
      <br><br>
      <input type="hidden" name="index" value="InstituteLogin">
      <input type="submit" value="Submit">
    </form>
</body>
</html>