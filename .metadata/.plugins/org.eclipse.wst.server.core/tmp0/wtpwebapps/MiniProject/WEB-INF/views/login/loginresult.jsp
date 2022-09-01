<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라디오세상</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#logoutchk").click(function(ev){
		if(!confirm("로그아웃 하시겠습니까?")) {
			ev.preventDefault();
		}
	});
	$("#deletechk").click(function(ev){
		 if(!confirm("회원탈퇴 하시겠습니까?")) {
			 ev.preventDefault();
		 }
	 });
});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<jsp:include page="/WEB-INF/views/home.jsp" />
</body>
</html>
