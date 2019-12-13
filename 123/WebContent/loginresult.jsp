<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		h5{font-size:50px; text-align:center;}
		#w{font-size:60px;}
	</style>
</head>
<body>
	<% if(request.getAttribute("result").equals("true")){ %>
	<div id="w">환영합니다 ${user.getName() } 님</div>
	
	<%}else{ %>
		<h5>일치하는 회원정보가 없습니다</h5>
	<% } %>	
</body>
</html>