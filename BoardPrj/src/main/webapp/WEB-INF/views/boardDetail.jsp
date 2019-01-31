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
<title>글 상세</title>
</head>
<body>
    <h3>Title : ${board.title}</h3>
    <div style="padding : 30px;">
      <div class="form-group">
        <label>Writer : </label>
        <span>${board.writer}</span>
      </div>
      <div class="form-group">
        <label>내용</label><br>
        <p>${board.content}</p>
      </div>
      <div class="form-group">
        <label>Date</label>
        <span><fmt:formatDate value="${board.date}" pattern="yyyy/ MM/ dd" /></span>
      </div>
      <div class="form-group" style="display:inline">
          <input style="margin-right:10px; display:inline; float:left" type="button" value="수정" onclick='location.href="/update/${board.id}"'>
          <form:form action="/delete/${board.id}" method="post">
              <input style="margin-right:10px; display:inline; float:left" type="submit" value="삭제">
          </form:form>
          <input style="margin-right:10px; display:inline; float:left" type="button" value="목록" onclick='location.href="/"'>
      </div>
    </div>
</body>
</html>