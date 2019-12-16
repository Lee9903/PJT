<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border="1">
		<tr>
			<td rowspan="2"><input type="image" value="${show.getImg() }"></td>
			<td colspan="2">${show.getIname() }(~~~)</td>
		</tr>
		<tr>
			<td>${show.getStar() }점</td>
			<td>${show.getReview() }개</td>
		</tr>
			
	</table>
</body>
</html>