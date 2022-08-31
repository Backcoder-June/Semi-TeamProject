<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script src="resources/jquery-3.6.0.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources//css/writing.css" />

<script>
$(document).ready(function(){
});
</script>

</head>
<body>

<br>


<form action="/miniproject/writingBoard" method="post">
<h1> 게시물 작성 </h1>
<table>
<tr><th>제목</th><td><input type ='text' name = 'title'></td></tr>
<tr><th>내용</th><td><textarea name = 'contents' rows=20 cols=150></textarea></td></tr>
<tr><th>작성자</th><td><input type ='text' name = 'writer'
value="${id }" readonly></td></tr>
<tr><th>비밀글</th><td><input type ="checkbox" name = 'secret' value = 1></td></tr>
</table>
<br>
    <input type="submit" value="작성">
</form>
<br>

<div align=center>
<a href="/miniproject/">홈으로</a>
</div>
</body>
</html>