<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.spring.boot.vo.Vo_study" %>
<%
    List<Vo_study> list = (List<Vo_study>)request.getAttribute("list");
%>

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

    <button style="float: right;" type="button" onclick="location.href='/study_reg/insert'">등록하기</button>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">번호*</th>
      <th scope="col">공부일자</th>
      <th scope="col">공부내용</th>
      <th scope="col">등록일자</th>
      <th scope="col">수정</th>
      <th scope="col">삭제</th>
    </tr>
    </thead>

    <tbody class="table-group-divider">
    <% for(Vo_study vo_study : list){ %>
    <tr>
      <th scope="row"><%= vo_study.getKeyId() %></th>
      <td><%= vo_study.getStudyDay() %></td>
      <td><%= vo_study.getContents() %></td>
      <td><%= vo_study.getRegDay() %></td>
      <td><a href="/study_reg/modify?key_id=<%= vo_study.getKeyId() %>">수정</a></td>
      <td><a href="/study_reg/delete?key_id=<%= vo_study.getKeyId() %>">삭제</a></td>
    </tr>
    <%} %>

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