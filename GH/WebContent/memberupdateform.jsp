<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		table{padding:10px; margin:0 auto; width:40%; height:100px;color:black; opacity:0.75;}
		tr:nth-last-child(n+2){background:white;}
		#t{width:100px; text-weight:bold;}
		#a{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%; text-align:center;}
	</style>
</head>
<body>
	<form action ="joinupdate">
		<table>
		
		<tr><td id="t">이름</td><td width="200"><input type="text" name ="name" value=${user.getName() }></td></tr>
		<tr><td id="t">아이디</td><td><input type="text" name ="id" readonly value=${user.getId() }></td></tr>
		<tr><td id="t">비밀번호</td><td><input type="text" name ="password" value=${user.getPassword() }></td></tr>
		<tr><td id="t">전화번호</td><td><input type="text" name = "tel" value=${user.getTel() }></td></tr>
		<tr><td id="t">직업</td><td><input type="text" name="job" value=${user.getJob() }></td></tr>
		<tr><td id="t">취미</td><td><input type="text" name="hobby" value=${user.getHobby() }></td></tr>
		<tr>
		<td colspan="2"><input id="a" type="submit" value="정보수정" >
		<input type="button" id="a" value="정보삭제" onclick="location.href='memberdelete?id=${user.getId() }'"></td>
		</tr>
		</table>
	</form>
</body>
</html>