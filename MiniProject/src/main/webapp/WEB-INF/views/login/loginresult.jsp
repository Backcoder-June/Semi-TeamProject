<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/import.css" />



<!--  <link rel="stylesheet" type="text/css" href="resources/css/common.css" />
 -->
<script>
	$(document).ready(function() {
		$("#logoutchk").click(function(ev) {
			if (!confirm("로그아웃 하시겠습니까?")) {
				ev.preventDefault();
			}
		});
		$("#deletechk").click(function(ev) {
			if (!confirm("회원탈퇴 하시겠습니까?")) {
				ev.preventDefault();
			}
		});
	});
</script>
</head>
<body>
	<div style="background-color: gray;">
		<br>
		<h1 style="margin-left: 20px;">
			<div style="color: orange;">${sessionScope.id}님</div>
			환영합니다!
		</h1>
		<br>
	</div>
	<br>
	<div align="center">
		<a href="/miniproject/boardList"> 
		<img border="0" src="resources/radio.png" width="100" height="100" /> <h2>라디오 사연 게시판</h2></a> 
		<br> 
		<br> 
		<br>
		<a href="/miniproject/reviewBoardList"> 
		<img border="0" src="resources/chat.png" width="100" height="100" /><h2>청취 후기 게시판</h2></a> 
		<br>
		<hr>
		<br>
		
		<a href="memberupdate"> 
		<img border="0" src="resources/update.png" width="100" height="100" /><h2>내 정보 수정</h2></a> 
		
		<br>
		<br>
		<a id="logoutchk" href="lgout" class="mypage"> 
		<img border="0" src="resources/logout.png" width="100" height="100" /><h2>로그아웃</h2></a> 
		<br>
		<hr>
		<br>		
		<a id="deletechk" href="deletemember" class="mypage" style=color:red;>회원 탈퇴</a> <br>
	</div>
</body>
</html>
