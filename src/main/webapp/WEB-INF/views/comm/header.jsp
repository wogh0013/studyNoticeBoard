<!-- 헤더 영역 -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
  <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
    <div class="col-md-3 mb-2 mb-md-0">
      <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">
        <img src="/img/IMG_9891.JPG" style="width:100px; height:100px; object-fit: cover;">
      </a>
    </div>

    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
      <li><a href="/home" class="nav-link px-2 link-secondary">Home</a></li>
      <li><a href="/home/study_reg" class="nav-link px-2">공부기록</a></li>
      <li><a href="/home/member_list" class="nav-link px-2">회원목록</a></li>
      <li><a href="#" class="nav-link px-2">About</a></li>
    </ul>

    <div class="col-md-3 text-end">
      <button type="button" class="btn btn-outline-primary me-2" onclick="location.href='/login'">Login</button>
      <button type="button" class="btn btn-primary" onclick="location.href='/login/sign_in'">Sign-up</button>
    </div>
  </header>
</div>
<!-- //헤더 영역 -->
