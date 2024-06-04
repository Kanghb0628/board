<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create Board</title>
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
    <form action="/board/create" method="post">
      <div class="form-group">
        <label for="title">제목:</label>
        <input type="text" id="title" name="title" class="form-control">
      </div>
      <div class="form-group">
        <label for="content">내용:</label>
        <textarea id="content" name="content" class="form-control"></textarea>
      </div>
      </div>
        <div class="form-group">
            <label for="writer">작성자:</label>
            <input type="text" id="writer" name="writer" class="form-control">
        </div>
      <div>
        <button type="submit" class="btn btn-success">저장하기</button>
      </div>
    </form>
  </div>
  <footer class="footer">
    <p>© 2024 Incheon Electronic Meister.</p>
  </footer>
</div>
</body>
</html>