<!-- 회원가입창 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function oncheck(){
		if(!fmL.id.value){
			alert('아이디를 입력해주세요');
			fmL.id.focus();
			return false;
		}
		if(!fmL.name.value){
			alert('이름을 입력해주세요');
			fmL.name.focus();
			return false;
		}
		if(!fmL.password.value){
			alert('비밀번호를 입력해주세요');
			fmL.password.focus();
			return false;
		}
		if(!fmL.tel2.value || !fmL.tel3.value){
			alert('전화번호를 입력하세요');
			fmL.tel2.focus();
			return false;
		
		}
		if(!fmL.job.value){
			alert('직업을 입력해주세요');
			fmL.job.focus();
			return false;
		}
		if(!(fmL.gender[0].checked || fmL.gender[1].checked)){
			alert('성별을 선택하세요');
			return false;
		}
		
		
		if(!(fmL.hobby[0].checked||fmL.hobby[1].checked||fmL.hobby[2].checked||fmL.hobby[3].checked)){
			alert('취미를  하나 이상 선택하시오');
			return false;
		}
		if(!fmL.intro.value){
			alert('자기소개를 입력하세요');
			fmL.intro.focus();
			return false;
		}
		return true;
		
			
	};
	
	</script>
	<style>
		table{padding:30px; margin:0 auto; width:80%; height:400px;color:black; opacity:0.9;}
		tr:nth-last-child(n+2){background:white; font-weight:bolder;}

		textarea{width:98%;}
		input{height:20px;}
		center >input{background:#CC3D3D; color:white;
			  border-radius:10px 10px 10px 10px;
			  width:80px; height:40px;
			  font-size:100%;}
	</style>
</head>
<body>
	<form action="joinpro" name="fmL" onsubmit="return oncheck()">
		
		<table>
				<tr>
					<td><label for ="id">아이디</label></td>
					<td><input type=text id="id" name="id"></td>
				</tr>	
				<tr>
					<td><label for ="name">이름</label></td>
					<td><input type=text id="name" name="name"></td>
				</tr>
				<tr>
					<td><label for ="password">암호</label></td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				<tr>
					<td><label for ="tel">전화번호</label></td>
					<td><select name="tel1"><option>010</option><option>02</option></select> - 
					 	<input type="tel" id="tel2" size="3" name="tel2"> - <input type="tel" id="tel3" size="3" name="tel3"></td>
				</tr>
				<tr>
					<td><label for ="job">직업</label></td>
					<td><select name="job"><option>학생</option><option>직장인</option></select></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" name="gender" id="male" value="1"><label for ="male">남자</label>
						<input type="radio" name="gender" id="female" value="2"><label for ="female">여자</label></td>
				</tr>
				<tr>
					<td>취미</td>
					<td><input type="checkbox" name="hobby" id="hobby1" value="바둑"><label for ="hobby1">바둑</label>
						<input type="checkbox" name="hobby" id="hobby2" value="게임"><label for ="hobby2">게임</label>
						<input type="checkbox" name="hobby" id="hobby3" value="낚시"><label for ="hobby3">낚시</label>
						<input type="checkbox" name="hobby" id="hobby4" value="독서"><label for ="hobby4">독서</label>
					</td>
				</tr>
				<tr>
					<td>자기 소개하는 글</td>
					<td><textarea rows="3" cols="60" name="intro" placeholder="자기를 소개하는 글을 쓰세요"></textarea></td>
				</tr>
				
				<tr>
					<td colspan="2"><center><input type="submit" value="등록하기">
			
					<input type="button" value="돌아가기" onclick="location.href='home'"></center></td>
				</tr>
				
								
		</table>
		</form>
</body>
</html>