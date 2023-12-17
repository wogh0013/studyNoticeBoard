
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.spring.boot.vo.Vo_study" %>

<%
    Vo_study vo_study = (Vo_study)request.getAttribute("vo_study");
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

<!-- 본문 내용 -->
<main>
    <form name="frm_study_mod" action="/study_reg/modify_exe" method="post">
        <div>KeyID : <input type="text" name="keyId" value="<%=vo_study.getKeyId() %>" readonly></div><br>
        <div>StudyDay : <input type="text" name="studyDay" value="<%=vo_study.getStudyDay() %>"></div><br>
        <div>Contents : <input type="text" name="contents" value="<%=vo_study.getContents() %>"></div><br>

        <input type="submit" value="수정하기">
    </form>
</main>
<!-- //본문 내용 -->

<!-- 푸터 영역 -->
<%@ include file="/WEB-INF/views/comm/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>