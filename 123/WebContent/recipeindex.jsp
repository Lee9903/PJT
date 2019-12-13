<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		body{width:100%; magin:0;}
		img{width:100%; height:50%;}
		table{width:80%; magin:0 10%; position:relative;}
		td{width:20%;}
		tr:last-child{height:100px; text-align:center; text-weight:bold;}
		.td{opacity:0; width:25%; height:100%;position:absolute; background:black; z-index:2;}
		.td:hover{z-index:3; opacity:1; cursor:pointer; transition:opacity 0.2s;}
		h2{color:red; z-index:2; text-align:center; margin-top:100px;}
		#1{left:0;}
		#2{left:20%;}
		#3{left:40%;}
		#4{left:60%;}
		a{text-decoration:none;}
	</style>
</head>
<body>
	<form action="recipe">
		<table align="center">
			<tr>
				<td><div class="td" id="1"><h2>떡볶이</h2></div><a href=""><img src="mochi/1.png"></a></td>
				<td><div class="td" id="2"><h2>불고기</h2></div><a href=""><img src="bul/1.png"></a></td>
				<td><div class="td" id="3"><h2>순두부찌게</h2></div><a href=""><img src="soon/1.jpg"></a></td>
				<td><div class="td" id="4"><h2>닭갈비</h2></div><a href=""><img src="dak/1.png"></a></td>
			</tr>
			<tr>
				<td><a href="mo.jsp">떡볶이</a></td>
				<td><a href="bul.jsp">파불고기</a></td>
				<td><a href="soon.jsp">순두부찌게</a></td>
				<td><a href="dak.jsp">치즈닭갈비</a></td>
			</tr>
			
		</table>
	</form>
</body>
</html>