<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,My.JoinDto" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		table{padding:0; margin:0 auto; width:50%; height:50px;color:black; opacity:0.75;}
		td{background:white;}
		tr:first-child{font-size:20px;}
		h4{font-size:50px; color:red;}
	</style>
</head>
<body>
	<h4 align="center">정보 수정</h4>
	<table>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>비밀번호</td>
			<td>전화번호</td>
			<td>직업</td>
			<td>성별</td>
			<td>취미</td>
			<td>자기소개</td>
		</tr>
		<%
			List list = (List) request.getAttribute("list");
			for (int i=0; i<list.size(); i++){
				JoinDto join = (JoinDto)list.get(i);
				out.print("<tr><td><a href='memberupdateform?id="+join.getId()+"'>"+join.getId()+"</td>");
				out.print("<td>"+join.getName()+"</td>");
				out.print("<td>"+join.getPassword()+"</td>");
				out.print("<td>"+join.getTel()+"</td>");
				out.print("<td>"+join.getJob()+"</td>");
				out.print("<td>"+join.getGender()+"</td>");
				out.print("<td>"+join.getHobby()+"</td>");
				out.print("<td>"+join.getIntro()+"</td>");
			}	
		%>
		
	</table>
</body>
</html>