<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<% session.invalidate(); %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>로그아웃</title>
  </head>
  <body>
    <script>
      location.href = "${pageContext.request.contextPath}/";
    </script>
  </body>
</html>
