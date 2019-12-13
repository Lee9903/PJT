<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
		*{margin:0; padding:0; text-decoration:none;}
		
		nav{background:black; opacity:0.95; }
		li{ display:inline-block; position:relative; }
		li a{display:inline-block; background:black; color:#CC3D3D;
		 	font-weight:bolder;
			width:100px; text-align:center; font-size:15px; line-height:80px;}
		li a { display : inline-block; }
   		li ul{display:none; position:absolute;}
   		li:hover ul{display:block; }
   		li:nth-child(n+4){float:right;}
   		li a:hover{background:#FFFFFF;}
	</style>
</head>
<body> 
		<nav>
		<ul>
			<li><a href="home">HOME</a></li>
			<li><a href="show">소개</a></li>
			<li><a href="Boardlist">게시판</a></li>
			<li><a href="loginform">로그인</a></li>
			<li><a href="joinpro">회원가입</a></li>
			<li><a href="joinupdate">회원정보수정</a></li>
		</ul>
		</nav>
</body>
</html>