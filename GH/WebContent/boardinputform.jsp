<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		
	</style>
</head>
<body>
	<form action="Boardsave">
		<input type="hidden" name="bno" value="${board.getBno() }">
		<table>
			<tr>
				<td colspan="2" height="50" align="center"><font size="5">게시글 입력</font></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" value="${board.getWriter() }"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"	size="60" maxlength="60" value="${board.getTitle() }"></td>
			</tr>
			<tr>
				<td>내용</td>	
				<td><textarea cols="65" rows="10" name="content" maxlength="2000">${board.getContent() }</textarea>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
			</tr>		
		</table>
	</form>	
</body>
</html>