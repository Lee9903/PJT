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
	
	<table width="80%" height="80%" align="center" border="1">
		<tr>
			<td rowspan="2"><img src="ramen/${show.getImg() }.jpg"></td>
			<td colspan="2">${show.getIname() }(~~~)</td>
		</tr>
		<tr>
			<td>${show.getStar() }점</td>
			<td>${show.getReview() }개</td>
		</tr>
		<tr>
			<td id="tdd" colspan="4" align="center"><iframe frameborder=0 src="ramen/${show.getLocation() }.jsp">위치</iframe></td>
	
		</tr>		
	</table>
</body>
</html>