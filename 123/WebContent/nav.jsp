<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		*{margin:0; padding:0; text-decoration:none;}
		
		#nav ul{background:black; opacity:0.95; }
		#nav li{ display:inline-block; position:relative; }
		#nav li a{display:inline-block; background:black; color:#CC3D3D;
		 	font-weight:bolder;
			width:100px; text-align:center; font-size:15px; line-height:80px;}
		#nav li a { display : inline-block; }
   		#nav li ul{display:none; position:absolute;}
   		#nav li:hover ul{display:block; }
   		#nav li:nth-child(n+4){float:right;}
   		#nav li a:hover{background:#FFFFFF;}
	</style>
</head>
<body> 
		<nav id="nav">
		<ul>
			<li><a href="home">HOME</a></li>
			<li><a href="Showlist">소개</a></li>
			<li><a href="recipeindex.jsp">레시피</a></li>
			<li><a href="main?target=loginform">로그인</a></li>
			<li><a href="main?target=acc">회원가입</a></li>
			<li><a href="joinupdate">회원정보수정</a></li>
			<li><a href="Boardlist">Q&A</a></li>
		</ul>
		</nav>
		
	<%
		if(request.getAttribute("result")!=null){
			String result = (String) request.getAttribute("result");
			if(result.equals("true")){ %>
			
			
			
	
	<% }else {%>
		
		
			
		
	<% }
	}%>
		
		
</body>
</html>

		