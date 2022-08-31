<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oneBoard</title>
<link rel="stylesheet" href="${path}/resources/css/oneboard.css">
<link rel="stylesheet" type="text/css" href="resources//css/import.css" />
<link rel="stylesheet" type="text/css" href="resources//css/common.css" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	const id = '<%=session.getAttribute("id")%>';
	const password =  '<%=session.getAttribute("password")%>';
	const secret = '<%=request.getAttribute("secret")%>';
		if (secret == "true") {
			$("#secretForm").attr("hidden", false);
			$("#pwBtn").on("click", function() {
				if ($("#pw").val() ==
<%=session.getAttribute("password")%>
	) {
					$("#nonSecret").attr("hidden", false);
					$("#secretForm").attr("hidden", true);
				} else {
					alert("비밀번호가 다릅니다.");
				}
			})
		} else if (secret == "false") {
			$("#nonSecret").attr("hidden", false);
			$("#secretForm").attr("hidden", true);
		}

		$("#edit").on("click", function(e) {
			if (id != '${oneBoard.writer}') {
				e.preventDefault()
				alert("본인만 수정 가능합니다.")
			}
		})

		$("#delete").on("click", function(e) {
			if (id != '${oneBoard.writer}') {
				e.preventDefault()
				alert("본인만 삭제 가능합니다.")
			}
		})
}); //onload

</script>

</head>
<body>
	<div class="container">
		 <div class="inner">
			<h1>방청 후기 게시판</h1>
			<table class="boardTable" >
				   	<thead>
						  <tr>
						      <th>No.${oneBoard.seq}</th>
						      <th class="boardTitle">${oneBoard.title}</th>
						      <th>조회수 ${oneBoard.viewCount}</th>
						  </tr>
				    </thead>
			  		<tbody>
			  			<tr>
					      <td class="writerId">작성자 ${oneBoard.writer}</td>
					      <td class="writingTime">${oneBoard.writingTime}</td>
			  			</tr>
					    <tr>
					      <td class="boardContents">${oneBoard.contents}</td>
					    </tr>
				     </tbody>
				</table>
			</div>
		</div>
		
		<div class="btnContainer">
			<form>
				<input type="hidden" id="likeSeq" value="${oneBoard.seq}">
			</form>
		
			<form action="/miniproject/editReviewBoard/${oneBoard.seq}">
				<input type="hidden" name="editSessionId" value="${oneBoard.writer}">
				<input type="hidden" name="editBoardId" value="${oneBoard.seq}">
				<input id="edit" type="submit" name="edit" value="수정하기">
			</form>
			<form action="/miniproject/deleteReviewBoard">
				<input type="hidden" name="deleteSessionId" value="${oneBoard.writer}">
				<input type="hidden" name="deleteBoardSeq" value="${oneBoard.seq}">
				<input id="delete" type="submit" name="delete" value="삭제하기">
			</form>
		</div>
		
		<div class='linkContainer'>
			<a href="/miniproject/reviewBoardList">게시판 이동</a>
			<a href="/miniproject/">홈으로</a>
		</div>
	</div>
</body>
</html>