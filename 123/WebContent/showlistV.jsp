<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*,My.showDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<style>
		h4{color:#ED0000; font-size:50px; width:100%; }
		table{opacity:2;}
	</style>
	<script>
		function Click(coming) {
			alert(coming+"\n준비중 입니다");
		}
	</script>
</head>
<body>
	<h4>현지로컬 인기 라멘집</h4>
	<table>
	
		<%
			List showlist = (List)request.getAttribute("list");
			for(int i=0; i<showlist.size(); i++){
				showDTO show = (showDTO)showlist.get(i);
				out.print("<tr><td>"+show.getImg()+"</td>");
				out.print("<td><a href=showread?seq_no="+show.getImg()+"'>"
						 + show.getIname() + "</a></td>");
				out.print("<td>"+show.getReview()+"</td>");
				out.print("<td>"+show.getStar()+"</td>");
				out.print("<td>"+show.getLocation()+"</td></tr>");
			}
		%>
		<tr>
			<td width="600" align="center" colspan="5">
		<%
			int rowcnt = (int)request.getAttribute("rowcnt");
			for(int pcnt=1; pcnt<=rowcnt; pcnt++){%>
			<a href='Showlist?seq_no=<%=pcnt %>'>[<%=pcnt %>]</a>
		<%} %>
			</td>
	</table>
	
	
	
	
	<!-- <table>
		<tr>
			<td> <a href="https://tabelog.com/kr/osaka/rstLst/?genre_name=MC&SrtT=rt" >
			<a onclick="Click('coming')"><img src="men.jpg"></a></td>
		</tr>
		<tr>
			<td><a onclick="Click('coming')"><img src="men2.jpg"></a></td>
		</tr>	
	</table> -->
</body>
</html>