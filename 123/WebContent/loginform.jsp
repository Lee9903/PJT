<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
		function oncheck(){
			if(!fml.id.value){
				alert('아이디를 입력해주세요');
				fmL.id.focus();
				return false;
			}
			if(!fml.password.value){
				alert('비밀번호를 입력해주세요');
				fml.password.focus();
				return false;
				}
				if(!fml.passcheck.value){
					alert('비밀번호가 일치하지 않습니다');
					fmL.passcheck.focus();
					return false;
				}
				
				if(fml.password.value==fmL.passcheck.value){
					alert('로그인 되었습니다');
					return false;
				}else{
					alert('비밀번호가 틀립니다.\n다시 입력해주세요');
					fml.password.focus();
					return false;
				}
				return true;
			};
			
	</script>
	<style>
		table{padding:0; margin:0 auto; width:0; height:0; color:white; opacity:0.75;}
		tr:nth-last-child(n+2){background:white; font-weight:bolder; color:black;}
		
		input{height:40px;}
		
		#b{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%;}
		
	
	</style>
	
</head>
<body>
	<form action="loginchk" name="fml" onsubmit="return oncheck()">
		<table>
			<tr>
				<td id="a">아이디</td>
				<td><input type="text" name="id" id="id" size="21"></td>
			</tr>
			<tr>
				<td id="a" rowspan="2">비밀번호</td>
				<td><input type="password" name="password" size="21" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<td><input type="password" name="passcheck" size="21" placeholder="비밀번호확인"></td>
			</tr>
			<tr>	
				<td colspan="3" align="center"><input id="b" type="submit" value="로그인">
					<input id="b" type="button" value="돌아가기" onclick="location.href='home'"></td>
			</tr>
		</table>
	</form>
</body>
</html>