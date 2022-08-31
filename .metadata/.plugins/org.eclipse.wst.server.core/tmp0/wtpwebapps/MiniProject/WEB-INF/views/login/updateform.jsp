<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="expire" content="-1" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
    <meta name="robots" content="index,follow" />
    <!-- css, javascript -->
    <script type="text/javascript" src="static/js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="static/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/css/import.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/common.css" />
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script src="resources/js/jquery-3.6.0.min.js" ></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>


<div id="container">
    <div class="inner">
        <div class="form_content signup_wrap">
            <h1>내 정보</h1>
            <form action="memberupdate" method="post">
                <label>아이디</label>
                <input type="text" id="id" name="id" placeholder="ID" value="${updateform.id }">
                <label>비밀번호</label>
                <input type="password" name="password" placeholder="Password" value="${updateform.password }" readonly>
                <label>이름</label>
                <input type="text" name="name" placeholder="이름" value="${updateform.name }">
                <label>폰번호</label>
                <input type="text" name="phone" placeholder="010-1234-5678" value="${updateform.phone }">
                <label>이메일</label>
                <input type="email" name="email" placeholder="Email" value="${updateform.email }">
                <label>가입일</label>
                <input type="text" name="regdate" placeholder="regdate" value="${updateform.regdate  }" readonly="readonly">
                <input id="updatebtn" type="submit" value="수정하기" style="background-color:#2186db;" >
            </form>
        </div>
    </div>
</div>
</body>
</html>


