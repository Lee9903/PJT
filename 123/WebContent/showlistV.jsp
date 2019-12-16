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
		table{opacity:2; width:50%; height:50%;}
		img{width:100%; height:50%; text-align:right;}
		#td{width:150px;}
	</style>
	
</head>
<body>
	<h4>현지로컬 인기 라멘집</h4>
	
	<table border="1">
		
		<%
			List showlist = (List)request.getAttribute("list");
			for(int i=0; i<showlist.size(); i++){
				showDTO show = (showDTO)showlist.get(i);
				out.print("<tr><td id=td><a href='showread?seq_no="+show.getSno()+"'><img src='"+"ramen/"+show.getImg()+".jpg'>"+"</td>");
				out.print("<td><div><a href='showread?seq_no="+show.getSno()+"'>"
						 + show.getIname() + "</a></div>");
				out.print("<a href='showread?seq_no="+show.getSno()+"'>"+"리뷰 : "+show.getReview()+"</a>");
				out.print("  <a href='showread?seq_no="+show.getSno()+"'>"+"평점 : "+show.getStar()+"</a></td></tr>");
				
			}
				
		%>
			
		<tr>
			<td width="600" align="left" colspan="5">
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