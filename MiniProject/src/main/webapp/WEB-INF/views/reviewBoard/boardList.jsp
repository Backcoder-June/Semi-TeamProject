<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script src="resources/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources//css/writing.css" />

<script>
	$(document).ready(function() {

	});
</script>

</head>
<body>
	<form action="/miniproject/reviewSearchboard">
<h1>청취 후기 게시판</h1>
		<select name="item">
			<option value="seq">번호</option>
			<option value="title">제목</option>
			<option value="contents">내용</option>
			<option value="writer">작성자</option>
		</select> : <input type="text" name="search"> <input type="submit"
			value="검색">
	</form>

	<br>

<div style=margin-left:20px;>	
		<a href='/miniproject/writingReviewBoard'>글쓰기</a>
</div>
<br>
	<table border="5">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${boardlist2}" var="board">
			<tr>
				<th>${board.seq}</th>
				<td><a href="/miniproject/reviewBoard/${board.seq}">${board.title}</a></td>
				<td>${board.writer}</td>
				<th>${board.viewCount}</th>
			</tr>
		</c:forEach>
	</table>

<br>
<div style=margin-left:20px;>
	<%
	int totalPage = (Integer) request.getAttribute("totalPage");
	for (int i = 1; i <= totalPage; i++) {
	%>
	<a href="reviewBoardList?page=<%=i%>"> <%=i%></a>
	<%
	}
	%>
</div>
	<hr>
	<br>
	<div align=center>
		<a href='/miniproject/'>홈으로</a>
	</div>
</body>
</html>