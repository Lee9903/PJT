<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		iframe{width:650px; height:100%;}
		#tdd{height:480px;}
	</style>
</head>
<body>
	
	<table width="80%" height="80%" align="center">
		<tr>
			<td colspan="3" align="center">${show.getIname() }</td>
		</tr>	
		<tr>
			<td><img src="menuimg/${show.getMenu1() }.jpg"></td>
			<td><img src="menuimg/${show.getMenu2() }.jpg"></td>
			<td><img src="menuimg/${show.getMenu3() }.jpg"></td>
		</tr>
		<tr>
			<td colspan="3">평점 : ${show.getStar() }점</td>
		</tr>
		<tr>
			<td colspan="3">
				<div>${show.getIntro1() }</div>
				<div>${show.getIntro2() }</div>
				<div>${show.getIntro3() }</div>
				<div>${show.getIntro4() }</div>
			</td>
		</tr>	
		<tr>
			<td id="tdd" colspan="4" align="left"><iframe frameborder=0 src="ramen/${show.getLocation() }.jsp">위치</iframe></td>
	
		</tr>		
	</table>
</body>
</html>