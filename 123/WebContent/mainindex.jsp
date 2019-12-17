<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
	#bd{/*background:#CC3D3D;*/  background-size:100%;	
	/*background-image:url(img/201909033.jpg);*/ 
	/*background-color:rgba(204,61,61,0.5);*/
	background:#FFFFC6;
	opacity:0.9;}
	.content{width:100%; height:90%; position:relative; magin:0;}
	/*#footer{width:100%; height:150px; position:absolute; bottom:0; magin:0;}
	.right{width:100%; height:90%; position:relative; magin:0;}*/
	</style>
</head>
<body id="bd">
	<div class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<div class="content">
			
			<div class="right">
				<jsp:include page="${target}.jsp"/>
			</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
	</div>
</body>
</html>