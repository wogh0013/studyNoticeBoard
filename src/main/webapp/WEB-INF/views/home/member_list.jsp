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

<br><br>
<!-- 본문 내용 -->
<main>

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">아이디</th>
            <th scope="col">이름</th>
            <th scope="col">이메일</th>
            <th scope="col">등록일자</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <tr>
            <th scope="row">1</th>
            <td>work_ing</td>
            <td>김일중</td>
            <td>working@naver.com</td>
            <td>2023.11.19</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>work_ing2</td>
            <td>김이중</td>
            <td>working2@naver.com</td>
            <td>2023.11.20</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>work_ing3</td>
            <td>김삼중</td>
            <td>working3@naver.com</td>
            <td>2023.11.21</td>
        </tr>
        </tbody>
    </table>

</main>
<!-- //본문 내용 -->
<br><br>
<!-- 푸터 영역 -->
<%@ include file="/WEB-INF/views/comm/footer.jsp" %>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>