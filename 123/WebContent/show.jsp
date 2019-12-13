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
	<table border="1">
		<tr>
			<td><a href="showView.jsp">사진</a></td>
			<td><div>즌도우야</div><div>평점</div></td>
			<td rowspan="5">지도</td>
		</tr>
		<tr>
			<td><a href="showView.jsp">사진</a></td>
			<td><div>토리소바 자긴 니보시(본점)</div><div>평점</div></td>
		</tr>
		<tr>
			<td><a href="showView.jsp">사진</a></td>
			<td><div>인류모두면류(본점)</div><div>평점</div></td>
		</tr>
		<tr>
			<td><a href="showView.jsp">사진</a></td>
			<td><div>미타</div><div>평점</div></td>
		</tr>
		<tr>
			<td><a href="showView.jsp">사진</a></td>
			<td><div>시아와세</div><div>평점</div></td>
		</tr>
		<tr>
		<%
			List showlist = (List)request.getAttribute("list");
			for(int i=0; i<showlist.size(); i++){
				showDTO show = (showDTO)showlist.get(i);
				out.print("<tr><td>"+show.getImg()+"<td>");
				out.print("<td><a href='showread?seq_no="+show.getImg()+"'>"
						+show.getIname()+"</a></td>");
				out.print("<td>"+show.getLocation()+"</td>");
				out.print("<td>"+show.getReview()+"</td>");
				out.print("<td>"+show.getStar()+"</td>");
				
			}
		%>
		<tr>
			<td width="600" align="center" clspan="5">
		<%
			int rowcnt = (int)request.getAttribute("rowcnt");
			for(int pcnt=1; pcnt<=rowcnt; pcnt++){%>
			<a href='showlist?seq_no=<%=pcnt %>'>[<%pcnt %>]</a>
		<%} %>
			</td>
		</tr>
		
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