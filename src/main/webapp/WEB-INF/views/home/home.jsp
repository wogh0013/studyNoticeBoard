
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

<!-- 헤더 영역 -->
<%@ include file="/WEB-INF/views/comm/header.jsp" %>

<!-- 본문 내용 -->
<main>
  <div class="px-4 py-5 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="/img/IMG_9891.JPG" alt="" width="300px" height="300px">
    <h1 class="display-5 fw-bold text-body-emphasis">Spring Study</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">자바 웹 개발 공부 중 <br> 2023년 11월 19일 일요일 <br> let's go</p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Primary button</button>
        <button type="button" class="btn btn-outline-secondary btn-lg px-4">Secondary</button>
      </div>
    </div>
  </div>
</main>
<!-- //본문 내용 -->

<!-- 푸터 영역 -->
<%@ include file="/WEB-INF/views/comm/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>