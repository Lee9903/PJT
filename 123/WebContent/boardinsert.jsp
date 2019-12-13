<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script>
		function oncheck(){
			if(!fml.writer.value){
				alert('이름을 입력해주세요');
				fmL.writer.focus();
				return false;
			}
			if(!fml.title.value){
				alert('제목을 입력해주세요');
				fmL.title.focus();
				return false;
			}
			if(!fml.content.value){
				alert('내욜을 입력해주세요');
				fmL.content.focus();
				return false;
			}
			return true;
			};
			
	</script>
	<style>
		table{padding:30px; margin:0 auto; width:80%; height:400px;color:black; opacity:0.85;}
		tr:nth-last-child(n+2){background:white; font-weight:bolder;}
		
		
		textarea{width:98%;}
		input{height:20px;}
		#a{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%;}
	</style>
</head>
<body>
	<form action="Boardsave" method="post" name="fml" onsubmit="return oncheck()" >
	<table>
		<tr>
			<td>작성자</td><td><input type="text" name="writer"></td>	
		</tr>
		<tr>	
			<td>제목</td><td><input type="text" name="title" size="60" maxlength="60"></td>
		</tr>
		<tr>	
			<td>내용</td><td><textarea rows="20" cols="35" name="content" maxlength="2000"></textarea></td>
		</tr>
		<tr>	
			<td colspan="2"><a href="Boardlist"><input id="a" type="button" value="목록으로"></a>
												<input id="a" type="submit" value="등록"></td>
		</tr>

			
	</table>
	</form>
</body>
</html>