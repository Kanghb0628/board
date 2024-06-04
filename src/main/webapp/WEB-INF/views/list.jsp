<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Board List</title>
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
        <a href="/board/create" class="btn btn-primary mb-3">게시글 작성</a>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>수정일</th>
                <th>작성일</th>
                <th>수정일</th>
                <th>기능</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="board" items="${boardList}">
                <tr>
                    <td>${board.id}</td>
                    <td>${board.title}</td>
                    <td>${board.writer}</td>
                    <td>${board.createdDt}</td>
                    <td>${board.updatedDt}</td>
                    <td>
                      <a href="/board/detail/${board.id}" class="btn btn-info btn-sm">상세보기</a>
                      <a href="/board/edit/${board.id}" class="btn btn-warning btn-sm">수정</a>
                      <a href="/board/delete/${board.id}" class="btn btn-danger btn-sm">삭제</a>
                    </td>
                  </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <footer class="footer">
        <p>© 2024 Incheon Electronic Meister.</p>
    </footer>
</div>
</body>
</html>