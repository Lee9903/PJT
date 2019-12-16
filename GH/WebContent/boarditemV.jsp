<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		table{padding:10px; margin:0 auto; width:50%; height:100px;color:black; opacity:0.85;}
		td{font-weight:bolder;}
		tr:first-child{color:white;}
		
		#a{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%;}
	</style>
</head>
<body>
	<table>
		<tr>	
			<td colspan="1"><div>[제목] : ${board.title }</div></td>
			<td><div>[작성자] : ${board.writer }</div></td>
			<td><div>[작성일자] : ${board.regdate }</div></td>
		</tr>
	
		<tr>
			<td colspan="3"><textarea rows="10" cols="63">${board.content }</textarea></td>
			
		</tr>	
	
		<tr>
			<td colspan="3"><a href='Boardupdateinput?bno=${board.bno }'><input id="a" type="button" value="수정"></a>
			<a href='Boarddelete?bno=${board.bno }'><input id="a" type="button" value="삭제"></a>
			<a href='Boardlist'><input id="a" type="button" value="목록으로"></a></td>
		</tr>	
	</table>
</body>
</html>