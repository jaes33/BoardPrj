<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시판 리스트</title>
</head>
<body>
    <h3>게시판 리스트</h3>
    <table class="table">
        <tr>
            <th>No</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Date</th>
        </tr>
        <c:forEach var="b" items="${board}">
        <tr>
            <td>${b.id}</td>
            <td><a href="/board/${b.id}">${b.title}</a></td>
            <td>${b.writer}</td>
            <td><fmt:formatDate value="${b.date}" pattern="MM/ dd" /></td>
        </tr>
        </c:forEach>
    </table>
    <button class="btn btn-default" style="float : right;" onclick="location.href='/insertForm'">작성</button>
</body>
</html>
