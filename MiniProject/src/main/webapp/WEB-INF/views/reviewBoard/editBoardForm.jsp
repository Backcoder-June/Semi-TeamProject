<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라디오세상</title>
<link rel="stylesheet" href="${path}/resources/css/writingForm.css">
<script src="resources/jquery-3.6.0.min.js" ></script>
<script>
$(document).ready(function(){
	const check = ${editTarget.secret};
	if(check == 1) {
		$("#check").attr("checked", "checked");
	}
});
</script>

</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp" />

	<div class="container">
		<h1 class="title"> 게시물 수정 </h1>

<form class="writingForm"  action="/miniproject/editReviewBoard/${editTarget.seq}" method="post">
  <table border = 5>
    
    <tr><th>번호</th><td><input type ='text' name = 'seq' value="${editTarget.seq}" readonly></td></tr>
    <tr><th>제목</th><td><input type ='text' name = 'title' value="${editTarget.title}"></td></tr>
    <tr><th>내용</th><td><textarea name = 'contents' rows=5 cols=50>${editTarget.contents}</textarea></td></tr>
    <tr><th>작성자</th><td><input type ='text' name = 'writer' value="${editTarget.writer}" readonly></td></tr>
  	<tr><th>비밀글</th><td><input type ="checkbox" name = 'secret' value="1" id="check"></td></tr>
  </table>

  <input type="hidden" name="writingTime" value="${editTarget.writingTime}">
  <input type="hidden" name="viewCount" value="${editTarget.viewCount}">
  <input class="writingBtn" type="submit" value="수정" name="edit">
</form>

<br>

<!-- <a href="/miniproject/reviewBoardList">홈으로</a> -->


</body>
</html>