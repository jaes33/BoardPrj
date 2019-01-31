<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<title>글 수정</title>
</head>
<body>
    <h3>글 수정</h3>
    <div style="padding : 30px;">
        <div class="container">
    		<form action="/update" method="post">
		      <div class="form-group">
		        <label for="subject">제목</label>
		        <input type="text" class="form-control" id="title" name="title" value="${board.title}">
		      </div>
		      <div class="form-group">
		        <label for="content">내용</label>
		        <textarea class="form-control" id="content" name="content" rows="3">${board.content}</textarea>
		      </div>
		      <input type="hidden" name="id" value="${id}"/>
		      <button type="submit" class="btn btn-primary">수정</button>
		    </form>
		</div>
    </div>
</body>
</html>