<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		table{padding:10px; margin:0 auto; width:600px; height:100px;color:black; opacity:0.75;}
		
		td{font-weight:bolder;}
		tr:nth-last-child(n+2){background:white;}
		h4{font-size:50px; color:red;}
		#t{width:100px;}
		#a{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%;}
	</style>
</head>
<body>
	<form action="Boardupdate">
		<input type="hidden" name="bno" value="${board.getBno() }">
		<h4 align="center">게시글 수정</h4>
		<table>
			
			<tr>
				<td id="t">작성자</td>
				<td><input type="text" name="writer" readonly value="${board.getWriter() }"></td>
			</tr>
			<tr>
				<td id="t">제목</td>
				<td><input type="text" name="title"	size="60" maxlength="60" value="${board.getTitle() }"></td>
			</tr>
			<tr>
				<td id="t">내용</td>	
				<td><textarea cols="65" rows="10" name="content" maxlength="2000">${board.getContent() }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="3"><input id="a" type="submit" value="수정">
				<a href='Boarddelete?bno=${board.bno }'><input id="a" type="button" value="삭제"></a>
				<a href='Boardlist'><input id="a" type="button" value="목록으로"></a></td>
			</tr>		
		</table>
	</form>
</body>
</html>