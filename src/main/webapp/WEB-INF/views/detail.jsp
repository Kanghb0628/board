<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Board Detail</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>
<body>
<div class="container">
  <header>
    <h1>인천전자마이스터고</h1>
  </header>
  <div>
    <h2>자유게시판</h2>
    <div>
      <label>ID:</label>
      <span>${byId.id}</span>
    </div>
    <div>
      <label>제목:</label>
      <span>${byId.title}</span>
    </div>
    <div>
      <label>내용:</label>
      <span>${byId.content}</span>
    </div>
    <div>
       <label>작성자:</label>
       <span>${byId.writer}</span>
    </div>
    <div class="mt-3">
      <a href="/board/edit/${byId.id}" class="btn btn-warning btn-sm">수정</a>
      <a href="/board/delete/${byId.id}" class="btn btn-danger btn-sm">삭제</a>
    </div>
    <div class="mt-3">
      <a href="/board/list" class="btn btn-secondary">목록으로</a>
    </div>
  </div>
  <footer class="footer">
    <p>© 2024 Incheon Electronic Meister.</p>
  </footer>
</div>
</body>
</html>