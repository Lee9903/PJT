<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,My.BoardDTO" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		table{padding:10px; margin:0 auto; width:50%; height:100px;color:black; opacity:0.85;}
		tr:nth-last-child(n+2){background:white;}
		h4{font-size:50px; color:red;}
		tr:first-child{font-weight:bolder;}
		input{height:20px;}
		
		#bs{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%;}
	</style>
</head>
<body>
	<h4 align="center">게시판</h4>
	<table>
		<tr>
			<td width=20>NO${param.rowcnt }</td>
			<td width=100>제목</td>
			<td width=80>작성자</td>
			<td width=90>작성일자</td>
			<td width=90>수정일자</td>
		</tr>	
		<%
			List boardlist = (List)request.getAttribute("list");
			for(int i=0; i<boardlist.size(); i++){
				BoardDTO board = (BoardDTO)boardlist.get(i);
				out.print("<tr><td>"+board.getBno()+"</td>");
				out.print("<td><a href='Boardread?SEQ_NO="+board.getBno()+"'>"
							+ board.getTitle() + "</a></td>");
				out.print("<td>"+board.getWriter()+"</td>");
				out.print("<td>"+board.getRegdate()+"</td>");
				out.print("<td>"+board.getUpdatedate()+"</td></tr>");
			}
		%>
		<tr>
			<td width="600" align="center" colspan="5">
		<%
			int rowcnt = (int)request.getAttribute("rowcnt");
			for(int pcnt=1; pcnt<=rowcnt; pcnt++){%>
			<a href='Boardlist?SEQ_NO=<%=pcnt %>'>[<%=pcnt %>]</a>
		<%} %>
			</td>
		</tr>
		<tr>
			<td id="lasttd">
				<form action="Boardsave">
				<input type="submit" value="글작성" id="bs">
				</form>
			</td>
		</tr>	
	</table>
</body>
</html>